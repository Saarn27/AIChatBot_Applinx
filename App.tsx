
import React, { useState, useCallback } from 'react';
import { FileUpload } from './components/FileUpload';
import { CodeDisplay } from './components/CodeDisplay';
import { Spinner } from './components/Spinner';
import { convertXmlToJson } from './services/geminiService';
import { GithubIcon } from './components/icons/GithubIcon';

// Extract only <Mapping> attributes (inline values) and the <Core> elements inside each Mapping.
function extractMappingsXml(xml: string): string {
  try {
    const parser = new DOMParser();
    const doc = parser.parseFromString(xml, 'application/xml');
    // Check for parser errors
    const parserErrors = doc.getElementsByTagName('parsererror');
    if (parserErrors && parserErrors.length > 0) {
      // Regex fallback: keep Mapping open-tag attributes and all nested Core blocks
      const mappingBlocks = xml.match(/<(?:\w+:)?mapping\b[\s\S]*?<\/(?:\w+:)?mapping>/gi) || [];
      if (!mappingBlocks.length) return '';
      const reduced = mappingBlocks.map((block) => {
        const open = block.match(/<((?:\w+:)?mapping)\b([^>]*)>/i);
        const qname = open ? open[1] : 'Mapping';
        const attrs = open ? (open[2] || '') : '';
        const cores = block.match(/<(?:\w+:)?Core\b[\s\S]*?(?:\/>|<\/(?:\w+:)?Core>)/gi) || [];
        return `<${qname}${attrs}>${cores.join('')}</${qname}>`;
      });
      return `<Mappings>\n${reduced.join('\n')}\n</Mappings>`;
    }
    // Collect Mapping elements (namespace- and case-insensitive)
    const mappings: Element[] = [];
    const hasEvaluate = typeof (doc as any).evaluate === 'function';
    if (hasEvaluate) {
      try {
        const xpath = '//*[translate(local-name(), "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")="mapping"]';
        const snapshot = (doc as any).evaluate(xpath, doc, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);
        for (let i = 0; i < snapshot.snapshotLength; i++) {
          const node = snapshot.snapshotItem(i) as Element;
          if (node) mappings.push(node);
        }
      } catch {
        // Fallback to generic scan
        const all = doc.getElementsByTagName('*');
        for (let i = 0; i < all.length; i++) {
          const el = all.item(i) as Element;
          const lname = ((el as any).localName || '').toString().toLowerCase();
          if (lname === 'mapping') mappings.push(el);
        }
      }
    } else {
      const all = doc.getElementsByTagName('*');
      for (let i = 0; i < all.length; i++) {
        const el = all.item(i) as Element;
        const lname = ((el as any).localName || '').toString().toLowerCase();
        if (lname === 'mapping') mappings.push(el);
      }
    }
    if (!mappings.length) {
      // Fallback to regex even if parsing succeeded
      const matches = xml.match(/<(?:\w+:)?mapping\b[\s\S]*?<\/(?:\w+:)?mapping>/gi);
      return matches && matches.length ? `<Mappings>\n${matches.join('\n')}\n</Mappings>` : '';
    }
    // Build reduced Mapping nodes: keep only inline attributes and nested Core elements
    const serializer = new XMLSerializer();
    const reduced: string[] = [];
    for (const mapEl of mappings) {
      const qname = ((mapEl as any).tagName || (mapEl as any).nodeName) as string;
      const mappingOut = doc.createElementNS(mapEl.namespaceURI || undefined, qname);
      // Copy attributes (inline values)
      for (let i = 0; i < mapEl.attributes.length; i++) {
        const attr = mapEl.attributes[i];
        try {
          mappingOut.setAttributeNS(attr.namespaceURI, attr.name, attr.value);
        } catch {
          mappingOut.setAttribute(attr.name, attr.value);
        }
      }
      // Collect Core descendants of this Mapping (namespace- and case-insensitive)
      const coreNodes: Element[] = [];
      if (hasEvaluate) {
        try {
          const xpath = './/*[translate(local-name(), "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")="core"]';
          const snapshot = (doc as any).evaluate(xpath, mapEl, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);
          for (let i = 0; i < snapshot.snapshotLength; i++) {
            const n = snapshot.snapshotItem(i) as Element;
            if (n) coreNodes.push(n);
          }
        } catch {
          const all = mapEl.getElementsByTagName('*');
          for (let i = 0; i < all.length; i++) {
            const el = all.item(i) as Element;
            const lname = ((el as any).localName || '').toString().toLowerCase();
            if (lname === 'core') coreNodes.push(el);
          }
        }
      } else {
        const all = mapEl.getElementsByTagName('*');
        for (let i = 0; i < all.length; i++) {
          const el = all.item(i) as Element;
          const lname = ((el as any).localName || '').toString().toLowerCase();
          if (lname === 'core') coreNodes.push(el);
        }
      }
      // Append clones of Core nodes only
      for (const core of coreNodes) {
        const clone = core.cloneNode(true);
        mappingOut.appendChild(clone);
      }
      reduced.push(serializer.serializeToString(mappingOut));
    }
    return `<Mappings>\n${reduced.join('\n')}\n</Mappings>`;
  } catch {
    // Regex fallback on unexpected errors
    const mappingBlocks = xml.match(/<(?:\w+:)?mapping\b[\s\S]*?<\/(?:\w+:)?mapping>/gi) || [];
    if (!mappingBlocks.length) return '';
    const reduced = mappingBlocks.map((block) => {
      const open = block.match(/<((?:\w+:)?mapping)\b([^>]*)>/i);
      const qname = open ? open[1] : 'Mapping';
      const attrs = open ? (open[2] || '') : '';
      const cores = block.match(/<(?:\w+:)?Core\b[\s\S]*?(?:\/>|<\/(?:\w+:)?Core>)/gi) || [];
      return `<${qname}${attrs}>${cores.join('')}</${qname}>`;
    });
    return `<Mappings>\n${reduced.join('\n')}\n</Mappings>`;
  }
}

const App: React.FC = () => {
  const [xmlFile, setXmlFile] = useState<File | null>(null);
  const [xmlContent, setXmlContent] = useState<string>('');
  const [jsonOutput, setJsonOutput] = useState<string>('');
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [error, setError] = useState<string>('');

  const handleFileSelect = useCallback((file: File) => {
    setXmlFile(file);
    setError('');
    setJsonOutput('');
    const reader = new FileReader();
    reader.onload = (e) => {
      const content = (e.target?.result as string) || '';
      const mappingsWrapped = extractMappingsXml(content);
      if (mappingsWrapped) {
        setXmlContent(mappingsWrapped);
      } else {
        setXmlContent('');
        setError('No <mapping>/<Mapping> elements found in the uploaded XML.');
      }
    };
    reader.onerror = () => {
        setError('Failed to read the file.');
    }
    reader.readAsText(file);
  }, []);

  const handleProcessClick = useCallback(async () => {
    if (!xmlContent) {
      setError('No XML content to process. Please upload a file.');
      return;
    }
    setIsLoading(true);
    setError('');
    setJsonOutput('');

    try {
      const result = await convertXmlToJson(xmlContent);
      // Normalize result to a string (convert non-string outputs to JSON) before parsing
      const rawText = typeof result === 'string' ? result : JSON.stringify(result);

      // Attempt to prettify the JSON
      try {
        const parsedJson = JSON.parse(rawText);
        setJsonOutput(JSON.stringify(parsedJson, null, 2));
      } catch (parseError) {
        // If parsing fails, just show the raw text from Gemini
        setJsonOutput(rawText);
      }
    } catch (e) {
      const errorMessage = e instanceof Error ? e.message : 'An unknown error occurred.';
      setError(`Error processing with Gemini: ${errorMessage}`);
    } finally {
      setIsLoading(false);
    }
  }, [xmlContent]);

  return (
    <div className="min-h-screen bg-dark-bg text-dark-text font-sans p-4 sm:p-6 lg:p-8">
      <div className="max-w-7xl mx-auto">
        
        <header className="flex justify-between items-center mb-6 pb-4 border-b border-dark-border">
          <div className="flex items-center space-x-3">
             <svg xmlns="http://www.w3.org/2000/svg" className="h-8 w-8 text-brand-primary" viewBox="0 0 24 24" fill="currentColor">
                <path d="M14.89,14.24l2.83,2.83-1.41,1.41-2.83-2.83a2,2,0,0,1,0-2.82,2,2,0,0,1,1.41,0m-3.48-3.48a2,2,0,0,1,2.83,0l2.83,2.83-1.41,1.41-2.83-2.83a2,2,0,0,1,0-2.82M14.12,6.93a2,2,0,0,1,2.83,0l2.83,2.83-1.41,1.41-2.83-2.83a2,2,0,0,1,0-2.82M9.46,7.76l2.83,2.83-1.41,1.41-2.83-2.83a2,2,0,0,1,0-2.82,2,2,0,0,1,1.41,0M6,11.31a2,2,0,0,1,2.83,0l2.83,2.83L10.24,15.56,7.41,12.73a2,2,0,0,1,0-2.82,2,2,0,0,1-1.41,1.4Z"/>
             </svg>
            <h1 className="text-2xl font-bold text-gray-100 tracking-tight">XML to ASPX Converter</h1>
          </div>
          <a href="https://github.com/google/generative-ai-docs/tree/main/site/en/gemini-api/docs/get-started/tutorial_walkthroughs" target="_blank" rel="noopener noreferrer" className="text-gray-400 hover:text-white transition-colors">
            <GithubIcon className="w-7 h-7" />
          </a>
        </header>

        <main className="flex flex-col lg:flex-row gap-8">
          <div className="lg:w-1/3 w-full flex flex-col gap-6">
            <FileUpload onFileSelect={handleFileSelect} />
            <div className="bg-dark-card rounded-lg p-4 border border-dark-border">
              <h2 className="text-lg font-semibold mb-3 text-gray-200">Instructions</h2>
              <ul className="list-disc list-inside space-y-2 text-dark-text-secondary text-sm">
                <li>Upload an XML file containing form or screen data.</li>
                <li>The app will display the raw XML content.</li>
                <li>Click "Convert" to start the conversion.</li>
                <li>Gemini analyzes the XML and extracts data based on a specific set of rules.</li>
                <li>The structured JSON output will appear on the right.</li>
              </ul>
            </div>
             <button
              onClick={handleProcessClick}
              disabled={!xmlFile || isLoading}
              className="w-full flex justify-center items-center gap-3 px-6 py-3 bg-brand-primary text-white font-semibold rounded-lg shadow-md hover:bg-brand-secondary focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-brand-secondary focus:ring-offset-dark-bg disabled:bg-gray-500 disabled:cursor-not-allowed transition-all duration-300 ease-in-out"
            >
              {isLoading ? <Spinner /> : (
                <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                    <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1.438-5.332a.75.75 0 01-1.06 1.06l-1.72-1.72a.75.75 0 111.06-1.06l1.72 1.72zM12.5 7.5a.75.75 0 010 1.5h-5a.75.75 0 010-1.5h5z" clipRule="evenodd" />
                </svg>
              )}
              <span>{isLoading ? 'Processing...' : 'Convert'}</span>
            </button>
            {error && <p className="text-red-400 bg-red-900/50 p-3 rounded-md text-sm">{error}</p>}
          </div>

          <div className="lg:w-2/3 w-full grid grid-cols-1 md:grid-cols-2 gap-8">
            <CodeDisplay title="Uploaded XML" code={xmlContent} language="xml" />
            <CodeDisplay title="JSON Output" code={jsonOutput} language="json" isLoading={isLoading} />
          </div>
        </main>
      </div>
    </div>
  );
};

export default App;

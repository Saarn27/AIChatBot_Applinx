
import React, { useState, useCallback } from 'react';
import { ClipboardIcon } from './icons/ClipboardIcon';
import { CheckIcon } from './icons/CheckIcon';
import { Spinner } from './Spinner';

interface CodeDisplayProps {
  title: string;
  code: string;
  language: 'xml' | 'json';
  isLoading?: boolean;
}

export const CodeDisplay: React.FC<CodeDisplayProps> = ({ title, code, language, isLoading = false }) => {
  const [copied, setCopied] = useState(false);

  const handleCopy = useCallback(() => {
    if (code) {
      navigator.clipboard.writeText(code).then(() => {
        setCopied(true);
        setTimeout(() => setCopied(false), 2000);
      });
    }
  }, [code]);

  return (
    <div className="bg-dark-card border border-dark-border rounded-lg flex flex-col h-full">
      <div className="flex justify-between items-center p-3 border-b border-dark-border">
        <h3 className="font-mono text-sm uppercase tracking-wider text-dark-text-secondary">{title}</h3>
        <button
          onClick={handleCopy}
          disabled={!code || copied}
          className="p-1.5 rounded-md hover:bg-gray-600 focus:outline-none focus:ring-2 focus:ring-brand-primary disabled:opacity-50 disabled:hover:bg-transparent transition-colors text-dark-text-secondary"
          aria-label="Copy to clipboard"
        >
          {copied ? <CheckIcon className="w-5 h-5 text-green-400" /> : <ClipboardIcon className="w-5 h-5" />}
        </button>
      </div>
      <div className="relative p-4 flex-grow overflow-auto">
        {isLoading && (
            <div className="absolute inset-0 bg-dark-card/80 flex items-center justify-center z-10">
                <div className="flex flex-col items-center gap-2">
                    <Spinner />
                    <span className="text-dark-text-secondary text-sm">Gemini is thinking...</span>
                </div>
            </div>
        )}
        <pre className="text-sm h-full whitespace-pre-wrap break-words">
          <code className={`language-${language} text-gray-300`}>
            {code || <span className="text-dark-text-secondary">No content yet.</span>}
          </code>
        </pre>
      </div>
    </div>
  );
};

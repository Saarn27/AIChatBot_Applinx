// azureOpenAIService.ts (retains original prompt semantics)
/** ==== Prompt (unchanged) ==== */
const PROMPT_TEMPLATE = `
You are an expert XML to JSON converter. Your task is to analyze the provided XML and extract specific fields into a structured JSON format.

Follow these rules precisely:

Focus exclusively on the contents that appear inside <Mapping> elements. The input may contain multiple mapping elements; process ALL of them and aggregate results.

1. The final output MUST be a single JSON object with two top-level keys:
   - "special_cell": An object containing "screen_option", "option_name", and "screen_name".
   - "fields": An array of objects, where each object represents an input field discovered across any mapping element.

2. For each input field or element found in any mapping, create a JSON object for the "fields" array with the following properties:
   - val_name: The name or ID of the element (e.g., from a "name" or "id" attribute).
   - label: The human-readable label text associated with the element. This is often found in a 'label' attribute or a nearby text node.
   - row: The row number where the element is located (e.g., from a "row" attribute).
   - col: The column number where the element is located (e.g., from a "col" attribute).
   - val_length: The maximum length allowed for the value (e.g., from a 'maxlength' attribute). This MUST be a number.
   - is_protected: A boolean indicating if the field is read-only or protected (e.g., from a "protected" or "readonly" attribute).
   - is_col: A boolean indicating if this is part of a column layout. Infer this from the structure.
   - is_description: A boolean. This is 'true' only for elements that are descriptions of other variables.
   - has_description: If a variable has a corresponding description element (conventionally named \`valname_desc\`), this field should contain the name of that description variable (e.g., "myvar_desc"). Otherwise, it MUST be null.

3. For the "special_cell" object:
   - Find the LAST <Core> element (in document order) where the attribute Type="1" within the provided input.
   - Read its Name attribute (a string).
   - Set special_cell:
   screen_option = Name.split('/')[2].match(/\\d+/)[0] (the numeric part after the second slash in the Name).
   option_name = Name.split('/')[3] (the part after the third slash in the Name).
   screen_name = Name.split('/')[4] (the part after the fourth slash in the Name).
   - If no such <Core Type="1"> exists, set all three to null.

Here is the XML content to process:
---
\`\`\`xml
{{XML_CONTENT}}
\`\`\`
---

Return ONLY valid JSON (no prose, no code fences).
`;

/** ==== Types ==== */
export type Field = {
  val_name: string;
  label: string;
  row: number;
  col: number;
  val_length: number;
  is_protected: boolean;
  is_col: boolean;
  is_description: boolean;
  has_description: string | null;
};

export type Output = {
  special_cell: {
    screen_option: string | null;
    option_name: string | null;
    screen_name: string | null;
  };
  fields: Field[];
};

/** ==== Helpers ==== */
type MaybeEnv = Record<string, string | undefined> | undefined;

function cleanEnvValue(raw: unknown): string | undefined {
  if (raw == null) return undefined;

  let value = String(raw).replace(/\r?\n/g, '').trim();
  if (!value) return undefined;

  const first = value[0];
  const last = value[value.length - 1];
  if ((first === '"' && last === '"') || (first === "'" && last === "'")) {
    value = value.slice(1, -1).trim();
    if (!value) return undefined;
  }

  const lower = value.toLowerCase();
  if (lower === 'undefined' || lower === 'null') return undefined;

  return value;
}

function readFromEnv(env: MaybeEnv, keys: string[]): string | undefined {
  if (!env) return undefined;
  for (const key of keys) {
    const direct = cleanEnvValue(env[key]);
    if (direct) return direct;
    const vitePrefixed = cleanEnvValue(env[`VITE_${key}`]);
    if (vitePrefixed) return vitePrefixed;
  }
  return undefined;
}

function getApiKey(): string {
  const keys = ['AZURE_OPENAI_API_KEY', 'AZURE_OPENAI_KEY', 'OPENAI_API_KEY', 'API_KEY'];

  const fromImportMeta =
    typeof import.meta !== 'undefined' ? readFromEnv((import.meta as any)?.env, keys) : undefined;

  const fromProcess =
    typeof process !== 'undefined' && process?.env ? readFromEnv(process.env as MaybeEnv, keys) : undefined;

  const apiKey = fromImportMeta ?? fromProcess;

  console.log('Using Azure OpenAI API Key:', apiKey ? 'FOUND' : 'MISSING');
  if (!apiKey)
    throw new Error(
      'Missing Azure OpenAI API key. Set AZURE_OPENAI_API_KEY (or AZURE_OPENAI_KEY / OPENAI_API_KEY).'
    );
  return apiKey;
}

function getEndpoint(): string {
  const keys = ['ENDPOINT_URL', 'AZURE_OPENAI_ENDPOINT', 'AZURE_OPENAI_ENDPOINT_URL'];

  const fromImportMeta =
    typeof import.meta !== 'undefined' ? readFromEnv((import.meta as any)?.env, keys) : undefined;

  const fromProcess =
    typeof process !== 'undefined' && process?.env ? readFromEnv(process.env as MaybeEnv, keys) : undefined;

  const endpoint = fromImportMeta ?? fromProcess;
  console.log(endpoint);
  console.log('Using Azure OpenAI Endpoint:', endpoint ? 'FOUND' : 'MISSING');
  if (!endpoint)
    throw new Error('Missing Azure OpenAI endpoint. Set ENDPOINT_URL or AZURE_OPENAI_ENDPOINT.');

  return endpoint.replace(/\/+$/, '');
}

function getDeploymentName(): string {
  const keys = ['DEPLOYMENT_NAME', 'AZURE_OPENAI_DEPLOYMENT', 'AZURE_OPENAI_DEPLOYMENT_NAME'];

  const fromImportMeta =
    typeof import.meta !== 'undefined' ? readFromEnv((import.meta as any)?.env, keys) : undefined;

  const fromProcess =
    typeof process !== 'undefined' && process?.env ? readFromEnv(process.env as MaybeEnv, keys) : undefined;

  const deployment = fromImportMeta ?? fromProcess;

  console.log('Using Azure OpenAI Deployment:', deployment ? 'FOUND' : 'MISSING');
  if (!deployment)
    throw new Error('Missing Azure OpenAI deployment name. Set DEPLOYMENT_NAME or AZURE_OPENAI_DEPLOYMENT.');

  return deployment;
}

function extractTextFromResponse(data: any): string {
  const choices = Array.isArray(data?.choices) ? data.choices : [];
  for (const choice of choices) {
    const deltaContent = choice?.delta?.content;
    if (typeof deltaContent === 'string' && deltaContent.trim()) {
      return deltaContent.trim();
    }

    if (Array.isArray(deltaContent)) {
      const fromDelta = deltaContent
        .map((item) => (typeof item?.text === 'string' ? item.text : ''))
        .join('')
        .trim();
      if (fromDelta) return fromDelta;
    }

    const message = choice?.message;
    if (typeof message?.content === 'string') {
      const trimmed = message.content.trim();
      if (trimmed) return trimmed;
    }

    if (Array.isArray(message?.content)) {
      const text = message.content
        .map((part: any) => (typeof part?.text === 'string' ? part.text : ''))
        .join('')
        .trim();
      if (text) return text;
    }
  }
  return '';
}

/** Coerce to stable shape so callers can safely .reduce on fields */
function coerceOutput(o: any): Output {
  const special = o?.special_cell ?? {};
  const fieldsRaw = Array.isArray(o?.fields) ? o.fields : [];

  const fields: Field[] = fieldsRaw.map((f: any) => ({
    val_name: String(f?.val_name ?? ''),
    label: String(f?.label ?? ''),
    row: Number.isFinite(f?.row) ? Number(f.row) : 0,
    col: Number.isFinite(f?.col) ? Number(f.col) : 0,
    val_length: Number.isFinite(f?.val_length) ? Number(f.val_length) : 0,
    is_protected: Boolean(f?.is_protected),
    is_col: Boolean(f?.is_col),
    is_description: Boolean(f?.is_description),
    has_description: f?.has_description ?? null,
  }));

  return {
    special_cell: {
      screen_option: special?.screen_option ?? null,
      option_name: special?.option_name ?? null,
      screen_name: special?.screen_name ?? null,
    },
    fields,
  };
}

/** ==== Low-level call – returns RAW JSON string if you need it ==== */
export async function convertXmlToJsonRaw(xmlContent: string): Promise<string> {
  const apiKey = getApiKey();
  const endpoint = getEndpoint();
  const deployment = getDeploymentName();
  const prompt = PROMPT_TEMPLATE.replace('{{XML_CONTENT}}', xmlContent);

  const url = `${endpoint}/openai/deployments/${encodeURIComponent(
    deployment
  )}/chat/completions?api-version=2025-01-01-preview`;

  const body = {
    messages: [
      {
        role: 'user',
        content: [
          {
            type: 'text',
            text: prompt,
          },
        ],
      },
    ],
    response_format: { type: 'json_object' },
  };

  const res = await fetch(url, {
    method: 'POST',
    headers: {
      'content-type': 'application/json',
      'api-key': apiKey,
    },
    body: JSON.stringify(body),
  });

  const data = await res.json().catch(() => ({}));
  if (!res.ok) {
    const errorJson = JSON.stringify(data);
    const message = `${res.status} ${res.statusText}: ${errorJson}`;

    const lower = errorJson.toLowerCase();
    if (res.status === 401 && lower.includes('access denied')) {
      throw new Error(
        'Azure OpenAI rejected the provided API key. Ensure AZURE_OPENAI_API_KEY (or equivalent) is set to a valid key with access to the deployment.'
      );
    }

    throw new Error(message);
  }

  const text = extractTextFromResponse(data);
  if (!text) throw new Error('Empty response from model.');
  return text;
}

/** ==== Main export – returns PARSED & COERCED object ==== */
export async function convertXmlToJson(xmlContent: string): Promise<Output> {
  const raw = await convertXmlToJsonRaw(xmlContent);

  let parsed: any;
  try {
    parsed = JSON.parse(raw);
  } catch {
    // salvage if model added stray text
    const start = raw.indexOf('{');
    const end = raw.lastIndexOf('}');
    if (start >= 0 && end > start) {
      parsed = JSON.parse(raw.slice(start, end + 1));
    } else {
      throw new Error('Model returned non-JSON text');
    }
  }

  return coerceOutput(parsed);
}

/** Back-compat alias (if you previously imported convertXmlToJsoni) */
export const convertXmlToJsoni = convertXmlToJson;

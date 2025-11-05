
import { GoogleGenAI, GenerateContentResponse } from "@google/genai";

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
   screen_option = Name.split('/')[2].match(/\d+/)[0] (the numeric part after the second slash in the Name).
   option_name = Name.split('/')[3] (the part after the third slash in the Name).
   screen_name = Name.split('/')[4] (the part after the fourth slash in the Name).
   - If no such <Core Type="3"> exists, set all three to null.

Here is the XML content to process:
---
\`\`\`xml
{{XML_CONTENT}}
\`\`\`
---

Provide ONLY the final JSON output inside a single JSON code block. Do not include any extra explanations or markdown formatting around the JSON.
`;


export async function convertXmlToJson(xmlContent: string): Promise<string> {
    if (!process.env.API_KEY) {
        throw new Error("API_KEY environment variable not set.");
    }

    const ai = new GoogleGenAI({ apiKey: process.env.API_KEY });

    const prompt = PROMPT_TEMPLATE.replace('{{XML_CONTENT}}', xmlContent);

    try {
        const response: GenerateContentResponse = await ai.models.generateContent({
            model: 'gemini-2.5-flash',
            contents: prompt,
        });
        
        // Clean up the response to get only the JSON part
        let text = response.text.trim();
        if (text.startsWith('```json')) {
            text = text.substring(7);
        }
        if (text.endsWith('```')) {
            text = text.substring(0, text.length - 3);
        }

        return text.trim();

    } catch (error) {
        console.error("Error calling Gemini API:", error);
        throw new Error("Failed to get a response from Gemini API.");
    }
}

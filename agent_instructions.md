# Agent Instructions

When transforming XML inputs to JSON, produce output objects that follow these rules:

1. Create a JSON structure that includes the following fields for each value:
   - `val_name`
   - `label` (string; obtain it from the label text beside the input in the XML)
   - `row`
   - `col`
   - `val_length` (numeric)
   - `is_protected` (boolean)
   - `is_col` (boolean)
   - `is_description` (boolean)
   - `has_description` (either `null` or the name of the related description variable)

2. Determine the description variable name by appending `_desc` to `val_name` (e.g., `VALNAME_desc`). If such a description exists, set `has_description` to that identifier; otherwise set it to `null` and ensure `is_description` is `false`.

3. In addition to the value entries, create a special JSON cell that contains:
   - `title`
   - `screen_option`
   - `screen_name`

4. Ensure the resulting JSON matches the structure and naming specified above exactly.

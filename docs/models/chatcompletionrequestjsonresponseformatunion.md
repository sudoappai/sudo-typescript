# ChatCompletionRequestJsonResponseFormatUnion

An object specifying the format that the model must output. Compatible with GPT-4o, GPT-4o mini, GPT-4 Turbo and all GPT-3.5 Turbo models newer than gpt-3.5-turbo-1106. Setting to { "type": "json_schema", "json_schema": {...} } enables Structured Outputs which guarantee the model will match your supplied JSON schema. Setting to { "type": "json_object" } enables JSON mode, which guarantees the message the model generates is valid JSON.


## Supported Types

### `models.ChatCompletionRequestJsonResponseFormatText`

```typescript
const value: models.ChatCompletionRequestJsonResponseFormatText = {
  type: "text",
};
```

### `models.ChatCompletionRequestJSONResponseFormatJSONObject`

```typescript
const value: models.ChatCompletionRequestJSONResponseFormatJSONObject = {
  type: "json_object",
};
```

### `models.ChatCompletionRequestJSONResponseFormatJSONSchema`

```typescript
const value: models.ChatCompletionRequestJSONResponseFormatJSONSchema = {
  type: "json_schema",
  jsonSchema: {
    name: "<value>",
    schema: {
      "key": "<value>",
      "key1": "<value>",
      "key2": "<value>",
    },
  },
};
```


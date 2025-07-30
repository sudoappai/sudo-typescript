# ChatCompletionRequestStreamResponseFormatUnion

An object specifying the format that the model must output. Compatible with GPT-4o, GPT-4o mini, GPT-4 Turbo and all GPT-3.5 Turbo models newer than gpt-3.5-turbo-1106. Setting to { "type": "json_schema", "json_schema": {...} } enables Structured Outputs which guarantee the model will match your supplied JSON schema. Setting to { "type": "json_object" } enables JSON mode, which guarantees the message the model generates is valid JSON.


## Supported Types

### `models.ChatCompletionRequestStreamResponseFormatText`

```typescript
const value: models.ChatCompletionRequestStreamResponseFormatText = {
  type: "text",
};
```

### `models.ChatCompletionRequestStreamResponseFormatJSONObject`

```typescript
const value: models.ChatCompletionRequestStreamResponseFormatJSONObject = {
  type: "json_object",
};
```

### `models.ChatCompletionRequestStreamResponseFormatJSONSchema`

```typescript
const value: models.ChatCompletionRequestStreamResponseFormatJSONSchema = {
  type: "json_schema",
  jsonSchema: {
    name: "<value>",
    schema: {},
  },
};
```


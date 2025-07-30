# ChatCompletionRequestStreamResponseFormatJSONSchema

## Example Usage

```typescript
import { ChatCompletionRequestStreamResponseFormatJSONSchema } from "sudo/models";

let value: ChatCompletionRequestStreamResponseFormatJSONSchema = {
  type: "json_schema",
  jsonSchema: {
    name: "<value>",
    schema: {},
  },
};
```

## Fields

| Field                                                                                                      | Type                                                                                                       | Required                                                                                                   | Description                                                                                                |
| ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                     | [models.ChatCompletionRequestStreamTypeJSONSchema](../models/chatcompletionrequeststreamtypejsonschema.md) | :heavy_check_mark:                                                                                         | N/A                                                                                                        |
| `jsonSchema`                                                                                               | [models.ChatCompletionRequestStreamJsonSchema](../models/chatcompletionrequeststreamjsonschema.md)         | :heavy_check_mark:                                                                                         | The JSON schema definition for structured outputs.                                                         |
# ChatCompletionRequestJsonJsonSchema

The JSON schema definition for structured outputs.

## Example Usage

```typescript
import { ChatCompletionRequestJsonJsonSchema } from "sudo/models";

let value: ChatCompletionRequestJsonJsonSchema = {
  name: "<value>",
  schema: {
    "key": "<value>",
  },
};
```

## Fields

| Field                                                                                                                   | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `name`                                                                                                                  | *string*                                                                                                                | :heavy_check_mark:                                                                                                      | The name of the response format. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64. |
| `description`                                                                                                           | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | A description of what the response format is for, used by the model to determine how to respond in the format.          |
| `schema`                                                                                                                | Record<string, *any*>                                                                                                   | :heavy_check_mark:                                                                                                      | The schema for the response format, described as a JSON Schema object.                                                  |
| `strict`                                                                                                                | *boolean*                                                                                                               | :heavy_minus_sign:                                                                                                      | Whether to enable strict schema adherence when generating the output.                                                   |
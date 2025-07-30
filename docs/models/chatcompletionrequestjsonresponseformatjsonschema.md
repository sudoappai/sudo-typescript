# ChatCompletionRequestJSONResponseFormatJSONSchema

## Example Usage

```typescript
import { ChatCompletionRequestJSONResponseFormatJSONSchema } from "sudo/models";

let value: ChatCompletionRequestJSONResponseFormatJSONSchema = {
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

## Fields

| Field                                                                                                  | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `type`                                                                                                 | [models.ChatCompletionRequestJSONTypeJSONSchema](../models/chatcompletionrequestjsontypejsonschema.md) | :heavy_check_mark:                                                                                     | N/A                                                                                                    |
| `jsonSchema`                                                                                           | [models.ChatCompletionRequestJsonJsonSchema](../models/chatcompletionrequestjsonjsonschema.md)         | :heavy_check_mark:                                                                                     | The JSON schema definition for structured outputs.                                                     |
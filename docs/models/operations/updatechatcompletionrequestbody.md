# UpdateChatCompletionRequestBody

Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format, and querying for objects via API or the dashboard. Keys are strings with a maximum length of 64 characters. Values are strings with a maximum length of 512 characters.

## Example Usage

```typescript
import { UpdateChatCompletionRequestBody } from "sudo/models/operations";

let value: UpdateChatCompletionRequestBody = {
  metadata: {
    "key": "<value>",
  },
};
```

## Fields

| Field                                                     | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `metadata`                                                | Record<string, *string*>                                  | :heavy_check_mark:                                        | The metadata key-value pairs to attach to the completion. |
# GetChatCompletionMessagesRequest

## Example Usage

```typescript
import { GetChatCompletionMessagesRequest } from "sudo/models/operations";

let value: GetChatCompletionMessagesRequest = {
  completionId: "<id>",
};
```

## Fields

| Field                                                                                                            | Type                                                                                                             | Required                                                                                                         | Description                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| `completionId`                                                                                                   | *string*                                                                                                         | :heavy_check_mark:                                                                                               | ID of the chat completion                                                                                        |
| `after`                                                                                                          | *string*                                                                                                         | :heavy_minus_sign:                                                                                               | Identifier for the last message from the previous pagination request.                                            |
| `limit`                                                                                                          | *number*                                                                                                         | :heavy_minus_sign:                                                                                               | Number of messages to retrieve.                                                                                  |
| `order`                                                                                                          | *string*                                                                                                         | :heavy_minus_sign:                                                                                               | Sort order for messages by timestamp. Use asc for ascending order or desc for descending order. Defaults to asc. |
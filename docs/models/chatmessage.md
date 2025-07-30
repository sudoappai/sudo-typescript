# ChatMessage

## Example Usage

```typescript
import { ChatMessage } from "sudo/models";

let value: ChatMessage = {
  content: "<value>",
  role: "<value>",
};
```

## Fields

| Field                                      | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `content`                                  | *models.MessageContent*                    | :heavy_check_mark:                         | N/A                                        |
| `name`                                     | *string*                                   | :heavy_minus_sign:                         | N/A                                        |
| `role`                                     | *string*                                   | :heavy_check_mark:                         | N/A                                        |
| `toolCallId`                               | *string*                                   | :heavy_minus_sign:                         | N/A                                        |
| `toolCalls`                                | [models.ToolCall](../models/toolcall.md)[] | :heavy_minus_sign:                         | N/A                                        |
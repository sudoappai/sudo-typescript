# MessageResponse

## Example Usage

```typescript
import { MessageResponse } from "sudo/models";

let value: MessageResponse = {
  role: "<value>",
};
```

## Fields

| Field                                      | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `annotations`                              | *any*                                      | :heavy_minus_sign:                         | N/A                                        |
| `audio`                                    | *any*                                      | :heavy_minus_sign:                         | N/A                                        |
| `content`                                  | *string*                                   | :heavy_minus_sign:                         | N/A                                        |
| `refusal`                                  | *string*                                   | :heavy_minus_sign:                         | N/A                                        |
| `role`                                     | *string*                                   | :heavy_check_mark:                         | N/A                                        |
| `toolCalls`                                | [models.ToolCall](../models/toolcall.md)[] | :heavy_minus_sign:                         | N/A                                        |
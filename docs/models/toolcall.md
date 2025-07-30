# ToolCall

## Example Usage

```typescript
import { ToolCall } from "sudo/models";

let value: ToolCall = {
  function: {
    arguments: "<value>",
    name: "<value>",
  },
  id: "<id>",
  type: "<value>",
};
```

## Fields

| Field                                                    | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `function`                                               | [models.ToolCallFunction](../models/toolcallfunction.md) | :heavy_check_mark:                                       | N/A                                                      |
| `id`                                                     | *string*                                                 | :heavy_check_mark:                                       | N/A                                                      |
| `type`                                                   | *string*                                                 | :heavy_check_mark:                                       | N/A                                                      |
# Choice

## Example Usage

```typescript
import { Choice } from "sudo/models";

let value: Choice = {
  finishReason: "<value>",
  index: 225795,
  message: {
    role: "<value>",
  },
};
```

## Fields

| Field                                                  | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `finishReason`                                         | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `index`                                                | *number*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `logprobs`                                             | *any*                                                  | :heavy_minus_sign:                                     | N/A                                                    |
| `message`                                              | [models.MessageResponse](../models/messageresponse.md) | :heavy_check_mark:                                     | N/A                                                    |
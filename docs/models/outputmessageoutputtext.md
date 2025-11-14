# OutputMessageOutputText

## Example Usage

```typescript
import { OutputMessageOutputText } from "sudo/models";

let value: OutputMessageOutputText = {
  annotations: [
    "<value 1>",
    "<value 2>",
  ],
  text: "<value>",
  type: "output_text",
};
```

## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `annotations`                                        | *any*[]                                              | :heavy_check_mark:                                   | N/A                                                  |
| `logprobs`                                           | *any*[]                                              | :heavy_minus_sign:                                   | N/A                                                  |
| `text`                                               | *string*                                             | :heavy_check_mark:                                   | N/A                                                  |
| `type`                                               | [models.TypeOutputText](../models/typeoutputtext.md) | :heavy_check_mark:                                   | N/A                                                  |
# ImageUsage

## Example Usage

```typescript
import { ImageUsage } from "sudo/models";

let value: ImageUsage = {
  inputTokens: 421443,
  inputTokensDetails: {
    imageTokens: 206012,
    textTokens: 939004,
  },
  outputTokens: 697,
  totalTokens: 90629,
};
```

## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `inputTokens`                                                | *number*                                                     | :heavy_check_mark:                                           | Number of tokens in the input prompt.                        |
| `inputTokensDetails`                                         | [models.ImageInputTokens](../models/imageinputtokens.md)     | :heavy_check_mark:                                           | N/A                                                          |
| `outputTokens`                                               | *number*                                                     | :heavy_check_mark:                                           | Number of tokens used for the generated image.               |
| `totalTokens`                                                | *number*                                                     | :heavy_check_mark:                                           | Total number of tokens used in the request (input + output). |
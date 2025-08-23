# ImageGeneration

## Example Usage

```typescript
import { ImageGeneration } from "sudo/models";

let value: ImageGeneration = {
  data: [],
};
```

## Fields

| Field                                                          | Type                                                           | Required                                                       | Description                                                    |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `background`                                                   | *string*                                                       | :heavy_minus_sign:                                             | Background settings used in generation (OpenAI only)           |
| `created`                                                      | *number*                                                       | :heavy_minus_sign:                                             | The Unix timestamp (in seconds) of when the image was created. |
| `outputFormat`                                                 | *string*                                                       | :heavy_minus_sign:                                             | The output format of the generated image (OpenAI only)         |
| `quality`                                                      | *string*                                                       | :heavy_minus_sign:                                             | The quality setting used for generation (OpenAI only)          |
| `size`                                                         | *string*                                                       | :heavy_minus_sign:                                             | The size of the generated image (OpenAI only)                  |
| `usage`                                                        | [models.ImageUsage](../models/imageusage.md)                   | :heavy_minus_sign:                                             | N/A                                                            |
| `data`                                                         | [models.ImageData](../models/imagedata.md)[]                   | :heavy_check_mark:                                             | The list of generated images.                                  |
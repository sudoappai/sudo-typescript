# ContentPart3

Audio content part.

## Example Usage

```typescript
import { ContentPart3 } from "sudo/models";

let value: ContentPart3 = {
  inputAudio: {
    data: "<value>",
    format: "<value>",
  },
  type: "<value>",
};
```

## Fields

| Field                                             | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `inputAudio`                                      | [models.InputAudio](../models/inputaudio.md)      | :heavy_check_mark:                                | N/A                                               |
| `type`                                            | *string*                                          | :heavy_check_mark:                                | The type of the content part. Always input_audio. |
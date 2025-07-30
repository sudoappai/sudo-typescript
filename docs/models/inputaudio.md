# InputAudio

## Example Usage

```typescript
import { InputAudio } from "sudo/models";

let value: InputAudio = {
  data: "<value>",
  format: "<value>",
};
```

## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `data`                                                                | *string*                                                              | :heavy_check_mark:                                                    | Base64 encoded audio data.                                            |
| `format`                                                              | *string*                                                              | :heavy_check_mark:                                                    | The format of the encoded audio data. Currently supports wav and mp3. |
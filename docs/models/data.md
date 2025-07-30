# Data

## Example Usage

```typescript
import { Data } from "sudo/models";

let value: Data = {
  id: "<id>",
  object: "chat.completion.chunk",
  created: 583008,
  model: "Malibu",
  choices: [
    {
      index: 21457,
      delta: {},
    },
  ],
};
```

## Fields

| Field                                                                           | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `id`                                                                            | *string*                                                                        | :heavy_check_mark:                                                              | A unique identifier for the chat completion.                                    |
| `object`                                                                        | [models.ObjectT](../models/objectt.md)                                          | :heavy_check_mark:                                                              | The object type, which is always 'chat.completion.chunk'.                       |
| `created`                                                                       | *number*                                                                        | :heavy_check_mark:                                                              | The Unix timestamp (in seconds) of when the chat completion was created.        |
| `model`                                                                         | *string*                                                                        | :heavy_check_mark:                                                              | The model used for the chat completion.                                         |
| `systemFingerprint`                                                             | *string*                                                                        | :heavy_minus_sign:                                                              | This fingerprint represents the backend configuration that the model runs with. |
| `choices`                                                                       | [models.ChatCompletionChunkChoice](../models/chatcompletionchunkchoice.md)[]    | :heavy_check_mark:                                                              | A list of chat completion choices.                                              |
| `usage`                                                                         | [models.Usage](../models/usage.md)                                              | :heavy_minus_sign:                                                              | N/A                                                                             |
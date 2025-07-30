# ChatCompletionRequestJsonAudio

Parameters for audio output. Required when audio output is requested with modalities: ["audio"].

## Example Usage

```typescript
import { ChatCompletionRequestJsonAudio } from "sudo/models";

let value: ChatCompletionRequestJsonAudio = {};
```

## Fields

| Field                                                                                       | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `format`                                                                                    | [models.ChatCompletionRequestJsonFormat](../models/chatcompletionrequestjsonformat.md)      | :heavy_minus_sign:                                                                          | Specifies the output audio format. Must be one of wav, mp3, flac, opus, or pcm16.           |
| `voice`                                                                                     | [models.ChatCompletionRequestJsonVoice](../models/chatcompletionrequestjsonvoice.md)        | :heavy_minus_sign:                                                                          | Specifies the voice type. Supported voices are alloy, echo, fable, onyx, nova, and shimmer. |
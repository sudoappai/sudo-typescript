# ChatCompletionRequestStreamPrediction

Configuration for a Predicted Output, which can greatly improve response times when large parts of the model response are known ahead of time. This is most common when you are regenerating a file with only minor changes to most of the content.

## Example Usage

```typescript
import { ChatCompletionRequestStreamPrediction } from "sudo/models";

let value: ChatCompletionRequestStreamPrediction = {};
```

## Fields

| Field                                                                                                | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `type`                                                                                               | [models.ChatCompletionRequestStreamTypeContent](../models/chatcompletionrequeststreamtypecontent.md) | :heavy_minus_sign:                                                                                   | N/A                                                                                                  |
| `content`                                                                                            | *string*                                                                                             | :heavy_minus_sign:                                                                                   | The predicted content for the completion.                                                            |
# ChatCompletionRequestStreamToolChoiceFunction

## Example Usage

```typescript
import { ChatCompletionRequestStreamToolChoiceFunction } from "sudo/models";

let value: ChatCompletionRequestStreamToolChoiceFunction = {
  type: "function",
  function: {
    name: "<value>",
  },
};
```

## Fields

| Field                                                                                                      | Type                                                                                                       | Required                                                                                                   | Description                                                                                                |
| ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                     | [models.ChatCompletionRequestStreamToolChoiceType](../models/chatcompletionrequeststreamtoolchoicetype.md) | :heavy_check_mark:                                                                                         | N/A                                                                                                        |
| `function`                                                                                                 | [models.ChatCompletionRequestStreamFunction](../models/chatcompletionrequeststreamfunction.md)             | :heavy_check_mark:                                                                                         | N/A                                                                                                        |
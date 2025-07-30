# ChatCompletionRequestJsonToolChoiceFunction

## Example Usage

```typescript
import { ChatCompletionRequestJsonToolChoiceFunction } from "sudo/models";

let value: ChatCompletionRequestJsonToolChoiceFunction = {
  type: "function",
  function: {
    name: "<value>",
  },
};
```

## Fields

| Field                                                                                                  | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `type`                                                                                                 | [models.ChatCompletionRequestJsonToolChoiceType](../models/chatcompletionrequestjsontoolchoicetype.md) | :heavy_check_mark:                                                                                     | N/A                                                                                                    |
| `function`                                                                                             | [models.ChatCompletionRequestJsonFunction](../models/chatcompletionrequestjsonfunction.md)             | :heavy_check_mark:                                                                                     | N/A                                                                                                    |
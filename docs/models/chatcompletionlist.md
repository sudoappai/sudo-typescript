# ChatCompletionList

## Example Usage

```typescript
import { ChatCompletionList } from "sudo/models";

let value: ChatCompletionList = {
  data: [
    {
      choices: [],
      created: 163916,
      id: "<id>",
      model: "El Camino",
      object: "<value>",
      usage: {
        completionTokens: 818271,
        promptTokens: 339789,
        totalTokens: 7790,
      },
    },
  ],
  firstId: "<id>",
  hasMore: true,
  lastId: "<id>",
  object: "<value>",
};
```

## Fields

| Field                                                  | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `data`                                                 | [models.ChatCompletion](../models/chatcompletion.md)[] | :heavy_check_mark:                                     | N/A                                                    |
| `firstId`                                              | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `hasMore`                                              | *boolean*                                              | :heavy_check_mark:                                     | N/A                                                    |
| `lastId`                                               | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `object`                                               | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
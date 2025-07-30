# ChatCompletion

## Example Usage

```typescript
import { ChatCompletion } from "sudo/models";

let value: ChatCompletion = {
  choices: [],
  created: 676471,
  id: "<id>",
  model: "Altima",
  object: "<value>",
  usage: {
    completionTokens: 818271,
    promptTokens: 339789,
    totalTokens: 7790,
  },
};
```

## Fields

| Field                                                  | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `choices`                                              | [models.Choice](../models/choice.md)[]                 | :heavy_check_mark:                                     | N/A                                                    |
| `created`                                              | *number*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `id`                                                   | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `model`                                                | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `object`                                               | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `serviceTier`                                          | *string*                                               | :heavy_minus_sign:                                     | N/A                                                    |
| `systemFingerprint`                                    | *string*                                               | :heavy_minus_sign:                                     | N/A                                                    |
| `usage`                                                | [models.Usage](../models/usage.md)                     | :heavy_check_mark:                                     | N/A                                                    |
| `metadata`                                             | Record<string, *string*>                               | :heavy_minus_sign:                                     | Developer-defined metadata attached to the completion. |
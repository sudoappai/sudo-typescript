# ResponseUsage

Usage statistics for the API call

## Example Usage

```typescript
import { ResponseUsage } from "sudo/models";

let value: ResponseUsage = {
  inputTokens: 68368,
  outputTokens: 947423,
  totalTokens: 870550,
};
```

## Fields

| Field                             | Type                              | Required                          | Description                       |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- |
| `inputTokens`                     | *number*                          | :heavy_check_mark:                | Number of tokens in the input     |
| `inputTokensDetails`              | *any*                             | :heavy_minus_sign:                | Breakdown of input token details  |
| `outputTokens`                    | *number*                          | :heavy_check_mark:                | Number of tokens in the output    |
| `outputTokensDetails`             | *any*                             | :heavy_minus_sign:                | Breakdown of output token details |
| `totalTokens`                     | *number*                          | :heavy_check_mark:                | Total number of tokens used       |
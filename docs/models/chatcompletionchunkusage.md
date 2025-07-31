# ChatCompletionChunkUsage

## Example Usage

```typescript
import { ChatCompletionChunkUsage } from "sudo/models";

let value: ChatCompletionChunkUsage = {
  completionTokens: 540444,
  promptTokens: 638217,
  totalTokens: 56495,
};
```

## Fields

| Field                     | Type                      | Required                  | Description               |
| ------------------------- | ------------------------- | ------------------------- | ------------------------- |
| `completionTokens`        | *number*                  | :heavy_check_mark:        | N/A                       |
| `completionTokensDetails` | *any*                     | :heavy_minus_sign:        | N/A                       |
| `promptTokens`            | *number*                  | :heavy_check_mark:        | N/A                       |
| `promptTokensDetails`     | *any*                     | :heavy_minus_sign:        | N/A                       |
| `totalTokens`             | *number*                  | :heavy_check_mark:        | N/A                       |
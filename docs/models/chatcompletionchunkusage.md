# ChatCompletionChunkUsage

Usage statistics for the completion request. When stream_options.include_usage is set, the final chunk before [DONE] will contain the full usage statistics, and all other chunks will include usage with a null value.

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
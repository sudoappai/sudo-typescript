# Usage

## Example Usage

```typescript
import { Usage } from "sudo/models";

let value: Usage = {
  completionTokens: 979796,
  promptTokens: 787440,
  totalTokens: 860864,
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
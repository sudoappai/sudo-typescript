# IncompleteDetails

Details about why the response is incomplete (if status is "incomplete")

## Example Usage

```typescript
import { IncompleteDetails } from "sudo/models";

let value: IncompleteDetails = {
  reason: "<value>",
};
```

## Fields

| Field                                 | Type                                  | Required                              | Description                           |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `reason`                              | *string*                              | :heavy_check_mark:                    | The reason the response is incomplete |
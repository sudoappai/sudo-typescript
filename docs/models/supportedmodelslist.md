# SupportedModelsList

## Example Usage

```typescript
import { SupportedModelsList } from "sudo/models";

let value: SupportedModelsList = {
  data: [
    {
      createdAt: new Date("2025-10-25T10:41:02.054Z"),
      modelName: "<value>",
      modelProvider: "<value>",
      sudoModelId: 954167,
    },
  ],
  firstId: "<id>",
  hasMore: true,
  lastId: "<id>",
};
```

## Fields

| Field                                                  | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `data`                                                 | [models.SupportedModel](../models/supportedmodel.md)[] | :heavy_check_mark:                                     | N/A                                                    |
| `firstId`                                              | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
| `hasMore`                                              | *boolean*                                              | :heavy_check_mark:                                     | N/A                                                    |
| `lastId`                                               | *string*                                               | :heavy_check_mark:                                     | N/A                                                    |
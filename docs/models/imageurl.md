# ImageUrl

## Example Usage

```typescript
import { ImageUrl } from "sudo/models";

let value: ImageUrl = {
  url: "https://sinful-meal.biz",
};
```

## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `url`                                                       | *string*                                                    | :heavy_check_mark:                                          | Either a URL of the image or the base64 encoded image data. |
| `detail`                                                    | *string*                                                    | :heavy_minus_sign:                                          | Specifies the detail level of the image.                    |
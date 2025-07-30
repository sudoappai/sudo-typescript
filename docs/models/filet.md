# FileT

## Example Usage

```typescript
import { FileT } from "sudo/models";

let value: FileT = {};
```

## Fields

| Field                                                                              | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `fileData`                                                                         | *string*                                                                           | :heavy_minus_sign:                                                                 | The base64 encoded file data, used when passing the file to the model as a string. |
| `fileId`                                                                           | *string*                                                                           | :heavy_minus_sign:                                                                 | The ID of an uploaded file to use as input.                                        |
| `fileName`                                                                         | *string*                                                                           | :heavy_minus_sign:                                                                 | The name of the file, used when passing the file to the model as a string.         |
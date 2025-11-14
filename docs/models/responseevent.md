# ResponseEvent

## Example Usage

```typescript
import { ResponseEvent } from "sudo/models";

let value: ResponseEvent = {
  data: {
    type: "<value>",
    sequenceNumber: 403762,
  },
};
```

## Fields

| Field                                                                                                                                                | Type                                                                                                                                                 | Required                                                                                                                                             | Description                                                                                                                                          |
| ---------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| `data`                                                                                                                                               | [models.ResponseEventData](../models/responseeventdata.md)                                                                                           | :heavy_check_mark:                                                                                                                                   | Server-sent event from the streaming Responses API. Contains dynamic fields based on event type (response.created, response.output_text.delta, etc.) |
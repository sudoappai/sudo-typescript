# ResponseEventData

Server-sent event from the streaming Responses API. Contains dynamic fields based on event type (response.created, response.output_text.delta, etc.)

## Example Usage

```typescript
import { ResponseEventData } from "sudo/models";

let value: ResponseEventData = {
  type: "<value>",
  sequenceNumber: 426469,
};
```

## Fields

| Field                                                                                 | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `type`                                                                                | *string*                                                                              | :heavy_check_mark:                                                                    | The type of event (e.g., response.created, response.output_text.delta, response.done) |
| `sequenceNumber`                                                                      | *number*                                                                              | :heavy_check_mark:                                                                    | Monotonically increasing sequence number for events in this response                  |
| `additionalProperties`                                                                | Record<string, *any*>                                                                 | :heavy_minus_sign:                                                                    | N/A                                                                                   |
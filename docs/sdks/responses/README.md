# Responses
(*responses*)

## Overview

### Available Operations

* [createResponse](#createresponse) - *[OpenAI Only]* Responses API: Create a model response for the given input
* [createStreamingResponse](#createstreamingresponse) - *[OpenAI Only]* Responses API: Create a streaming model response for the given input using server-sent events.

## createResponse

*[OpenAI Only]* Responses API: Create a model response for the given input

### Example Usage

<!-- UsageSnippet language="typescript" operationID="createResponse" method="post" path="/v1/responses" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.responses.createResponse({
    model: "gpt-4o",
    instructions: "You are a helpful assistant.",
    input: "Hello! Give me a study plan to learn Python.",
    stream: false
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { responsesCreateResponse } from "sudo/funcs/responsesCreateResponse.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await responsesCreateResponse(sudo, {
    model: "gpt-4o",
    instructions: "You are a helpful assistant.",
    input: "Hello! Give me a study plan to learn Python.",
    stream: false
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("responsesCreateResponse failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.ResponsesRequest](../../models/responsesrequest.md)                                                                                                                    | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ResponseT](../../models/responset.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## createStreamingResponse

*[OpenAI Only]* Responses API: Create a streaming model response for the given input using server-sent events.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="createStreamingResponse" method="post" path="/v1/responses#stream" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.responses.createStreamingResponse({
    model: "gpt-4o",
    instructions: "You are a helpful assistant.",
    input: "Hello! Give me a study plan to learn Python.",
    stream: true
  });

  for await (const event of result) {
    console.log(event);
  }
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { responsesCreateStreamingResponse } from "sudo/funcs/responsesCreateStreamingResponse.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await responsesCreateStreamingResponse(sudo, {
    model: "gpt-4o",
    instructions: "You are a helpful assistant.",
    input: "Hello! Give me a study plan to learn Python.",
    stream: true
  });
  if (res.ok) {
    const { value: result } = res;
    for await (const event of result) {
    console.log(event);
  }
  } else {
    console.log("responsesCreateStreamingResponse failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.ResponsesRequestStream](../../models/responsesrequeststream.md)                                                                                                        | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[EventStream<models.ResponseEvent>](../../models/.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |
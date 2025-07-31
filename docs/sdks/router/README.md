# Router
(*router*)

## Overview

### Available Operations

* [listChatCompletions](#listchatcompletions) - *[OpenAI Only]* Get a list of saved Chat Completions. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [create](#create) - Create a model response for the given string of prompts.
* [createStreaming](#createstreaming) - Create a streaming model response for the given string of prompts using server-sent events.
* [getChatCompletion](#getchatcompletion) - *[OpenAI Only]* Get a Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [updateChatCompletion](#updatechatcompletion) - *[OpenAI Only]* Update a Chat Completion with some metadata. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [deleteChatCompletion](#deletechatcompletion) - *[OpenAI Only]* Delete a stored Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [getChatCompletionMessages](#getchatcompletionmessages) - *[OpenAI Only]* Get the array of messages for a saved Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.

## listChatCompletions

*[OpenAI Only]* Get a list of saved Chat Completions. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="listChatCompletions" method="get" path="/v1/chat/completions" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.listChatCompletions();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerListChatCompletions } from "sudo/funcs/routerListChatCompletions.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerListChatCompletions(sudo);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("routerListChatCompletions failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListChatCompletionsRequest](../../models/operations/listchatcompletionsrequest.md)                                                                                 | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ChatCompletionList](../../models/chatcompletionlist.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 401                     | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## create

Create a model response for the given string of prompts.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="create" method="post" path="/v1/chat/completions" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.create({
    messages: [],
    model: "Camry",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerCreate } from "sudo/funcs/routerCreate.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerCreate(sudo, {
    messages: [],
    model: "Camry",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("routerCreate failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.ChatCompletionRequestJson](../../models/chatcompletionrequestjson.md)                                                                                                  | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ChatCompletion](../../models/chatcompletion.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## createStreaming

Create a streaming model response for the given string of prompts using server-sent events.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="createStreaming" method="post" path="/v1/chat/completions#stream" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.createStreaming({
    messages: [
      {
        content: "<value>",
        role: "<value>",
      },
    ],
    model: "PT Cruiser",
  });

  for await (const event of result) {
    // Handle the event
    console.log(event);
  }
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerCreateStreaming } from "sudo/funcs/routerCreateStreaming.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerCreateStreaming(sudo, {
    messages: [
      {
        content: "<value>",
        role: "<value>",
      },
    ],
    model: "PT Cruiser",
  });
  if (res.ok) {
    const { value: result } = res;
    for await (const event of result) {
    // Handle the event
    console.log(event);
  }
  } else {
    console.log("routerCreateStreaming failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.ChatCompletionRequestStream](../../models/chatcompletionrequeststream.md)                                                                                              | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[EventStream<models.ChatCompletionChunk>](../../models/.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## getChatCompletion

*[OpenAI Only]* Get a Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="getChatCompletion" method="get" path="/v1/chat/completions/{completion_id}" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.getChatCompletion({
    completionId: "<id>",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerGetChatCompletion } from "sudo/funcs/routerGetChatCompletion.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerGetChatCompletion(sudo, {
    completionId: "<id>",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("routerGetChatCompletion failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetChatCompletionRequest](../../models/operations/getchatcompletionrequest.md)                                                                                     | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ChatCompletion](../../models/chatcompletion.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## updateChatCompletion

*[OpenAI Only]* Update a Chat Completion with some metadata. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="updateChatCompletion" method="post" path="/v1/chat/completions/{completion_id}" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.updateChatCompletion({
    completionId: "<id>",
    requestBody: {
      metadata: {

      },
    },
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerUpdateChatCompletion } from "sudo/funcs/routerUpdateChatCompletion.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerUpdateChatCompletion(sudo, {
    completionId: "<id>",
    requestBody: {
      metadata: {
  
      },
    },
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("routerUpdateChatCompletion failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.UpdateChatCompletionRequest](../../models/operations/updatechatcompletionrequest.md)                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ChatCompletion](../../models/chatcompletion.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## deleteChatCompletion

*[OpenAI Only]* Delete a stored Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="deleteChatCompletion" method="delete" path="/v1/chat/completions/{completion_id}" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.deleteChatCompletion({
    completionId: "<id>",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerDeleteChatCompletion } from "sudo/funcs/routerDeleteChatCompletion.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerDeleteChatCompletion(sudo, {
    completionId: "<id>",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("routerDeleteChatCompletion failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.DeleteChatCompletionRequest](../../models/operations/deletechatcompletionrequest.md)                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ChatDeletionConfirmation](../../models/chatdeletionconfirmation.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## getChatCompletionMessages

*[OpenAI Only]* Get the array of messages for a saved Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="getChatCompletionMessages" method="get" path="/v1/chat/completions/{completion_id}/messages" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.getChatCompletionMessages({
    completionId: "<id>",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerGetChatCompletionMessages } from "sudo/funcs/routerGetChatCompletionMessages.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerGetChatCompletionMessages(sudo, {
    completionId: "<id>",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("routerGetChatCompletionMessages failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.GetChatCompletionMessagesRequest](../../models/operations/getchatcompletionmessagesrequest.md)                                                                     | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ChatMessageList](../../models/chatmessagelist.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |
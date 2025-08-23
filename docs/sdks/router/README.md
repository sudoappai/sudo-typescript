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
* [generateImage](#generateimage) - Generate Image

## listChatCompletions

*[OpenAI Only]* Get a list of saved Chat Completions. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="listChatCompletions" method="get" path="/v1/chat/completions" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
    const result = await sudo.router.listChatCompletions({ 
      limit: 10, 
      order: "desc" 
    });

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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerListChatCompletions(sudo, { 
    limit: 10, 
    order: "desc" 
  });
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.create({
    model: "gpt-4o",
    messages: [
      { role: "developer", content: "You are a helpful assistant." },
      { role: "user", content: "Hello! Give me a study plan to learn Python." }
    ],
    store: true,
    maxCompletionTokens: 150
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerCreate(sudo, {
    model: "claude-3-5-sonnet-20241022",
    messages: [
      { role: "developer", content: "You are a helpful assistant." },
      { role: "user", content: "What are the benefits of TypeScript?" }
    ],
    store: true,
    maxCompletionTokens: 200
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.createStreaming({
    model: "gpt-4o",
    messages: [
      { role: "developer", content: "You are a helpful assistant." },
      { role: "user", content: "Give me a list of all the planets in the solar system, with a few sentences about each." }
    ],
    store: true
  });

  for await (const event of result) {
    // Handle the event
    if (event.data?.choices?.[0]?.delta?.content) {
      process.stdout.write(event.data.choices[0].delta.content);
    }
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerCreateStreaming(sudo, {
    model: "claude-3-5-sonnet-20241022",
    messages: [
      { role: "developer", content: "You are a helpful assistant." },
      { role: "user", content: "Explain the concept of machine learning in simple terms." }
    ],
    store: true
  });
  if (res.ok) {
    const { value: result } = res;
    for await (const event of result) {
    // Handle the event
    if (event.data?.choices?.[0]?.delta?.content) {
      process.stdout.write(event.data.choices[0].delta.content);
    }
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.getChatCompletion({
    completionId: "chatcmpl-example123",
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerGetChatCompletion(sudo, {
    completionId: "chatcmpl-example123",
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.updateChatCompletion({
    completionId: "chatcmpl-example123",
    requestBody: {
      metadata: {
        project: "my-ai-app",
        version: "1.0.0"
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerUpdateChatCompletion(sudo, {
    completionId: "chatcmpl-example123",
    requestBody: {
      metadata: {
        project: "my-ai-app",
        version: "1.0.0"
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.deleteChatCompletion({
    completionId: "chatcmpl-example123",
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerDeleteChatCompletion(sudo, {
    completionId: "chatcmpl-example123",
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.getChatCompletionMessages({
    completionId: "chatcmpl-example123",
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
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerGetChatCompletionMessages(sudo, {
    completionId: "chatcmpl-example123",
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

## generateImage

Generate Image

### Example Usage

<!-- UsageSnippet language="typescript" operationID="generateImage" method="post" path="/v1/images/generations" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.generateImage({
    prompt: "A black fox leaping over a brown bear",
    model: "gpt-image-1",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { routerGenerateImage } from "sudo/funcs/routerGenerateImage.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await routerGenerateImage(sudo, {
    prompt: "A black fox leaping over a brown bear",
    model: "gpt-image-1",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("routerGenerateImage failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.ImageGenerationRequest](../../models/imagegenerationrequest.md)                                                                                                        | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.ImageGeneration](../../models/imagegeneration.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 400, 401                | application/json        |
| errors.ErrorResponse    | 500, 502                | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |
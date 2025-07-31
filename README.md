# sudo

Developer-friendly & type-safe Typescript SDK specifically catered to leverage *sudo* API.

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=sudo&utm_campaign=typescript"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>




<!-- Start Summary [summary] -->
## Summary


<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
- [sudo](#sudo)
  - [Summary](#summary)
  - [Table of Contents](#table-of-contents)
  - [SDK Installation](#sdk-installation)
    - [NPM](#npm)
    - [PNPM](#pnpm)
    - [Bun](#bun)
    - [Yarn](#yarn)
  - [Requirements](#requirements)
  - [SDK Example Usage](#sdk-example-usage)
    - [Example](#example)
  - [Authentication](#authentication)
    - [Per-Client Security Schemes](#per-client-security-schemes)
  - [Available Resources and Operations](#available-resources-and-operations)
    - [router](#router)
    - [system](#system)
  - [Standalone functions](#standalone-functions)
  - [Server-sent event streaming](#server-sent-event-streaming)
  - [Retries](#retries)
  - [Error Handling](#error-handling)
    - [Example](#example-1)
    - [Error Classes](#error-classes)
  - [Custom HTTP Client](#custom-http-client)
  - [Debugging](#debugging)
- [Development](#development)
  - [Maturity](#maturity)
  - [Contributions](#contributions)
    - [SDK Created by Speakeasy](#sdk-created-by-speakeasy)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

<!-- > [!TIP]
> To finish publishing your SDK to npm and others you must [run your first generation action](https://www.speakeasy.com/docs/github-setup#step-by-step-guide). -->


The SDK can be installed with either [npm](https://www.npmjs.com/), [pnpm](https://pnpm.io/), [bun](https://bun.sh/) or [yarn](https://classic.yarnpkg.com/en/) package managers.

### NPM

```bash
npm add sudo-ai
```

### PNPM

```bash
pnpm add sudo-ai
```

### Bun

```bash
bun add sudo-ai
```

### Yarn

```bash
yarn add sudo-ai zod

# Note that Yarn does not install peer dependencies automatically. You will need
# to install zod as shown above.
```

> [!NOTE]
> This package is published with CommonJS and ES Modules (ESM) support.
<!-- End SDK Installation [installation] -->

<!-- Start Requirements [requirements] -->
## Requirements

For supported JavaScript runtimes, please consult [RUNTIMES.md](RUNTIMES.md).
<!-- End Requirements [requirements] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

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
    maxCompletionTokens: 150
  });

  console.log(result);
}

run();

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security scheme globally:

| Name     | Type | Scheme      | Environment Variable |
| -------- | ---- | ----------- | -------------------- |
| `apiKey` | http | HTTP Bearer | `SUDO_API_KEY`       |

To authenticate with the API the `apiKey` parameter must be set when initializing the SDK client instance. For example:
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.create({
    model: "claude-3-5-sonnet-20241022",
    messages: [
      { role: "developer", content: "You are a helpful assistant." },
      { role: "user", content: "What are the benefits of TypeScript?" }
    ],
    store: true,
    maxCompletionTokens: 200
  });

  console.log(result);
}

run();

```
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [router](docs/sdks/router/README.md)

* [listChatCompletions](docs/sdks/router/README.md#listchatcompletions) - *[OpenAI Only]* Get a list of saved Chat Completions. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [create](docs/sdks/router/README.md#create) - Create a model response for the given string of prompts.
* [createStreaming](docs/sdks/router/README.md#createstreaming) - Create a streaming model response for the given string of prompts using server-sent events.
* [getChatCompletion](docs/sdks/router/README.md#getchatcompletion) - *[OpenAI Only]* Get a Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [updateChatCompletion](docs/sdks/router/README.md#updatechatcompletion) - *[OpenAI Only]* Update a Chat Completion with some metadata. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [deleteChatCompletion](docs/sdks/router/README.md#deletechatcompletion) - *[OpenAI Only]* Delete a stored Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
* [getChatCompletionMessages](docs/sdks/router/README.md#getchatcompletionmessages) - *[OpenAI Only]* Get the array of messages for a saved Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.


### [system](docs/sdks/system/README.md)

* [healthCheck](docs/sdks/system/README.md#healthcheck) - Check if the Sudo API and backend infrastructure are health and ready to accept connections.
* [getSupportedModels](docs/sdks/system/README.md#getsupportedmodels) - Get a list of all AI models supported in the Sudo API.

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Standalone functions [standalone-funcs] -->
## Standalone functions

All the methods listed above are available as standalone functions. These
functions are ideal for use in applications running in the browser, serverless
runtimes or other environments where application bundle size is a primary
concern. When using a bundler to build your application, all unused
functionality will be either excluded from the final bundle or tree-shaken away.

To read more about standalone functions, check [FUNCTIONS.md](./FUNCTIONS.md).

<details>

<summary>Available standalone functions</summary>

- [`routerCreate`](docs/sdks/router/README.md#create) - Create a model response for the given string of prompts.
- [`routerCreateStreaming`](docs/sdks/router/README.md#createstreaming) - Create a streaming model response for the given string of prompts using server-sent events.
- [`routerDeleteChatCompletion`](docs/sdks/router/README.md#deletechatcompletion) - *[OpenAI Only]* Delete a stored Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
- [`routerGetChatCompletion`](docs/sdks/router/README.md#getchatcompletion) - *[OpenAI Only]* Get a Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
- [`routerGetChatCompletionMessages`](docs/sdks/router/README.md#getchatcompletionmessages) - *[OpenAI Only]* Get the array of messages for a saved Chat Completion. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
- [`routerListChatCompletions`](docs/sdks/router/README.md#listchatcompletions) - *[OpenAI Only]* Get a list of saved Chat Completions. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
- [`routerUpdateChatCompletion`](docs/sdks/router/README.md#updatechatcompletion) - *[OpenAI Only]* Update a Chat Completion with some metadata. Only Chat Completions that have been stored with the `store` parameter set to true will be returned.
- [`systemGetSupportedModels`](docs/sdks/system/README.md#getsupportedmodels) - Get a list of all AI models supported in the Sudo API.
- [`systemHealthCheck`](docs/sdks/system/README.md#healthcheck) - Check if the Sudo API and backend infrastructure are health and ready to accept connections.

</details>
<!-- End Standalone functions [standalone-funcs] -->

<!-- Start Server-sent event streaming [eventstream] -->
## Server-sent event streaming

[Server-sent events][mdn-sse] are used to stream content from certain
operations. These operations will expose the stream as an async iterable that
can be consumed using a [`for await...of`][mdn-for-await-of] loop. The loop will
terminate when the server no longer has any events to send and closes the
underlying connection.

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

[mdn-sse]: https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events
[mdn-for-await-of]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for-await...of
<!-- End Server-sent event streaming [eventstream] -->

<!-- Start Retries [retries] -->
## Retries

Some of the endpoints in this SDK support retries.  If you use the SDK without any configuration, it will fall back to the default retry strategy provided by the API.  However, the default retry strategy can be overridden on a per-operation basis, or across the entire SDK.

To change the default retry strategy for a single API call, simply provide a retryConfig object to the call:
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
      { role: "user", content: "Explain quantum computing in simple terms." }
    ],
    maxCompletionTokens: 300
  }, {
    retries: {
      strategy: "backoff",
      backoff: {
        initialInterval: 1,
        maxInterval: 50,
        exponent: 1.1,
        maxElapsedTime: 100,
      },
      retryConnectionErrors: false,
    },
  });

  console.log(result);
}

run();

```

If you'd like to override the default retry strategy for all operations that support retries, you can provide a retryConfig at SDK initialization:
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://sudoapp.dev/api",
  retryConfig: {
    strategy: "backoff",
    backoff: {
      initialInterval: 1,
      maxInterval: 50,
      exponent: 1.1,
      maxElapsedTime: 100,
    },
    retryConnectionErrors: false,
  },
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.router.create({
    model: "claude-3-5-sonnet-20241022",
    messages: [
      { role: "developer", content: "You are a helpful assistant." },
      { role: "user", content: "Write a short poem about coding." }
    ],
    maxCompletionTokens: 200
  });

  console.log(result);
}

run();

```
<!-- End Retries [retries] -->

<!-- Start Error Handling [errors] -->
## Error Handling

[`SudoError`](./src/models/errors/sudoerror.ts) is the base class for all HTTP error responses. It has the following properties:

| Property            | Type       | Description                                                                             |
| ------------------- | ---------- | --------------------------------------------------------------------------------------- |
| `error.message`     | `string`   | Error message                                                                           |
| `error.statusCode`  | `number`   | HTTP response status code eg `404`                                                      |
| `error.headers`     | `Headers`  | HTTP response headers                                                                   |
| `error.body`        | `string`   | HTTP body. Can be empty string if no body is returned.                                  |
| `error.rawResponse` | `Response` | Raw HTTP response                                                                       |
| `error.data$`       |            | Optional. Some errors may contain structured data. [See Error Classes](#error-classes). |

### Example
```typescript
import { Sudo } from "sudo";
import * as errors from "sudo/models/errors";

const sudo = new Sudo({
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  try {
    const result = await sudo.router.create({
      model: "gpt-4o",
      messages: [
        { role: "developer", content: "You are a helpful assistant." },
        { role: "user", content: "Explain the benefits of error handling." }
      ],
      maxCompletionTokens: 250
    });

    console.log(result);
  } catch (error) {
    // The base class for HTTP error responses
    if (error instanceof errors.SudoError) {
      console.log(error.message);
      console.log(error.statusCode);
      console.log(error.body);
      console.log(error.headers);

      // Depending on the method different errors may be thrown
      if (error instanceof errors.ErrorResponse) {
        console.log(error.data$.error); // models.ErrorDetail
      }
    }
  }
}

run();

```

### Error Classes
**Primary errors:**
* [`SudoError`](./src/models/errors/sudoerror.ts): The base class for HTTP error responses.
  * [`ErrorResponse`](./src/models/errors/errorresponse.ts): *

<details><summary>Less common errors (6)</summary>

<br />

**Network errors:**
* [`ConnectionError`](./src/models/errors/httpclienterrors.ts): HTTP client was unable to make a request to a server.
* [`RequestTimeoutError`](./src/models/errors/httpclienterrors.ts): HTTP request timed out due to an AbortSignal signal.
* [`RequestAbortedError`](./src/models/errors/httpclienterrors.ts): HTTP request was aborted by the client.
* [`InvalidRequestError`](./src/models/errors/httpclienterrors.ts): Any input used to create a request is invalid.
* [`UnexpectedClientError`](./src/models/errors/httpclienterrors.ts): Unrecognised or unexpected error.


**Inherit from [`SudoError`](./src/models/errors/sudoerror.ts)**:
* [`ResponseValidationError`](./src/models/errors/responsevalidationerror.ts): Type mismatch between the data returned from the server and the structure expected by the SDK. See `error.rawValue` for the raw value and `error.pretty()` for a nicely formatted multi-line string.

</details>

\* Check [the method documentation](#available-resources-and-operations) to see if the error is applicable.
<!-- End Error Handling [errors] -->

<!-- Start Custom HTTP Client [http-client] -->
## Custom HTTP Client

The TypeScript SDK makes API calls using an `HTTPClient` that wraps the native
[Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API). This
client is a thin wrapper around `fetch` and provides the ability to attach hooks
around the request lifecycle that can be used to modify the request or handle
errors and response.

The `HTTPClient` constructor takes an optional `fetcher` argument that can be
used to integrate a third-party HTTP client or when writing tests to mock out
the HTTP client and feed in fixtures.

The following example shows how to use the `"beforeRequest"` hook to to add a
custom header and a timeout to requests and how to use the `"requestError"` hook
to log errors:

```typescript
import { Sudo } from "sudo";
import { HTTPClient } from "sudo/lib/http";

const httpClient = new HTTPClient({
  // fetcher takes a function that has the same signature as native `fetch`.
  fetcher: (request) => {
    return fetch(request);
  }
});

httpClient.addHook("beforeRequest", (request) => {
  const nextRequest = new Request(request, {
    signal: request.signal || AbortSignal.timeout(5000)
  });

  nextRequest.headers.set("x-custom-header", "custom value");

  return nextRequest;
});

httpClient.addHook("requestError", (error, request) => {
  console.group("Request Error");
  console.log("Reason:", `${error}`);
  console.log("Endpoint:", `${request.method} ${request.url}`);
  console.groupEnd();
});

const sdk = new Sudo({ 
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
  httpClient 
});
```
<!-- End Custom HTTP Client [http-client] -->

<!-- Start Debugging [debug] -->
## Debugging

You can setup your SDK to emit debug logs for SDK requests and responses.

You can pass a logger that matches `console`'s interface as an SDK option.

> [!WARNING]
> Beware that debug logging will reveal secrets, like API tokens in headers, in log messages printed to a console or files. It's recommended to use this feature only during local development and not in production.

```typescript
import { Sudo } from "sudo";

const sdk = new Sudo({ 
  serverURL: "https://sudoapp.dev/api",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
  debugLogger: console 
});
```

You can also enable a default debug logger by setting an environment variable `SUDO_DEBUG` to true.
<!-- End Debugging [debug] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=sudo&utm_campaign=typescript)

# System
(*system*)

## Overview

### Available Operations

* [healthCheck](#healthcheck) - Check if the Sudo API and backend infrastructure are health and ready to accept connections.
* [getSupportedModels](#getsupportedmodels) - Get a list of all AI models supported in the Sudo API.

## healthCheck

Check if the Sudo API and backend infrastructure are health and ready to accept connections.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="healthCheck" method="get" path="/system/health" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.system.healthCheck();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { systemHealthCheck } from "sudo/funcs/systemHealthCheck.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await systemHealthCheck(sudo);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("systemHealthCheck failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[any](../../models/.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |

## getSupportedModels

Get a list of all AI models supported in the Sudo API.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="getSupportedModels" method="get" path="/v1/models" -->
```typescript
import { Sudo } from "sudo";

const sudo = new Sudo({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const result = await sudo.system.getSupportedModels();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SudoCore } from "sudo/core.js";
import { systemGetSupportedModels } from "sudo/funcs/systemGetSupportedModels.js";

// Use `SudoCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sudo = new SudoCore({
  serverURL: "https://api.example.com",
  apiKey: process.env["SUDO_API_KEY"] ?? "",
});

async function run() {
  const res = await systemGetSupportedModels(sudo);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("systemGetSupportedModels failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.SupportedModelsList](../../models/supportedmodelslist.md)\>**

### Errors

| Error Type              | Status Code             | Content Type            |
| ----------------------- | ----------------------- | ----------------------- |
| errors.ErrorResponse    | 401                     | application/json        |
| errors.ErrorResponse    | 500                     | application/json        |
| errors.SudoDefaultError | 4XX, 5XX                | \*/\*                   |
<!-- Start SDK Example Usage [usage] -->
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
<!-- End SDK Example Usage [usage] -->
# ChatCompletionRequestJsonReasoningEffort

o1 models only. Constrains effort on reasoning for reasoning models. Currently supported values are low, medium, and high. Reducing reasoning effort can result in faster responses and fewer tokens used on reasoning in a response.

## Example Usage

```typescript
import { ChatCompletionRequestJsonReasoningEffort } from "sudo/models";

let value: ChatCompletionRequestJsonReasoningEffort = "high";
```

## Values

```typescript
"low" | "medium" | "high"
```
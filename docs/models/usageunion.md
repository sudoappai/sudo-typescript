# UsageUnion

Usage statistics for the completion request. Only present in the final chunk when stream_options.include_usage is set.


## Supported Types

### `models.ChatCompletionChunkUsage`

```typescript
const value: models.ChatCompletionChunkUsage = {
  completionTokens: 540444,
  promptTokens: 638217,
  totalTokens: 56495,
};
```


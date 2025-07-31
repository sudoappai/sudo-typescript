# SUDO TypeScript SDK Integration Tests

This directory contains comprehensive integration tests for the SUDO TypeScript SDK. The tests mirror the functionality validation done in the Python SDK tests, ensuring both SDKs work identically.

## Overview

The integration test suite validates all major SDK functionality including:

- **System Methods**: Health checks and model listing
- **Basic Chat Completions**: Testing with multiple AI models
- **Streaming Completions**: Server-sent events streaming
- **Tool/Function Calling**: AI function calling capabilities
- **Image Input**: Vision model capabilities
- **Structured Output**: JSON schema-based responses
- **Reasoning Models**: Advanced reasoning capabilities
- **Stored Completions**: Full CRUD operations
- **Error Handling**: Proper error scenarios

## Prerequisites

1. **API Key**: You need a valid SUDO API key with credits
2. **Dependencies**: Install test dependencies with `npm install`
3. **Environment**: Set up your environment variable

## Setup

1. **Install dependencies**:
   ```bash
   npm install
   ```

2. **Set your API key**:
   ```bash
   export SUDO_API_KEY="your-api-key-here"
   ```

3. **Build the SDK** (if needed):
   ```bash
   npm run build
   ```

## Running Tests

### Run all integration tests:
```bash
npm run test:integration
```

### Run all tests (if other test files exist):
```bash
npm run test
```

### Run tests in watch mode:
```bash
npm run test:watch
```

### Run with verbose output:
```bash
npx vitest run tests/integration.test.ts --reporter=verbose
```

## Test Structure

### Test Models
The tests run against multiple AI models to ensure broad compatibility:
- `gpt-4o` - OpenAI's advanced model with vision and tool support
- `claude-3-5-sonnet-20241022` - Anthropic's model with vision and tool support  
- `deepseek-chat` - DeepSeek's model (text only)
- `grok-3` - xAI's Grok model (text only)
- `gemini-2.0-flash` - Google's Gemini model with vision and tool support

### Test Categories

#### 1. System Methods (`describe('System Methods')`)
- **Health Check**: Validates API connectivity
- **Get Models**: Tests model listing endpoint

#### 2. Basic Chat Completions (`describe('Basic Chat Completions')`)
- Tests basic chat completion with all supported models
- Validates response structure, token usage, and model-specific fields
- Includes parametrized tests for each model

#### 3. Streaming Completions (`describe('Streaming Completions')`)
- Tests server-sent events streaming
- Validates chunk structure and content aggregation
- Tests with all supported models

#### 4. Tool Calling (`describe('Tool Calling')`)
- Tests function calling capabilities
- Only runs with tool-supporting models
- Validates tool call structure and function arguments

#### 5. Image Input (`describe('Image Input')`)
- Tests vision capabilities with image URLs
- Uses a test image from Wikimedia
- Validates multimodal input handling

#### 6. Structured Output (`describe('Structured Output')`)
- Tests JSON schema-based responses
- Validates strict schema adherence
- Tests complex nested object structures

#### 7. Reasoning Models (`describe('Reasoning Models')`)
- Tests advanced reasoning capabilities
- Validates reasoning token usage
- Tests reasoning effort parameters

#### 8. Stored Completions (`describe('Stored Completions')`)
- Full CRUD operation testing
- Create, read, update, delete workflows
- Tests metadata handling and listing

#### 9. Error Handling (`describe('Error Handling')`)
- Bad request scenarios
- Invalid model handling
- Not found error cases

## Test Configuration

### Timeouts
- Default test timeout: 60 seconds
- Model-specific tests: 30 seconds
- CRUD operations: 60 seconds

### Retry Logic
- CRUD operations include retry logic with exponential backoff
- Maximum 6 attempts with 2-second delays
- Handles eventual consistency issues

### Concurrency
- Tests run sequentially to avoid API rate limits
- Process isolation using Vitest forks

## Expected Behavior

### Successful Tests
All tests should pass when:
- Valid API key is provided
- API service is available
- Models are accessible
- Sufficient API credits available

### Skipped Tests
Tests may be skipped when:
- Models are temporarily unavailable
- Specific features not supported by certain models
- Network connectivity issues

### Error Scenarios
The error handling tests intentionally trigger failures to validate:
- Proper error propagation
- Meaningful error messages
- Graceful degradation

## Troubleshooting

### Common Issues

1. **"SUDO_API_KEY environment variable not set"**
   - Ensure you've exported your API key
   - Check the key is valid and has credits

2. **Model not available errors**
   - Some models may be temporarily unavailable
   - Tests will skip unavailable models automatically

3. **Timeout errors**
   - API calls may be slow during high usage
   - Increase timeout in `vitest.config.ts` if needed

4. **Rate limiting**
   - Tests run sequentially to minimize rate limiting
   - Add delays between test runs if needed

### Debug Mode

For detailed debugging, run with debug output:
```bash
DEBUG=sudo:* npm run test:integration
```

## Contributing

When adding new tests:

1. Follow the existing test structure and naming conventions
2. Include proper error handling and model availability checks
3. Add appropriate timeouts for long-running operations
4. Document any new test scenarios in this README
5. Ensure tests are idempotent and don't leave test data behind

## Comparison with Python Tests

This TypeScript test suite mirrors the Python test suite (`sudo-python/tests/test_integration.py`) to ensure both SDKs provide identical functionality. Key differences:

- TypeScript uses Vitest instead of pytest
- Async/await syntax instead of synchronous calls
- TypeScript type checking and interfaces
- Different import and module syntax

The test logic, assertions, and expected behaviors remain identical between both implementations. 
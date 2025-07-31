import { describe, test, expect } from 'vitest';
import { Sudo } from '../src/index.js';
import * as models from '../src/models/index.js';

describe('SDK Smoke Tests', () => {
  test('can import Sudo SDK', () => {
    expect(Sudo).toBeDefined();
    expect(typeof Sudo).toBe('function');
  });

  test('can import models', () => {
    expect(models).toBeDefined();
    expect(typeof models).toBe('object');
  });

  test('can instantiate Sudo client', () => {
    const client = new Sudo({
      serverURL: 'https://sudoapp.dev/api',
      apiKey: 'test-key'
    });
    
    expect(client).toBeDefined();
    expect(client.router).toBeDefined();
    expect(client.system).toBeDefined();
  });

  test('router has expected methods', () => {
    const client = new Sudo({
      serverURL: 'https://sudoapp.dev/api',
      apiKey: 'test-key'
    });
    
    expect(typeof client.router.create).toBe('function');
    expect(typeof client.router.createStreaming).toBe('function');
    expect(typeof client.router.getChatCompletion).toBe('function');
    expect(typeof client.router.updateChatCompletion).toBe('function');
    expect(typeof client.router.deleteChatCompletion).toBe('function');
    expect(typeof client.router.getChatCompletionMessages).toBe('function');
    expect(typeof client.router.listChatCompletions).toBe('function');
  });

  test('system has expected methods', () => {
    const client = new Sudo({
      serverURL: 'https://sudoapp.dev/api',
      apiKey: 'test-key'
    });
    
    expect(typeof client.system.healthCheck).toBe('function');
    expect(typeof client.system.getSupportedModels).toBe('function');
  });
}); 
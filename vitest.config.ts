import { defineConfig } from 'vitest/config';

export default defineConfig({
  test: {
    globals: true,
    environment: 'node',
    testTimeout: 120000, // 120 seconds default timeout
    hookTimeout: 10000, // 10 seconds for setup/teardown
    teardownTimeout: 10000,
    maxConcurrency: 1, // Run tests sequentially to avoid API rate limits
    pool: 'forks', // Use process isolation
    reporters: ['verbose'],
    env: {
      NODE_ENV: 'test'
    }
  },
  esbuild: {
    target: 'node18'
  }
}); 
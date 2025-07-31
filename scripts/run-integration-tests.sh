#!/bin/bash

# SUDO TypeScript SDK Integration Test Runner
# This script sets up and runs the comprehensive integration tests

set -e  # Exit on any error

echo "🚀 SUDO TypeScript SDK Integration Tests"
echo "========================================"

# Check if API key is set
if [ -z "$SUDO_API_KEY" ]; then
    echo "❌ Error: SUDO_API_KEY environment variable is not set"
    echo "Please set your API key:"
    echo "  export SUDO_API_KEY=\"your-api-key-here\""
    exit 1
fi

echo "✅ API key found"

# Check if dependencies are installed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
else
    echo "✅ Dependencies found"
fi

# Build the SDK if needed
echo "🔨 Building SDK..."
npm run build

# Run the integration tests
echo "🧪 Running integration tests..."
echo "This may take several minutes as we test multiple AI models..."
echo ""

# Run tests with verbose output
npm run test:integration

echo ""
echo "🎉 Integration tests completed!"
echo "If any tests were skipped, it's likely due to temporary model unavailability." 
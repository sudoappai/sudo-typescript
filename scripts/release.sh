#!/bin/bash

# Simple release script for manual publishing
set -e

echo "🚀 Starting release process..."

# Check if we're on main branch
BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$BRANCH" != "main" ]; then
  echo "❌ Please run from main branch"
  exit 1
fi

# Check for uncommitted changes
if [ -n "$(git status --porcelain)" ]; then
  echo "❌ Please commit all changes before releasing"
  exit 1
fi

# Run checks
echo "🔍 Running linting..."
npm run lint

echo "🔨 Building..."
npm run build

# Get version type from user
echo "📦 Select version bump:"
echo "1) patch (0.0.2 -> 0.0.3)"
echo "2) minor (0.0.2 -> 0.1.0)"  
echo "3) major (0.0.2 -> 1.0.0)"
echo "4) custom"

read -p "Choose (1-4): " choice

case $choice in
  1) VERSION_TYPE="patch" ;;
  2) VERSION_TYPE="minor" ;;
  3) VERSION_TYPE="major" ;;
  4) 
    read -p "Enter custom version: " CUSTOM_VERSION
    VERSION_TYPE="--no-git-tag-version"
    ;;
  *) echo "❌ Invalid choice"; exit 1 ;;
esac

# Update version
if [ "$choice" = "4" ]; then
  npm version $CUSTOM_VERSION --no-git-tag-version
  NEW_VERSION=$CUSTOM_VERSION
else
  NEW_VERSION=$(npm version $VERSION_TYPE --no-git-tag-version)
fi

# Strip 'v' prefix if present (npm version returns with 'v' prefix)
NEW_VERSION=${NEW_VERSION#v}

echo "📝 Updated to version $NEW_VERSION"

# Commit version bump
git add package.json package-lock.json
git commit -m "Bump version to $NEW_VERSION"

# Create tag
git tag "v$NEW_VERSION"

# Publish to NPM
echo "📦 Publishing to NPM..."
npm publish

# Optional: Publish to JSR
read -p "🦕 Also publish to JSR? (y/n): " publish_jsr
if [ "$publish_jsr" = "y" ]; then
  echo "📦 Publishing to JSR..."
  jsr publish
fi

# Push changes
echo "🔄 Pushing to git..."
git push origin main --tags

# Create GitHub Release (if gh CLI is available)
if command -v gh &> /dev/null; then
  echo "📝 Creating GitHub Release..."
  read -p "Enter release notes (or press Enter to skip): " RELEASE_NOTES
  if [ -n "$RELEASE_NOTES" ]; then
    gh release create "v$NEW_VERSION" --title "v$NEW_VERSION" --notes "$RELEASE_NOTES"
  else
    gh release create "v$NEW_VERSION" --title "v$NEW_VERSION" --generate-notes
  fi
else
  echo "⚠️  GitHub CLI (gh) not installed. Skipping GitHub Release creation."
  echo "   Install with: brew install gh"
  echo "   Or create release manually at: https://github.com/sudoappai/sudo-typescript/releases/new"
fi

echo "✅ Release complete! Published version $NEW_VERSION" 
#!/bin/bash
# Spec Kit Installation Script for OpenClaw

set -e

echo "📋 Installing Spec Kit (Spec-Driven Development toolkit)..."

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "⏳ Installing uv (Python package manager)..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Install Spec Kit
echo "⏳ Installing specify-cli..."
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git

# Verify installation
if command -v specify &> /dev/null; then
    echo "✅ Spec Kit installed successfully!"
    echo ""
    echo "📝 Next steps:"
    echo "   1. Navigate to your project: cd /home/moltbot/clawd"
    echo "   2. Initialize: specify init . --ai claude"
    echo "   3. Use /speckit.* commands in your AI agent"
    echo ""
    echo "💡 Usage example:"
    echo "   /speckit.constitution Create principles for code quality"
    echo "   /speckit.specify Build a Kanban board..."
else
    echo "❌ Installation failed. Please check uv installation."
    exit 1
fi

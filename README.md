# OpenClaw Skill - Spec Kit

Spec-Driven Development toolkit for OpenClaw.

## What is this?

Spec Kit helps AI assistants build high-quality software through structured development workflow.

## Installation

```bash
# Install Spec Kit
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git

# Or use the install script
cd /path/to/openclaw-skill-spec-kit
chmod +x install.sh
./install.sh
```

## What it provides

After installation, your AI agent can use these commands:

| Command | Description |
|---------|-------------|
| `/speckit.constitution` | Create project principles (code quality, testing, etc.) |
| `/speckit.specify` | Define what to build (requirements) |
| `/speckit.plan` | Create technical implementation plan |
| `/speckit.tasks` | Generate actionable task list |
| `/speckit.implement` | Execute implementation |

## Usage

```bash
# Initialize project
cd your-project
specify init . --ai claude

# Then use slash commands in your AI coding agent
/speckit.constitution Create principles for code quality and testing
/speckit.specify Build a Kanban board with drag-and-drop
/speckit.plan Use vanilla HTML/CSS/JS with localStorage
/speckit.tasks
/speckit.implement
```

## License

MIT

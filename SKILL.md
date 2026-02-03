---
name: spec-kit
description: Spec-Driven Development toolkit from GitHub - for structured AI-assisted development.
homepage: https://github.com/github/spec-kit
metadata:
  openclaw:
    emoji: "📋"
    requires:
      bins: ["uv", "specify"]
---

# Spec Kit - Spec-Driven Development

Spec Kit is a toolkit for Spec-Driven Development (SDD), where specifications become executable and directly generate working implementations.

## Installation

```bash
# Install uv (Python package manager)
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install Spec Kit
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git

# Verify installation
which specify
```

## Project Initialization

```bash
# Initialize in current directory
cd /your/project
specify init . --ai claude
# or
specify init --here --ai claude
```

## Available Slash Commands

After `specify init`, your AI coding agent has these commands:

### Core Commands

| Command | Description |
|---------|-------------|
| `/speckit.constitution` | Create/update project principles (code quality, testing, UX, performance) |
| `/speckit.specify` | Define what to build (requirements & user stories) |
| `/speckit.plan` | Create technical implementation plan (tech stack, architecture) |
| `/speckit.tasks` | Generate actionable task list from implementation plan |
| `/speckit.implement` | Execute all tasks to build the feature |

### Optional Commands

| Command | Description |
|---------|-------------|
| `/speckit.clarify` | Structured clarification of underspecified requirements |
| `/speckit.analyze` | Cross-artifact consistency & coverage analysis |
| `/speckit.checklist` | Generate quality checklists |

## Workflow

### Phase 1: Establish Principles
```
/speckit.constitution Create principles focused on code quality, testing standards, user experience consistency, and performance requirements.
```
Creates/updates `.specify/memory/constitution.md`

### Phase 2: Create Specifications
```
/speckit.specify Build a Kanban project management page with TODO/PROCESSING/DONE columns. Tasks can be dragged between columns. Each task has title, description, priority (high/medium/low), due date, assignee (human/shrimp). Subtasks supported.
```
Creates `specs/<feature-name>/spec.md`

### Phase 3: Clarify Requirements
```
/speckit.clarify
# Or free-form clarification:
What happens when a task is dragged to DONE?
```

### Phase 4: Create Technical Plan
```
/speckit.plan Use vanilla HTML/CSS/JavaScript with localStorage for persistence. Single HTML file, no build step required.
```
Creates `specs/<feature-name>/plan.md`

### Phase 5: Validate Plan
```
/speckit.analyze
```

### Phase 6: Generate Tasks
```
/speckit.tasks
```
Creates `specs/<feature-name>/tasks.md`

### Phase 7: Implement
```
/speckit.implement
```

## Directory Structure

After initialization:
```
project/
├── .specify/
│   ├── memory/
│   │   └── constitution.md
│   ├── scripts/
│   │   ├── check-prerequisites.sh
│   │   ├── common.sh
│   │   ├── create-new-feature.sh
│   │   ├── setup-plan.sh
│   │   └── update-claude-md.sh
│   ├── specs/
│   │   └── <feature-name>/
│   │       ├── spec.md
│   │       ├── plan.md
│   │       ├── data-model.md (optional)
│   │       ├── contracts/ (optional)
│   │       └── tasks.md
│   └── templates/
│       ├── CLAUDE-template.md
│       ├── plan-template.md
│       ├── spec-template.md
│       └── tasks-template.md
├── CLAUDE.md (auto-generated)
└── templates/
```

## Usage Examples

### Example 1: New Feature from Scratch

```bash
# Initialize project
cd my-project
specify init . --ai claude

# In AI agent:
/speckit.constitution Focus on code quality, comprehensive tests, and accessibility.

/speckit.specify Build a task management system with projects, tasks, and comments. Tasks have status, priority, assignee, and due date.

/speckit.plan Use React with TypeScript, SQLite for data, REST API backend.

/speckit.tasks

/speckit.implement
```

### Example 2: Adding New Feature

```bash
# In AI agent working on existing project:
/speckit.specify Add dark mode toggle to the application.

/speckit.plan Use CSS variables for theming. Store preference in localStorage.

/speckit.tasks

/speckit.implement
```

## Tips

- **Be explicit** in `/speckit.specify` about what and why, not the tech stack
- **Use `/speckit.clarify`** before planning to reduce rework
- **Run `/speckit.analyze`** after tasks to validate completeness
- **Constitution** guides all subsequent decisions - make it comprehensive

## Supported AI Agents

Claude Code, Cursor, Gemini CLI, Codex, Windsurf, Roo Code, and 20+ more.

## When to Use

- ✅ New projects (0-to-1 development)
- ✅ Complex features requiring upfront planning
- ✅ Team projects needing documentation
- ✅ AI-assisted development with structured workflow

## Common Issues

### "command not found: specify"
```bash
# Add to PATH
export PATH="$HOME/.local/bin:$PATH"
# Or reinstall
uv tool install specify-cli --force --from git+https://github.com/github/spec-kit.git
```

### AI agent doesn't recognize /speckit.* commands
```bash
# Make sure you're in the initialized project directory
cd your-project
# Reinitialize if needed
specify init . --force --ai claude
```

### Python version error
```bash
# Spec Kit requires Python 3.11+
python --version  # Should be 3.11 or higher
```

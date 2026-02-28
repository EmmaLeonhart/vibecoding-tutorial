# 2. Essential Tools and Setup

## The Right Tools Matter

Vibe coding requires specific tools that support an agent-based workflow. Using a chat interface to generate code snippets is not the same thing. Here's what you need.

## AI Coding Agents

You should be using an **AI agent** — not a chat window. The difference is critical:

- **Chat interfaces** (ChatGPT web, Claude.ai) generate text that you copy-paste into files. You lose context between messages, and the AI can't see your actual project.
- **AI agents** (Claude Code, OpenAI Codex, Gemini CLI) work directly in your codebase. They can read your files, make edits, run commands, and maintain context about your entire project.

### Recommended Agents

| Agent | How to Get It |
|-------|--------------|
| **Claude Code** | `npm install -g @anthropic-ai/claude-code` |
| **OpenAI Codex** | Available through OpenAI's platform |
| **Gemini CLI** | Google's command-line AI agent |

Pick one and learn it well. The specific agent matters less than using an agent at all.

## cleanvibe — Project Scaffolding

[cleanvibe](https://github.com/Emma-Leonhart/cleanvibe) is a Python library designed specifically for vibe coding workflows. It scaffolds new projects with opinionated documentation and proper git setup.

### Installation

```bash
pip install cleanvibe
```

### Creating a New Project

```bash
cleanvibe new my-project
```

This creates a directory with:
- A git repository initialized
- Documentation scaffolding
- Everything you need to start vibe coding with structure

### Cloning an Existing Project

```bash
cleanvibe clone https://github.com/user/repo
```

This clones a repo and injects any missing scaffolding.

## Git — Version Control

Git is **non-negotiable** for vibe coding. Every change the AI makes should be tracked in a commit. This gives you:

- A complete history of what changed and when
- The ability to undo any change that went wrong
- Visual diffs to review exactly what the AI modified

### Installation

- **Windows:** Download from [git-scm.com](https://git-scm.com) or use `winget install Git.Git`
- **Mac:** `brew install git` or install Xcode Command Line Tools
- **Linux:** `sudo apt install git` (or your distro's package manager)

## GitHub Desktop — Visual Diffs

GitHub Desktop is extremely useful for vibe coding because it allows you to **visually compare** changes made by the AI agent. Instead of reading raw diff output in a terminal, you can see exactly which lines were added, modified, or removed in a clean visual interface.

### Why This Matters

When an AI agent makes changes to your code, you need to review those changes. GitHub Desktop makes this easy:

1. See all modified files at a glance
2. View line-by-line diffs with color coding
3. Choose which changes to commit and which to discard
4. Understand the scope of what the AI changed

### Installation

Download from [desktop.github.com](https://desktop.github.com)

## Python (for cleanvibe)

cleanvibe requires Python 3.10 or later.

- **Windows:** Download from [python.org](https://python.org) — make sure to check "Add Python to PATH"
- **Mac:** `brew install python`
- **Linux:** Usually pre-installed; otherwise `sudo apt install python3`

## Putting It All Together

A typical vibe coding session looks like this:

1. **Start a project** with `cleanvibe new my-project`
2. **Launch your AI agent** (e.g., `claude` in the project directory)
3. **Give the agent a task** — describe what you want to build
4. **Review changes** in GitHub Desktop — look at the diffs
5. **Commit with a good message** — let the AI write the commit message for you
6. **Repeat** — build iteratively, reviewing and committing as you go

---

**Next:** [3. Documentation-First Development](03-documentation-first.md)

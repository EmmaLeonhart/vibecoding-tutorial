# Vibe Coding Tutorial

**Website · [vibecoding.emmaleonhart.com](https://vibecoding.emmaleonhart.com)**

A practical guide to vibe coding — the discipline of building software through AI collaboration with intention, documentation, and quality practices.

---

## Brand New? Start Here

If you've never coded before or need help setting up your tools, follow the beginner guide. It walks you through everything step by step — from creating a GitHub account to running your first AI coding session.

### [>>> Complete Beginner Setup Guide <<<](docs/00-beginner-setup.md)

The guide covers:
1. Creating a GitHub account
2. Installing GitHub Desktop
3. Cloning this repository
4. Installing VS Code, Node.js, and Python
5. Running the one-click setup script (`setup.bat`)
6. Getting your API key and launching Claude Code
7. Your first vibe coding session

When you're ready for project ideas, check out **[Project Ideas for Beginners](docs/08-project-ideas.md)** — 15 starter projects with exact instructions for what to tell Claude.

---

## What Is Vibe Coding?

Vibe coding is **not** just asking ChatGPT to write some code for you.

Vibe coding is a serious discipline with its own best practices. It means collaborating with AI agents to build real software while maintaining a clear understanding of what your program does, keeping everything well-documented, and using proper version control to track every change.

## Who Is This For?

- **Complete beginners** who want to start building software through AI collaboration
- **Experienced developers** who want to adopt AI-assisted workflows responsibly
- **Anyone curious** about what vibe coding actually means beyond the buzzword

## Getting Started

### Prerequisites

- Python 3.10+ installed
- Git installed
- An AI coding agent (Claude Code, OpenAI Codex, Gemini CLI, etc.)
- GitHub Desktop (recommended for visual diff comparison)

### Quick Start with cleanvibe

```bash
pip install cleanvibe
cleanvibe new my-project
```

This creates a new project directory with a git repository, documentation scaffolding, and everything you need to start vibe coding properly.

## Tutorial Contents

### [0. Complete Beginner Setup Guide](docs/00-beginner-setup.md)
Everything you need to go from zero to your first AI coding session — accounts, installs, and your first project.

### [1. What Vibe Coding Actually Is](docs/01-what-is-vibecoding.md)
Understanding the discipline beyond the buzzword — why it requires intentionality and programming awareness.

### [2. Essential Tools and Setup](docs/02-tools-and-setup.md)
Setting up your environment with cleanvibe, git, an AI agent, and GitHub Desktop.

### [3. Documentation-First Development](docs/03-documentation-first.md)
Why documentation is the backbone of sustainable vibe coding, and how to keep your README and specs current.

### [4. Version Control Is Non-Negotiable](docs/04-version-control.md)
Using git and GitHub Desktop to track every AI-generated change and maintain full visibility.

### [5. Testing and Quality Assurance](docs/05-testing.md)
Setting up unit tests to catch when AI changes break things — and why failed tests are information, not failures.

### [6. Addressing the Critics](docs/06-addressing-critics.md)
Technical debt, debugging difficulty, and security concerns are real — and all preventable with proper practices.

### [7. Learning to Code Through Vibe Coding](docs/07-learning-through-vibecoding.md)
Advice for beginners on building real programming knowledge alongside AI-assisted development.

### [8. Project Ideas for Beginners](docs/08-project-ideas.md)
15 starter projects with exact prompts to give Claude — from to-do lists to web apps.

## Tool Reference

Detailed pages for every tool used in this tutorial:

| Tool | What It Is |
|------|-----------|
| [GitHub](docs/tools/github.md) | Where your code lives online |
| [GitHub Desktop](docs/tools/github-desktop.md) | Visual tool for reviewing AI changes and committing |
| [Visual Studio Code](docs/tools/vscode.md) | Free code editor with extensions and built-in terminal |
| [Node.js](docs/tools/nodejs.md) | JavaScript runtime (required for Claude Code) |
| [Python](docs/tools/python.md) | Programming language (required for cleanvibe) |
| [Claude Code](docs/tools/claude-code.md) | AI coding agent that works directly in your codebase |
| [cleanvibe](docs/tools/cleanvibe.md) | Project scaffolding tool for vibe coding |

## Advanced Topics

Ready to go deeper? These guides cover intermediate and advanced concepts:

### Databases
| Database | Best For |
|----------|---------|
| [SQLite](docs/advanced/sqlite.md) | File-based database, no server needed, built into Python |
| [MongoDB](docs/advanced/mongodb.md) | Flexible document storage with JSON-like data |
| [Apache Jena Fuseki](docs/advanced/apache-jena-fuseki.md) | Knowledge graphs, RDF data, and SPARQL queries |
| [Neo4j](docs/advanced/neo4j.md) | Graph database for highly connected data |

### Infrastructure & Deployment
| Topic | What You'll Learn |
|-------|------------------|
| [GitHub Pages](docs/advanced/github-pages.md) | Free static site hosting with optional custom domains |
| [Working with APIs](docs/advanced/apis.md) | Consuming and building REST APIs |
| [Environment Variables](docs/advanced/environment-variables.md) | Keeping secrets out of your code |
| [Docker](docs/advanced/docker.md) | Containerizing your apps for consistent environments |
| [Deployment](docs/advanced/deployment.md) | Getting your projects live on the internet |
| [CI/CD with GitHub Actions](docs/advanced/ci-cd.md) | Automated testing and deployment |

## Core Principles

1. **Know what your program does** — You should always have a general understanding of what the AI is building
2. **Document everything** — Detailed READMEs, specifications, and inline documentation
3. **Track every change** — Git commits for every meaningful change, with descriptive messages
4. **Test your code** — Unit tests catch behavior changes and prevent silent breakage
5. **Use proper tools** — AI agents (not chat interfaces), version control, visual diffs
6. **Stay engaged** — Experiment with code yourself, understand how it behaves

## License

This tutorial is open source. Feel free to share and adapt it.

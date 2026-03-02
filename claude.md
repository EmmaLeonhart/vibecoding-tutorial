# Vibe Coding Tutorial — AI Agent Instructions

## What This Repo Is

This is a **tutorial repository** designed to be cloned and explored interactively. The reader is not just meant to read the markdown files — they are meant to clone this repo, open it in an AI coding agent (like Claude Code), and use that agent to make changes while watching those changes appear in GitHub Desktop.

The tutorial teaches **vibe coding**: the discipline of building software through AI collaboration with proper practices — documentation, version control, code review, and testing. It makes the case that vibe coding done right is a serious, intentional workflow, not just "asking ChatGPT to write code."

The repo content is seven tutorial chapters in `docs/`, plus a README that doubles as the table of contents.

## Your Role as an AI Agent Working in This Repo

You are both a **participant in the tutorial** and a **contributor to its content**. When a user asks you to make changes here, you are demonstrating the very practices the tutorial describes. That means:

- Every architectural decision, thought, or change gets committed — commits are cheap and reversible
- Never use planning-only mode. If you need to think through something complex, create files in a `planning/` directory and commit them
- Write clear commit messages that explain *why*, not just *what*
- Keep `README.md` and this file current as the project evolves

## Architecture

```
README.md                        — Project overview and tutorial table of contents
CLAUDE.md                        — This file: instructions for AI agents
docs/
  01-what-is-vibecoding.md       — Defining the discipline beyond the buzzword
  02-tools-and-setup.md          — Environment setup (cleanvibe, git, GitHub Desktop, AI agent)
  03-documentation-first.md      — Why documentation is the backbone of vibe coding
  04-version-control.md          — Git and GitHub Desktop as visibility tools
  05-testing.md                  — Unit tests as a safety net for AI-generated code
  06-addressing-critics.md       — Technical debt, security, and debugging concerns
  07-learning-through-vibecoding.md — Building real programming knowledge alongside AI
```

## Conventions

- All tutorial content is Markdown
- Chapters are numbered and linked sequentially from the README
- Tone: practical, honest, opinionated — not academic or preachy
- The tutorial recommends [cleanvibe](https://github.com/Immanuelle/cleanvibe) (`pip install cleanvibe`) for project scaffolding
- GitHub Desktop is recommended so readers can visually see diffs as the AI makes changes

## Workflow Guidelines

- **Commit early and often.** Every meaningful change should be committed. Commits are the whole point — the reader is watching these in GitHub Desktop.
- **Do not enter planning-only mode.** Put planning thoughts into `planning/*.md` files and commit them. Visible thinking is the lesson.
- **Keep this file and README.md current.** If the project structure or conventions change, update both immediately.
- **Write commit messages that explain why**, not just what changed. Good commit hygiene is what this tutorial is teaching.

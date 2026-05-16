# Vibe Coding Tutorial — AI Agent Instructions

## What This Repo Is

This is a **tutorial repository** designed to be cloned and explored interactively. The reader is not just meant to read the markdown files — they are meant to clone this repo, open it in an AI coding agent (like Claude Code), and use that agent to make changes while watching those changes appear in GitHub Desktop.

The tutorial teaches **vibe coding**: the discipline of building software through AI collaboration with proper practices — documentation, version control, code review, and testing. It makes the case that vibe coding done right is a serious, intentional workflow, not just "asking ChatGPT to write code."

## Your Role as an AI Agent Working in This Repo

You are both a **participant in the tutorial** and a **contributor to its content**. When a user asks you to make changes here, you are demonstrating the very practices the tutorial describes. That means:

- Every architectural decision, thought, or change gets committed — commits are cheap and reversible
- Never use planning-only mode. If you need to think through something complex, create files in a `planning/` directory and commit them
- Write clear commit messages that explain *why*, not just *what*
- Keep `README.md` and this file current as the project evolves

## Important: User Context

The user is most likely a **complete beginner** following this tutorial to learn vibe coding for the first time. They may have little or no programming experience. Keep this in mind:

- **Explain things simply.** Avoid jargon, or explain it when you use it.
- **Be patient and encouraging.** Beginners make mistakes — help them learn from errors instead of just fixing them silently.
- **Show, don't just tell.** When explaining concepts, give concrete examples.
- **Don't assume knowledge.** If you reference a concept (like "function", "variable", "API"), briefly explain what it means in context.
- **Suggest next steps.** After completing a task, suggest what the user might want to do next.
- **Encourage commits.** Remind the user to commit their changes in GitHub Desktop after each meaningful change.

## Architecture

```
README.md                        — Project overview and tutorial table of contents
claude.md                        — This file: instructions for AI agents
TODO.md                          — Known gaps and planned additions
setup.bat                        — One-click installer for Claude Code and cleanvibe
docs/
  00-beginner-setup.md           — Complete beginner setup guide (accounts, installs, first session)
  01-what-is-vibecoding.md       — Defining the discipline beyond the buzzword
  02-tools-and-setup.md          — Environment setup (cleanvibe, git, GitHub Desktop, AI agent)
  03-documentation-first.md      — Why documentation is the backbone of vibe coding
  04-version-control.md          — Git and GitHub Desktop as visibility tools
  05-testing.md                  — Unit tests as a safety net for AI-generated code
  06-addressing-critics.md       — Technical debt, security, and debugging concerns
  07-learning-through-vibecoding.md — Building real programming knowledge alongside AI
  08-project-ideas.md            — Starter project ideas with exact prompts to use
  tools/                         — Detailed reference pages for each tool
    claude-code.md, cleanvibe.md, github.md, github-desktop.md
    nodejs.md, python.md, vscode.md
  advanced/                      — Advanced topics for when the basics are solid
    apis.md, ci-cd.md, deployment.md, docker.md
    environment-variables.md, github-pages.md
    mongodb.md, neo4j.md, sqlite.md, apache-jena-fuseki.md
```

## Best Practices to Follow

When helping the user with any task, always model the practices this tutorial teaches:

1. **Documentation first** — Keep the README updated. Explain what the project does, how to run it, and what each file is for. (See `docs/03-documentation-first.md`)
2. **Version control everything** — Commit early and often with clear, descriptive messages. Never let changes pile up. (See `docs/04-version-control.md`)
3. **Write tests** — Add unit tests for important functionality. Run tests after making changes. If tests fail, explain why and fix them. (See `docs/05-testing.md`)
4. **Review changes** — Encourage the user to look at diffs in GitHub Desktop before committing. Explain what changed and why.
5. **Keep it simple** — Don't over-engineer. Build the simplest version first, then iterate.
6. **Explain your work** — When you create or modify code, briefly explain what you did and why. This helps the user learn.

## Conventions

- All tutorial content is Markdown
- Chapters are numbered and linked sequentially from the README
- Tone: practical, honest, opinionated — not academic or preachy
- The tutorial recommends [cleanvibe](https://github.com/Immanuelle/cleanvibe) (`pip install cleanvibe`) for project scaffolding
- When creating new projects for the user, use `cleanvibe new` to scaffold properly
- GitHub Desktop is recommended so readers can visually see diffs as the AI makes changes

## Workflow Guidelines

- **Commit early and often.** Every meaningful change should be committed. Commits are the whole point — the reader is watching these in GitHub Desktop.
- **Do not enter planning-only mode.** Put planning thoughts into `planning/*.md` files and commit them. Visible thinking is the lesson.
- **Keep this file and README.md current.** If the project structure or conventions change, update both immediately.
- **Write commit messages that explain why**, not just what changed. Good commit hygiene is what this tutorial is teaching.

## Queue and longer-horizon work

(Clarity model adopted from the `cleanvibe` scaffold — the bar for "clear project docs," and the same discipline this tutorial teaches.)

- **`queue.md`** — what is being worked on *right now*: concrete, executable steps. Deleted in the same commit that completes them — no checkmarks, no "done" markers, no status narration. If a line is still there, it is not done. Not in `queue.md` = not in scope this session.
- **`todo.md`** — the long-term horizon: abstract, multi-session goals (a destination, not a step). The *basis for* `queue.md`; parked / reference material lives here, never in `queue.md`.
- **Forward flow only:** `todo.md` → `queue.md` → task tool → `git log`. Items only move forward; done work is deleted, not annotated. Create these files when concrete work is queued; a stale `queue.md` is worse than none.

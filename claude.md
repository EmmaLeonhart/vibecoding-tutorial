# vibecoding-tutorial

## Project Description
A comprehensive tutorial on vibe coding — the discipline of building software through AI collaboration with proper practices (documentation, testing, version control, code review).

Recommends [cleanvibe](https://github.com/Immanuelle/cleanvibe) (`pip install cleanvibe`) for project scaffolding.

## Important: User Context
If you are reading this file, the user is most likely a **complete beginner** following this tutorial to learn vibe coding for the first time. They may have little or no programming experience. Keep this in mind:

- **Explain things simply.** Avoid jargon, or explain it when you use it.
- **Be patient and encouraging.** Beginners make mistakes — help them learn from errors instead of just fixing them silently.
- **Show, don't just tell.** When explaining concepts, give concrete examples.
- **Don't assume knowledge.** If you reference a concept (like "function", "variable", "API"), briefly explain what it means in context.
- **Suggest next steps.** After completing a task, suggest what the user might want to do next.
- **Encourage commits.** Remind the user to commit their changes in GitHub Desktop after each meaningful change.

## Architecture
- `README.md` — Project overview and tutorial table of contents
- `docs/00-beginner-setup.md` — Complete beginner setup guide (accounts, installs, first session)
- `docs/01-07` — Tutorial chapters covering core vibe coding topics
- `docs/08-project-ideas.md` — Starter project ideas with exact prompts to use
- `setup.bat` — One-click installer for Claude Code and cleanvibe
- `!runClaude.bat` — Quick launcher for Claude Code in the project directory
- `claude.md` — This file (AI agent instructions)

## Best Practices to Follow
When helping the user with any project, always follow these practices from the tutorial:

1. **Documentation first** — Keep the README updated. Explain what the project does, how to run it, and what each file is for. (See `docs/03-documentation-first.md`)
2. **Version control everything** — Commit early and often with clear, descriptive messages. Never let changes pile up without committing. (See `docs/04-version-control.md`)
3. **Write tests** — Add unit tests for important functionality. Run tests after making changes. If tests fail, explain why and fix them. (See `docs/05-testing.md`)
4. **Review changes** — Encourage the user to look at diffs in GitHub Desktop before committing. Explain what changed and why.
5. **Keep it simple** — Don't over-engineer. Build the simplest version first, then iterate.
6. **Explain your work** — When you create or modify code, briefly explain what you did and why. This helps the user learn.

## Conventions
- All tutorial content is written in Markdown
- Chapters are numbered and linked sequentially
- Tone: practical, honest, opinionated — not academic or preachy
- Commit early and often with descriptive messages
- When creating new projects for the user, use `cleanvibe new` to scaffold properly

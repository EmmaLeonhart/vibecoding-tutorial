# 3. Documentation-First Development

## Why Documentation Is the Backbone

In traditional coding, documentation is often an afterthought. In vibe coding, **documentation is how you maintain control**.

When an AI agent is writing and modifying your code, documentation serves as:

- **Your memory** — A record of what the project does and why decisions were made
- **The AI's context** — Many AI agents read project documentation to understand what they're working on
- **Your safety net** — When something goes wrong, good documentation helps you (and the AI) figure out what should have happened

## The README Is Your Most Important File

You should ask the AI agent to make a detailed README about what is going on in the project. This README should:

- Explain what the project does
- Describe how to install and run it
- List the key components and how they fit together
- Document any important decisions or trade-offs

**Tell the AI to update the README as new features are added or developed.** This is easy to forget, but it's one of the most valuable things you can do. A stale README is almost worse than no README.

### Example Prompt

> "Update the README to reflect the new authentication feature we just added. Include setup instructions for the new environment variables."

## Scaling Documentation for Larger Projects

If your project grows beyond a simple script or small app, a single README won't be enough. In this case, have your AI create many different documents explaining different parts of the specification:

- **Architecture docs** — How the system is structured, what talks to what
- **API documentation** — What endpoints exist, what they expect, what they return
- **Component guides** — What each major piece of the code does
- **Decision records** — Why you chose one approach over another

### Suggested Structure for Larger Projects

```
my-project/
  README.md              # Project overview and quick start
  docs/
    architecture.md      # System design and component relationships
    api.md              # API endpoints and data formats
    deployment.md       # How to deploy and configure
    decisions/
      001-database.md   # Why we chose SQLite over PostgreSQL
      002-auth.md       # Why we use JWT tokens
```

## CLAUDE.md and Agent Instructions

Many AI agents support project-level instruction files. For Claude Code, this is `CLAUDE.md`. This file tells the AI:

- Project conventions and patterns to follow
- Important constraints or rules
- Where key files are located
- What tools and commands to use

Keep this file updated as your project evolves. It's the AI's equivalent of onboarding documentation.

## Documentation as Communication

Think of documentation as a conversation between three parties:

1. **Present you** explaining what you're building
2. **Future you** trying to remember why something works the way it does
3. **The AI agent** needing context to make good decisions

Write for all three audiences. It takes very little extra effort when the AI is helping you write it, and it pays off enormously.

---

**Next:** [4. Version Control Is Non-Negotiable](04-version-control.md)

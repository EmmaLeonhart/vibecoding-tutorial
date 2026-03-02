# cleanvibe

## What Is cleanvibe?

cleanvibe is a project scaffolding tool designed specifically for vibe coding. When you start a new project, cleanvibe generates a well-organized folder structure, a CLAUDE.md file, documentation stubs, and other boilerplate so you can jump straight into building with an AI coding agent.

Think of it as a head start. Instead of creating folders and files by hand (or asking Claude Code to do it from scratch every time), cleanvibe gives you a solid foundation that follows best practices.

## Why It Exists

One of the biggest challenges for beginners in vibe coding is starting from a blank slate. When you tell an AI "build me a web app," the result is often a messy pile of files with no clear structure. cleanvibe solves this by giving your project proper organization from the very first moment.

It also generates a CLAUDE.md file tailored to your project type, which means Claude Code immediately understands your project's conventions and structure when it starts up.

## Installation

cleanvibe is a Python package. Make sure you have [Python and pip installed](./python.md), then run:

```bash
pip install cleanvibe
```

Verify the installation:

```bash
cleanvibe --version
```

## Creating a New Project

To scaffold a brand-new project:

```bash
cleanvibe new my-project
```

Replace `my-project` with whatever you want to name your project. cleanvibe will create a new directory with that name and populate it with a full project structure.

You will be asked a few questions about your project (such as what type of project it is), and then cleanvibe generates everything for you.

## Cloning with Scaffolding

If you want to clone an existing repository and add cleanvibe's scaffolding on top of it:

```bash
cleanvibe clone https://github.com/user/repo.git
```

This clones the repository and then layers in the cleanvibe structure — adding a CLAUDE.md, documentation scaffolding, and any missing organizational pieces without overwriting existing files.

## What the Generated Project Structure Looks Like

After running `cleanvibe new my-project`, you will see something like this:

```
my-project/
├── CLAUDE.md
├── README.md
├── docs/
│   ├── architecture.md
│   ├── setup.md
│   └── ...
├── src/
│   └── ...
├── tests/
│   └── ...
├── requirements.txt (or package.json, depending on project type)
└── .gitignore
```

The exact contents vary depending on the project type you choose, but the pattern is consistent: source code in `src/`, tests in `tests/`, documentation in `docs/`, and configuration files at the root.

## The Generated CLAUDE.md and Why It Matters

The `CLAUDE.md` file is one of the most important things cleanvibe creates. This file is read automatically by Claude Code when it starts in your project directory. It contains:

- A description of your project and its purpose
- The project's folder structure and what each directory is for
- Coding conventions and style preferences
- Build and run commands
- Testing instructions

Without a CLAUDE.md, Claude Code has to guess about your project's conventions. With one, it follows your rules from the start. This leads to more consistent, higher-quality code generation.

You can (and should) edit the CLAUDE.md as your project evolves. Add notes about decisions you have made, libraries you prefer, or patterns you want Claude Code to follow.

## The Generated Documentation Scaffolding

cleanvibe also creates a `docs/` folder with starter documentation files. These are not meant to be final — they are templates that give you a place to record architecture decisions, setup instructions, and other project knowledge.

Having documentation from day one is especially valuable in vibe coding because it helps the AI understand your project better as it grows. When Claude Code can read your architecture docs, it makes smarter decisions about where to put new code and how to structure it.

## When to Use cleanvibe vs Just git init

**Use cleanvibe when:**
- You are starting a new project from scratch
- You want proper structure without thinking about it
- You plan to use Claude Code or another AI coding agent
- You want a CLAUDE.md generated for you automatically

**Use `git init` (or just create a folder) when:**
- You are following a tutorial that has its own specific structure
- You are contributing to an existing project that already has its own conventions
- You are doing a quick one-file experiment or script
- The project already has a CLAUDE.md and documentation

In general, if you are building anything more than a throwaway script, cleanvibe is worth using. The few seconds it takes to run saves you from organizational headaches later.

## Useful Links

- [cleanvibe on GitHub](https://github.com/Emma-Leonhart/cleanvibe) — Source code, documentation, and issue tracker

---

*Back to: [Beginner Setup Guide](../00-beginner-setup.md) | [Tutorial Home](../../README.md)*

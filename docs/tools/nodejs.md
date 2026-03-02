# Node.js

## What Is Node.js?

Node.js is a **JavaScript runtime** — a program that lets you run JavaScript code outside of a
web browser. Normally JavaScript only runs inside browsers (Chrome, Firefox, Safari), but Node.js
lets it run directly on your computer like any other programming language.

You might be wondering why a vibe coding tutorial is talking about JavaScript runtimes. The
short answer: **Claude Code is built on Node.js**, so you need Node.js installed for Claude Code
to work.

## Why You Need It

Claude Code — the AI coding tool at the heart of this tutorial — is a Node.js application. When
you install and run Claude Code, Node.js is what actually executes it behind the scenes. Without
Node.js on your machine, Claude Code can't run.

Even if you never write JavaScript yourself, Node.js is a prerequisite. Think of it like needing
a gas engine to drive a car — you don't interact with the engine directly, but the car won't
go without it.

## Installation

We recommend installing the **LTS (Long Term Support)** version. LTS means it's the stable,
well-tested version that's recommended for most people.

### Step by Step

1. Go to [nodejs.org](https://nodejs.org).
2. You'll see two download buttons. Click the one labeled **LTS** (not "Current").
3. Run the downloaded installer.
4. Follow the prompts. Accept the license agreement and use the default settings.
5. **Important (Windows):** Make sure the option to add Node.js to your PATH is checked. This is
   usually checked by default, but verify it. Without this, your terminal won't recognize the
   `node` or `npm` commands.
6. Finish the installation.

### macOS Alternative: Using Homebrew

If you have Homebrew installed on macOS, you can install Node.js from the terminal:

```
brew install node
```

This also works and keeps Node.js easy to update later.

## Verifying Installation

After installing, open a terminal (or the VS Code integrated terminal) and run these two
commands:

```
node --version
```

You should see a version number like `v22.x.x` or similar.

```
npm --version
```

You should see a version number like `10.x.x` or similar.

If both commands return version numbers, you're all set. If you get an error, see the
troubleshooting section below.

## What Is npm?

When you install Node.js, you also get **npm** (Node Package Manager) for free. npm is a tool
that downloads and manages JavaScript packages — pre-written code libraries that other people
have published for anyone to use.

You'll use npm to install Claude Code and potentially other tools. Think of npm as an app store
for JavaScript tools and libraries.

## Key npm Commands

You don't need to memorize these, but here's a reference for the commands you're most likely
to encounter:

### `npm install`

Run this inside a project folder that has a `package.json` file. It downloads all the
dependencies (libraries) that the project needs.

```
npm install
```

### `npm install -g <package>`

The `-g` flag installs a package **globally** — meaning it's available everywhere on your
computer, not just in one project. This is how you install command-line tools like Claude Code.

```
npm install -g @anthropic-ai/claude-code
```

### `npm list -g --depth=0`

Shows all globally installed packages. Useful for checking what tools you have installed.

```
npm list -g --depth=0
```

## Common Issues

### "node is not recognized" or "command not found: node"

This is the most common problem beginners hit. It means Node.js is not in your system's **PATH**
— the list of directories your terminal searches when you type a command.

**How to fix it:**

- **Windows:** Reinstall Node.js and make sure the "Add to PATH" checkbox is selected during
  installation. Then close and reopen your terminal.
- **macOS/Linux:** If you installed via the website, try closing and reopening your terminal. If
  it still doesn't work, reinstall from [nodejs.org](https://nodejs.org).
- **Still stuck?** Restart your computer after reinstalling. Some PATH changes only take effect
  after a full restart.

### Permission errors on macOS/Linux

If you see errors like `EACCES` when installing global packages, don't use `sudo`. Instead,
follow the [npm guide to fix permissions](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally).

## Updating Node.js

Node.js doesn't update itself automatically. To update:

1. Go to [nodejs.org](https://nodejs.org).
2. Download the latest **LTS** version.
3. Run the installer.

The new version installs over the old one. Your globally installed npm packages (like Claude
Code) will still be there. It's that simple.

Check which version you have any time by running `node --version`.

## Helpful Links

- [Node.js](https://nodejs.org) — Official site and downloads
- [npm Documentation](https://docs.npmjs.com) — Official npm docs
- [About Node.js](https://nodejs.org/en/about) — What Node.js is and how it works
- [npm Global Install Guide](https://docs.npmjs.com/downloading-and-installing-packages-globally) — More detail on global installs

---

*Back to: [Beginner Setup Guide](../00-beginner-setup.md) | [Tutorial Home](../../README.md)*

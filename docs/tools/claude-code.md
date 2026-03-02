# Claude Code

## What Is Claude Code?

Claude Code is an AI coding agent made by Anthropic that works directly in your codebase. You run it in your terminal, point it at your project folder, and tell it what you want to build or change. It reads your files, understands your project structure, and makes edits for you.

## How It Differs from ChatGPT or Claude.ai Chat

When you use a chatbot like ChatGPT or Claude.ai in a browser, you are copying and pasting code back and forth. The AI cannot see your actual project files.

Claude Code is different. It is an **agent**, not a chat window. It runs on your machine, sees your real files, and edits them directly. You describe what you want, it figures out which files to change, makes the changes, and you approve or reject them. This is the core workflow of vibe coding — you describe the result, and the AI does the implementation.

## Prerequisites

Before installing Claude Code, you need:

1. **Node.js** (version 18 or newer) — Claude Code is installed via npm, which comes with Node.js. See the [Node.js reference page](./nodejs.md) if you need installation help.
2. **An Anthropic API key** or a **Claude Max subscription** — You need one of these to authenticate. An API key is pay-per-use. A Max subscription ($100/month or $200/month) gives you a usage allowance.

## Installation

Open your terminal and run:

```bash
npm install -g @anthropic-ai/claude-code
```

The `-g` flag installs it globally so you can use the `claude` command from anywhere.

## Setting Up Your API Key

**On Windows (Command Prompt):**
```bash
setx ANTHROPIC_API_KEY "your-key-here"
```
Close and reopen your terminal after running this.

**On macOS/Linux:**
```bash
export ANTHROPIC_API_KEY="your-key-here"
```
To make this permanent, add the line to your `~/.bashrc`, `~/.zshrc`, or shell profile file.

**Alternative — Using a Max Subscription:**
If you have a Claude Max subscription, you can authenticate with OAuth instead of an API key. When you first run `claude`, it will give you the option to log in through your browser. Follow the prompts and you are set.

## Starting Claude Code

1. Open your terminal
2. Navigate to your project folder: `cd path/to/your/project`
3. Type `claude` and press Enter

Claude Code will start up, scan your project, and wait for your instructions.

## How to Give It Instructions

Just type naturally. Describe what you want in plain language. For example:

- "Create a Flask web app with a home page and an about page"
- "Add a dark mode toggle to the settings page"
- "Fix the bug where the login form does not validate email addresses"
- "Write tests for the user registration module"

You do not need to use special syntax or commands. Talk to it like you would talk to a colleague.

## Important Commands Inside Claude Code

These slash commands are available while Claude Code is running:

| Command | What It Does |
|---|---|
| `/help` | Shows available commands and usage tips |
| `/clear` | Clears the conversation history and starts fresh |
| `/compact` | Summarizes the conversation to free up context space |
| `/cost` | Shows how much you have spent in the current session |

## The Permission System

Claude Code asks for your approval before making changes. When it wants to edit a file, run a command, or do anything that modifies your project, it will show you what it plans to do and ask you to confirm.

- **Allow** — Let it proceed with the change
- **Deny** — Reject the change and optionally explain why

This means you stay in control. Nothing happens to your code without your say-so.

## Tips for Getting Good Results

- **Be specific about what you want.** "Add a contact form with name, email, and message fields that sends to my API at /api/contact" is better than "add a form."
- **Describe the end result, not the steps.** Say "I want a responsive navbar with a hamburger menu on mobile" rather than "first create a div, then add CSS..."
- **If something goes wrong, paste the error message.** Claude Code can read error output and usually knows exactly what to fix.
- **Ask it to explain what it did.** After a change, say "explain what you just changed and why" to learn from the process.
- **Use "undo the last change" if you do not like something.** Claude Code can revert its own edits. You can also use git to go back further.
- **Start small and iterate.** Build one feature at a time rather than asking for an entire application in one prompt.

## Cost Management

Claude Code uses API credits (or Max subscription usage) each time you interact with it. To keep costs under control:

- Run `/cost` during a session to see current spending
- Set monthly spending limits at [console.anthropic.com](https://console.anthropic.com/)
- Use `/compact` to reduce context size in long sessions, which reduces token usage
- Be concise in your prompts — extremely long instructions use more tokens

## CLAUDE.md Files

When Claude Code starts in a project directory, it automatically looks for a file called `CLAUDE.md`. This file contains project-specific instructions that guide Claude Code's behavior — things like coding conventions, project architecture notes, and preferred libraries.

You do not have to write this file by hand. Tools like **cleanvibe** generate one for you when you scaffold a new project. But you can always edit it to add your own preferences.

## Useful Links

- [Anthropic Documentation](https://docs.anthropic.com/en/docs/claude-code) — Official Claude Code docs
- [Claude Code on GitHub](https://github.com/anthropics/claude-code) — Source repository and issue tracker

---

*Back to: [Beginner Setup Guide](../00-beginner-setup.md) | [Tutorial Home](../../README.md)*

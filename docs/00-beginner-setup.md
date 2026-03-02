# Step 0: Complete Beginner Setup Guide

**No experience needed.** This page walks you through everything from scratch — creating accounts, installing tools, and getting your first AI coding session running. Follow each step in order.

---

## Table of Contents

1. [Create a GitHub Account](#step-1-create-a-github-account)
2. [Install GitHub Desktop](#step-2-install-github-desktop)
3. [Clone This Repository](#step-3-clone-this-repository)
4. [Install Visual Studio Code](#step-4-install-visual-studio-code)
5. [Install Node.js](#step-5-install-nodejs)
6. [Install Python](#step-6-install-python)
7. [Run the Setup Script](#step-7-run-the-setup-script)
8. [Get Your Anthropic API Key](#step-8-get-your-anthropic-api-key)
9. [Launch Claude Code](#step-9-launch-claude-code)
10. [Your First Vibe Coding Session](#step-10-your-first-vibe-coding-session)
11. [What to Build Next](#what-to-build-next)

---

## Step 1: Create a GitHub Account

GitHub is where your code lives online. It tracks every change you make so you can always undo mistakes.

For more detail, see the full [GitHub reference page](tools/github.md).

1. Go to [github.com](https://github.com)
2. Click **"Sign up"** in the top-right corner
3. Enter your email address, create a password, and pick a username
4. Complete the verification puzzle
5. Choose the **Free** plan (it has everything you need)
6. You'll get a verification email — click the link in it to confirm your account

**That's it.** You now have a GitHub account.

---

## Step 2: Install GitHub Desktop

GitHub Desktop is a visual tool that lets you see exactly what changes the AI made to your code. This is one of the most important tools for vibe coding. For more detail, see the full [GitHub Desktop reference page](tools/github-desktop.md).

1. Go to [desktop.github.com](https://desktop.github.com)
2. Click **"Download for Windows"** (or Mac)
3. Run the installer
4. When it opens, click **"Sign in to GitHub.com"**
5. Log in with the account you just created
6. It will ask for your name and email — these show up on your code changes, so use something recognizable

---

## Step 3: Clone This Repository

"Cloning" means downloading a copy of this tutorial to your computer so you can work with it locally.

1. Open **GitHub Desktop**
2. Click **File > Clone Repository** (or the "Clone a repository" button if it's your first time)
3. Click the **URL** tab
4. Paste this URL: `https://github.com/Emma-Leonhart/vibecoding-tutorial`
5. Choose where you want to save it on your computer (the default is usually fine)
6. Click **"Clone"**
7. Wait for it to download — it only takes a few seconds

You now have the entire tutorial on your computer.

---

## Step 4: Install Visual Studio Code

VS Code is a free code editor. You'll use it to look at files and understand what Claude is building for you. For more detail, see the full [VS Code reference page](tools/vscode.md).

1. Go to [code.visualstudio.com](https://code.visualstudio.com)
2. Click the big **"Download"** button
3. Run the installer
4. **Important:** During installation, check these boxes:
   - "Add to PATH" (so you can open it from the terminal)
   - "Add 'Open with Code' action to Windows Explorer context menu" (lets you right-click folders to open them)
5. Launch VS Code once to make sure it works

### Opening Your Project in VS Code

After cloning, you can open this tutorial in VS Code:

1. Open VS Code
2. Click **File > Open Folder**
3. Navigate to where you cloned the repository
4. Select the `vibecoding-tutorial` folder and click **"Select Folder"**

You'll see all the files on the left sidebar. You can click any file to read it.

---

## Step 5: Install Node.js

Claude Code requires Node.js to run. This is a one-time install. For more detail, see the full [Node.js reference page](tools/nodejs.md).

1. Go to [nodejs.org](https://nodejs.org)
2. Download the **LTS** version (the one that says "Recommended for Most Users")
3. Run the installer — click through with all the default options
4. To verify it worked, open a terminal (press `Win + R`, type `cmd`, press Enter) and type:

```
node --version
```

You should see a version number like `v22.x.x`. If you do, Node.js is installed.

---

## Step 6: Install Python

Python is needed for `cleanvibe`, the project scaffolding tool. For more detail, see the full [Python reference page](tools/python.md).

1. Go to [python.org/downloads](https://python.org/downloads)
2. Click the big **"Download Python"** button
3. Run the installer
4. **CRITICAL:** Check the box that says **"Add Python to PATH"** at the bottom of the installer window. This is the most common mistake beginners make.
5. Click **"Install Now"**
6. To verify, open a terminal and type:

```
python --version
```

You should see something like `Python 3.12.x`.

---

## Step 7: Run the Setup Script

This repository includes a setup script that installs Claude Code and cleanvibe for you automatically.

1. Open the folder where you cloned this repository using **File Explorer**
2. Double-click the file called **`setup.bat`**
3. A command prompt window will open and install everything automatically
4. Wait for it to finish — it will tell you when it's done

The script installs:
- **[Claude Code](tools/claude-code.md)** — your AI coding agent
- **[cleanvibe](tools/cleanvibe.md)** — project scaffolding for vibe coding

If you see any red error text, read the message carefully. The most common issue is that Node.js or Python wasn't added to PATH — revisit Steps 5 and 6.

---

## Step 8: Get Your Anthropic API Key

Claude Code needs an API key to work. This is how it connects to the Claude AI.

1. Go to [console.anthropic.com](https://console.anthropic.com)
2. Create an account (or sign in if you already have one)
3. You'll need to add billing information — Claude Code uses a pay-per-use API
   - Typical beginner usage costs a few dollars per month
   - You can set spending limits in the console
4. Go to **API Keys** in the dashboard
5. Click **"Create Key"**
6. Give it a name like "claude-code"
7. **Copy the key** — you'll only see it once

### Set the API Key

Open a terminal and run:

```
setx ANTHROPIC_API_KEY "sk-ant-your-key-here"
```

Replace `sk-ant-your-key-here` with the actual key you copied. Then **close and reopen your terminal** for it to take effect.

> **Alternative:** You can also use Claude Code with a Max subscription through OAuth instead of an API key. When you first run `claude`, it will give you the option to log in through your browser.

---

## Step 9: Launch Claude Code

Now let's start Claude Code for the first time.

1. Open the folder where you cloned this repository
2. Double-click **`!runClaude.bat`** — this opens a terminal and starts Claude Code in the project folder

Or manually:

1. Open a terminal
2. Navigate to your project folder: `cd path\to\vibecoding-tutorial`
3. Type `claude` and press Enter

Claude Code will start up and you'll see a prompt where you can type instructions.

---

## Step 10: Your First Vibe Coding Session

Now you're ready to start building. Here's a simple first exercise:

### Tell Claude What You Want

Type something like this into Claude Code:

> Create a simple Python script called hello.py that asks for the user's name and greets them with a personalized message.

Claude will:
1. Create the file for you
2. Write the code
3. You can review the changes in GitHub Desktop

### Review Changes

1. Open **GitHub Desktop**
2. You'll see the new file listed under "Changes"
3. Click on it to see exactly what Claude wrote
4. If you're happy with it, write a commit message like "Add hello greeting script" and click **"Commit"**

### Keep Going

Try giving Claude more instructions:

> Add a feature that asks for the user's favorite color and responds with a fun fact about that color.

Each time Claude makes changes, review them in GitHub Desktop and commit.

**That's the vibe coding loop: instruct, review, commit, repeat.**

---

## What to Build Next

Now that you have everything set up, check out our **[Project Ideas for Beginners](08-project-ideas.md)** page for a curated list of starter projects with exact instructions for what to tell Claude.

Then continue with the rest of the tutorial to learn best practices:

- [1. What Vibe Coding Actually Is](01-what-is-vibecoding.md) — understanding the discipline
- [2. Essential Tools and Setup](02-tools-and-setup.md) — deeper dive into your tools
- [3. Documentation-First Development](03-documentation-first.md) — why docs matter
- [4. Version Control Is Non-Negotiable](04-version-control.md) — mastering git
- [5. Testing and Quality Assurance](05-testing.md) — catching bugs early
- [6. Addressing the Critics](06-addressing-critics.md) — honest answers to real concerns
- [7. Learning to Code Through Vibe Coding](07-learning-through-vibecoding.md) — growing your skills

---

**You're all set. Welcome to vibe coding.**

# GitHub Desktop

## What Is GitHub Desktop?

GitHub Desktop is a free app that gives you a visual way to work with Git and GitHub. Instead of
typing commands in a terminal, you click buttons, see color-coded diffs, and manage your code
through a clean interface.

For vibe coding, GitHub Desktop is especially valuable because of **visual diffs**. When an AI
generates or modifies code for you, you want to see exactly what changed before you accept it.
GitHub Desktop shows you every addition (in green) and every deletion (in red) at a glance. This
is one of the most important skills in vibe coding — reviewing what the AI actually did.

## Installation

1. Go to [desktop.github.com](https://desktop.github.com).
2. Click the download button for your operating system (Windows or macOS).
3. Run the installer.
4. Open GitHub Desktop when the installation finishes.

GitHub Desktop is available for Windows and macOS. Linux users can use alternatives like
[GitKraken](https://www.gitkraken.com) or the command line.

## Signing In and Connecting to GitHub

When you first open GitHub Desktop:

1. Click **Sign in to GitHub.com**.
2. This opens your browser. Log in to your GitHub account if you aren't already.
3. Click **Authorize desktop** when prompted.
4. Switch back to GitHub Desktop. You'll be asked to configure your name and email — these
   appear on your commits, so use real values.
5. Click **Finish**.

You're now connected. GitHub Desktop can push and pull code to and from your GitHub account.

## Cloning a Repository

To download an existing repository to your computer:

1. Click **File > Clone Repository** (or the **Clone a Repository** button on the welcome screen).
2. You'll see a list of your GitHub repositories. Pick one, or paste a URL.
3. Choose a local path — this is where the files will live on your computer.
4. Click **Clone**.

The repository is now on your machine, and GitHub Desktop is tracking it.

## The Main Interface

GitHub Desktop has a simple layout with three key areas:

- **Changes tab** — Shows every file you've modified since your last commit. This is where you
  spend most of your time. Each changed file is listed on the left, and clicking it shows the
  diff on the right.
- **History tab** — Shows all previous commits, newest first. Click any commit to see what
  changed in that snapshot. Great for understanding the timeline of your project.
- **Branch selector** — At the top of the window. Shows which branch you're on and lets you
  switch or create branches.

## Viewing Diffs

This is the most important feature for vibe coders. When you click a changed file in the
Changes tab, you see a **diff** — a side-by-side (or inline) comparison of the old and new
versions.

- **Green lines** are additions — new code that was added.
- **Red lines** are deletions — code that was removed.
- **Gray/unchanged lines** give you context around the changes.

When an AI modifies your code, always review the diff before committing. Ask yourself:
- Does the change make sense?
- Did it accidentally delete something important?
- Did it change files you didn't expect?

## Committing Changes

Once you've reviewed the diff and you're happy with the changes:

1. In the Changes tab, check the boxes next to the files you want to include (they're checked
   by default).
2. Write a **summary** in the box at the bottom left. This is your commit message.
3. Optionally add a longer **description** for more detail.
4. Click **Commit to main** (or whatever branch you're on).

**Tips for good commit messages:**
- Be specific: "Add user login form" is better than "Update code"
- Use the present tense: "Fix navigation bug" not "Fixed navigation bug"
- Keep the summary under 50 characters if you can

## Pushing and Pulling

- **Push** sends your local commits up to GitHub. After committing, click **Push origin** in the
  top bar. Your code is now on GitHub.
- **Pull** downloads new changes from GitHub to your computer. Click **Fetch origin** and then
  **Pull origin** if there are changes. Do this before starting work to make sure you have the
  latest version.

## Creating and Switching Branches

- **Create a branch:** Click the branch selector at the top, then **New Branch**. Give it a
  descriptive name like `add-login-page` or `fix-header-bug`.
- **Switch branches:** Click the branch selector and pick the branch you want to work on.
  Your files will change to match that branch.

Branches let you experiment freely. If something goes wrong, your `main` branch is untouched.

## Discarding Changes

If you don't like what an AI did (or what you did), you can throw away changes:

1. In the Changes tab, right-click a file.
2. Select **Discard Changes**.

**Warning:** Discarding changes is permanent. The modified code is gone — there is no undo.
If you're unsure, commit the changes to a throwaway branch first, so you can always get
them back.

## Common Workflows for Vibe Coding

Here's the typical cycle when working with AI-generated code:

1. **AI writes or modifies code** (using Claude Code, Cursor, or another AI tool).
2. **Open GitHub Desktop** and go to the Changes tab.
3. **Review every diff carefully.** Click each file and read the green and red lines.
4. **If it looks good:** Write a commit message and click Commit.
5. **If something is wrong:** Either discard the changes and re-prompt the AI, or fix the issue
   manually before committing.
6. **Push** your commits to GitHub so they're backed up online.

Get comfortable with this cycle. Reviewing diffs is the core skill that separates productive
vibe coders from people who blindly accept AI output.

## Helpful Links

- [GitHub Desktop](https://desktop.github.com) — Download page
- [GitHub Desktop Documentation](https://docs.github.com/en/desktop) — Official docs
- [Getting Started with GitHub Desktop](https://docs.github.com/en/desktop/overview/getting-started-with-github-desktop) — First-time setup guide

---

*Back to: [Beginner Setup Guide](../00-beginner-setup.md) | [Tutorial Home](../../README.md)*

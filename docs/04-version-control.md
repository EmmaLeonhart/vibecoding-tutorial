# 4. Version Control Is Non-Negotiable

## Every Change Gets Tracked

In vibe coding, you should always use git to track every single thing that you do. This is not optional. Without version control, you have no way to:

- See what the AI actually changed
- Undo a change that broke something
- Understand the evolution of your project
- Recover from mistakes

## Git Basics for Vibe Coders

If you're new to git, here's the minimum you need to know:

### Core Concepts

- **Repository (repo):** Your project folder, tracked by git
- **Commit:** A snapshot of your project at a point in time, with a message describing what changed
- **Diff:** A comparison showing exactly what lines were added, removed, or modified
- **Branch:** A parallel version of your project (useful for experiments)

### Essential Commands

```bash
git init                    # Start tracking a project
git add <file>              # Stage a file for commit
git commit -m "message"     # Save a snapshot with a description
git log                     # See history of commits
git diff                    # See what changed since last commit
git checkout -- <file>      # Undo changes to a file
```

## Why GitHub Desktop Is So Useful

GitHub Desktop is very useful for vibe coding because it allows you to **visually compare** changes. When an AI agent modifies 15 files across your project, reading raw terminal diffs is overwhelming. GitHub Desktop shows you:

- **Which files changed** — A clear list in the sidebar
- **What changed in each file** — Line-by-line color-coded diffs
- **Added vs. removed** — Green for additions, red for removals
- **Selective staging** — Choose which changes to keep and which to discard

This visual review step is where you exercise quality control over the AI's work.

## Let the AI Write Your Commit Messages

Asking the AI to do git commits for you is often good practice because it allows you to get a much better explanation than most people are capable of writing. AI agents can:

- Summarize all changes across multiple files
- Explain the *why* behind changes, not just the *what*
- Write consistent, well-formatted commit messages
- Include relevant technical details

This helps with future-proofing the project. Six months from now, when you're looking at the git log trying to figure out why something was changed, a detailed AI-written commit message will be invaluable.

### Example

Instead of:

```
fixed stuff
```

An AI agent will write:

```
Add input validation to user registration form

Validate email format, password strength (min 8 chars, 1 uppercase,
1 number), and username uniqueness before submission. Returns
field-specific error messages to the UI.
```

## Commit Frequency

**Commit early and often.** A good rule of thumb:

- Commit after every completed feature or fix
- Commit before asking the AI to make a big change (so you can roll back)
- Commit when something is working, even if it's not finished
- Never let too many changes pile up without a commit

Small, frequent commits are much more useful than large, infrequent ones. They make it easier to find when something broke and to undo specific changes without losing other work.

## The Review-Commit Cycle

The core workflow in vibe coding looks like this:

```
Ask AI to make changes
    ↓
Review changes in GitHub Desktop
    ↓
Understand what changed and why
    ↓
Commit (or discard if something's wrong)
    ↓
Repeat
```

This cycle is what separates vibe coding from "throw code at the wall and hope it sticks." You stay in control by reviewing every change before it becomes permanent.

---

**Next:** [5. Testing and Quality Assurance](05-testing.md)

# Visual Studio Code (VS Code)

## What Is VS Code?

Visual Studio Code is a free code editor made by Microsoft. It's the most popular code editor in
the world, and for good reason — it's fast, works on every operating system, and has thousands of
extensions that add new features. A huge community means that any question you have has probably
already been answered online.

We recommend VS Code for vibe coding because it gives you a comfortable place to view and edit
your project files, run terminal commands, and manage source control — all in one window.

## Installation

1. Go to [code.visualstudio.com](https://code.visualstudio.com).
2. Click the download button for your operating system (Windows, macOS, or Linux).
3. Run the installer.

### Important Install Options (Windows)

During installation on Windows, you'll see a screen with checkboxes. Make sure these are checked:

- **Add to PATH** — This lets you open VS Code from the terminal by typing `code .` in any
  folder. Very useful.
- **Register Code as an editor for supported file types** — Lets you open files directly in
  VS Code.
- **Add "Open with Code" action to Windows Explorer** — Lets you right-click any folder and
  open it in VS Code.

On macOS, after installing, open VS Code, press `Cmd+Shift+P`, type "shell command", and select
**Install 'code' command in PATH** to get the same terminal integration.

## The Interface

VS Code's layout has a few key areas you should know:

- **Sidebar (left):** Shows file explorer, search, source control, extensions, and more. Toggle
  it with `Ctrl+B` (`Cmd+B` on Mac).
- **Editor (center):** Where you view and edit files. You can open multiple files in tabs and
  split the editor into side-by-side panes.
- **Terminal (bottom):** A built-in terminal so you never have to leave VS Code to run commands.
  Toggle it with `` Ctrl+` `` (backtick).
- **Command Palette:** Press `Ctrl+Shift+P` (`Cmd+Shift+P` on Mac) to search for any command
  in VS Code. If you forget how to do something, start here.

## Opening a Project Folder

Always open the entire project folder, not individual files:

1. Go to **File > Open Folder** (or `Ctrl+K Ctrl+O`).
2. Navigate to your project folder and select it.
3. Click **Open**.

This gives VS Code the full context of your project — the file explorer shows all files, search
works across the whole project, and the integrated terminal starts in the right directory.

## Essential Features

### File Explorer

The first icon in the sidebar. Shows all files and folders in your project. Click a file to open
it, right-click for options like rename and delete.

### Search

Click the magnifying glass in the sidebar (or press `Ctrl+Shift+F`). This searches across every
file in your project. Extremely useful for finding where something is used or defined.

### Integrated Terminal

Press `` Ctrl+` `` to open the terminal. This is a real terminal — you can run any command here
that you'd run in your system's terminal. You can have multiple terminals open at once (click
the `+` button).

### Source Control

The branch icon in the sidebar shows Git changes. You can stage, commit, and push from here. For
beginners, we recommend GitHub Desktop for Git operations since it's more visual, but the built-in
source control works well too.

## Recommended Extensions

Extensions add features to VS Code. Install them by clicking the square icon in the sidebar (or
pressing `Ctrl+Shift+X`) and searching by name.

These are great starting extensions for vibe coding:

- **Python** — If you're working with Python code. Adds syntax highlighting, linting, and
  debugging.
- **Prettier** — Automatically formats your code so it looks clean and consistent. Supports
  JavaScript, TypeScript, HTML, CSS, JSON, and more.
- **GitLens** — Supercharges the built-in Git features. Shows who changed each line and when,
  right inside the editor.
- **Material Icon Theme** — Gives your file explorer colorful, distinctive icons for different
  file types. Makes it easier to find files at a glance.

To install an extension: open the Extensions sidebar, search for the name, and click **Install**.

## Keyboard Shortcuts That Matter

You don't need to memorize dozens of shortcuts. These four will cover most of your needs:

| Shortcut | Mac | What It Does |
|---|---|---|
| `Ctrl+P` | `Cmd+P` | Quick open — search for and open any file by name |
| `Ctrl+Shift+P` | `Cmd+Shift+P` | Command palette — search for any VS Code command |
| `` Ctrl+` `` | `` Cmd+` `` | Toggle the integrated terminal |
| `Ctrl+S` | `Cmd+S` | Save the current file |

Other useful ones to know about:

| Shortcut | Mac | What It Does |
|---|---|---|
| `Ctrl+Shift+F` | `Cmd+Shift+F` | Search across all files in the project |
| `Ctrl+B` | `Cmd+B` | Toggle the sidebar |
| `Ctrl+/` | `Cmd+/` | Toggle comment on the current line |

## Settings to Consider Changing

Open settings with `Ctrl+,` (`Cmd+,` on Mac). These adjustments help beginners:

- **Auto Save:** Search for "auto save" and change it to `afterDelay`. This saves your files
  automatically so you never lose work by forgetting to press `Ctrl+S`.
- **Word Wrap:** Search for "word wrap" and set it to `on`. This prevents long lines from
  scrolling off screen — you'll see all the code without horizontal scrolling.
- **Font Size:** Search for "font size" and increase it if the default (14) feels too small.
  16 or 18 works well for many people.
- **Tab Size:** Search for "tab size." The default is 4 spaces, which is fine for most
  languages. Some people prefer 2.

## Helpful Links

- [VS Code](https://code.visualstudio.com) — Download page
- [VS Code Documentation](https://code.visualstudio.com/docs) — Official docs
- [Extension Marketplace](https://marketplace.visualstudio.com/vscode) — Browse all extensions
- [VS Code Keyboard Shortcuts Reference](https://code.visualstudio.com/docs/getstarted/keybindings#_keyboard-shortcuts-reference) — Printable shortcut cheat sheets

---

*Back to: [Beginner Setup Guide](../00-beginner-setup.md) | [Tutorial Home](../../README.md)*

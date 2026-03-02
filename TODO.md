# TODO: Screenshots to Add

Screenshots will make the beginner setup guide much easier to follow. Here's what to capture and where each screenshot should go in `docs/00-beginner-setup.md`.

## GitHub Account Creation (Step 1)
- [ ] **github-signup.png** — The GitHub.com homepage with the "Sign up" button highlighted
- [ ] **github-plan.png** — The plan selection screen showing the Free plan

## GitHub Desktop (Step 2)
- [ ] **ghdesktop-download.png** — The desktop.github.com download page
- [ ] **ghdesktop-signin.png** — The GitHub Desktop sign-in screen
- [ ] **ghdesktop-configure.png** — The name/email configuration screen

## Cloning the Repository (Step 3)
- [ ] **ghdesktop-clone-menu.png** — File > Clone Repository menu option
- [ ] **ghdesktop-clone-url.png** — The clone dialog with the URL tab selected and the repo URL pasted in
- [ ] **ghdesktop-clone-path.png** — Choosing the local path for the clone
- [ ] **ghdesktop-clone-complete.png** — The repository after cloning is complete

## Visual Studio Code (Step 4)
- [ ] **vscode-download.png** — The VS Code download page
- [ ] **vscode-install-options.png** — The installer with "Add to PATH" and "Open with Code" boxes checked
- [ ] **vscode-open-folder.png** — File > Open Folder in VS Code
- [ ] **vscode-project-view.png** — VS Code with the tutorial project open, showing the file sidebar

## Node.js (Step 5)
- [ ] **nodejs-download.png** — The nodejs.org page with the LTS download button
- [ ] **nodejs-verify.png** — Terminal showing `node --version` output

## Python (Step 6)
- [ ] **python-download.png** — The python.org download page
- [ ] **python-add-to-path.png** — The Python installer with "Add Python to PATH" checkbox highlighted (this is the most important screenshot — many beginners miss this)
- [ ] **python-verify.png** — Terminal showing `python --version` output

## Running the Setup Script (Step 7)
- [ ] **setup-bat-explorer.png** — File Explorer showing setup.bat in the repo folder
- [ ] **setup-bat-running.png** — The setup script running in a command prompt
- [ ] **setup-bat-complete.png** — The setup script finished with success messages

## Anthropic API Key (Step 8)
- [ ] **anthropic-console.png** — The Anthropic console dashboard
- [ ] **anthropic-api-keys.png** — The API Keys section
- [ ] **anthropic-create-key.png** — The "Create Key" dialog
- [ ] **setx-command.png** — Terminal showing the setx command for setting the API key

## Launching Claude Code (Step 9)
- [ ] **claude-startup.png** — Claude Code starting up in the terminal
- [ ] **claude-ready.png** — Claude Code ready for input with the prompt visible

## First Session (Step 10)
- [ ] **claude-first-prompt.png** — Typing the first instruction into Claude Code
- [ ] **claude-first-response.png** — Claude creating the hello.py file
- [ ] **ghdesktop-review-changes.png** — GitHub Desktop showing the new file in the Changes tab
- [ ] **ghdesktop-diff-view.png** — The diff view showing the code Claude wrote
- [ ] **ghdesktop-commit.png** — Writing a commit message and committing

---

## Where to Put Screenshots

Create a folder: `docs/images/`

All screenshots go in that folder. Reference them in the markdown like:

```markdown
![Description of screenshot](images/github-signup.png)
```

## Tips for Good Screenshots

- **Crop tightly** — only show the relevant part of the screen, not the whole desktop
- **Highlight important areas** — use a red box or arrow to point out buttons and checkboxes the user needs to click
- **Use a clean desktop** — close other windows and tabs so the screenshot isn't cluttered
- **Consistent size** — try to keep screenshots roughly the same width (around 800-1000px wide)
- **PNG format** — use PNG for screenshots (not JPG) to keep text crisp

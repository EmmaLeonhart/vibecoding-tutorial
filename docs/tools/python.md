# Python

## What Is Python?

Python is a beginner-friendly programming language known for its clean, readable syntax. It reads almost like English, which makes it one of the easiest languages to pick up. Python is used everywhere — from web apps to data science to automation scripts.

## Why You Need It for Vibe Coding

Many vibe coding projects are built with Python, and tools like **cleanvibe** (our project scaffolding tool) are installed through Python's package manager. Even if you plan to build a JavaScript project, having Python available on your machine is important for your toolchain.

## Installation

1. Go to [python.org/downloads](https://www.python.org/downloads/)
2. Download the latest version (3.12 or newer recommended)
3. Run the installer

**CRITICAL: Check the box that says "Add Python to PATH"** during installation. This is the single most common mistake beginners make. If you miss this, Python commands will not work in your terminal and you will get confusing errors.

On **macOS**, Python 3 may already be installed. You can check by opening a terminal and typing `python3 --version`. If not, download it from python.org or install via Homebrew (`brew install python`).

On **Linux**, Python is usually pre-installed. If not, use your package manager (e.g., `sudo apt install python3 python3-pip` on Ubuntu/Debian).

## Verifying Your Installation

Open a terminal (Command Prompt, PowerShell, or Terminal on Mac/Linux) and run:

```bash
python --version
```

You should see something like `Python 3.12.x`. Then check pip:

```bash
pip --version
```

You should see a version number and a path. If both commands work, you are all set.

> **Note:** On some systems (especially macOS and Linux), you may need to type `python3` and `pip3` instead of `python` and `pip`.

## What Is pip?

**pip** is Python's package manager. It lets you install libraries and tools that other people have built, so you do not have to write everything from scratch. Think of it like an app store for Python code.

## Key pip Commands

| Command | What It Does |
|---|---|
| `pip install <package>` | Installs a package (e.g., `pip install cleanvibe`) |
| `pip install -r requirements.txt` | Installs all packages listed in a requirements file |
| `pip list` | Shows all installed packages |
| `pip uninstall <package>` | Removes a package |

The `requirements.txt` file is a common convention. It lists all the packages a project needs, one per line. When you clone someone's project, running `pip install -r requirements.txt` sets up everything that project depends on.

## Virtual Environments

A virtual environment is an isolated space for a project's dependencies. Without one, every Python project on your machine shares the same set of installed packages, which can cause version conflicts.

**Creating a virtual environment:**

```bash
python -m venv venv
```

This creates a folder called `venv` in your project directory.

**Activating it:**

- **Windows:** `venv\Scripts\activate`
- **macOS/Linux:** `source venv/bin/activate`

When activated, you will see `(venv)` at the beginning of your terminal prompt. Now any `pip install` commands only affect this project.

To deactivate, just type `deactivate`.

> **Tip:** You do not always need a virtual environment for small experiments, but it is good practice for any real project.

## Running Python Scripts

To run a Python file, use:

```bash
python script.py
```

Replace `script.py` with the actual filename. Make sure you are in the same directory as the file, or provide the full path.

## The Python REPL

If you type `python` by itself (with no filename), you enter the **REPL** — an interactive prompt where you can type Python code line by line and see results immediately.

```
$ python
>>> print("Hello!")
Hello!
>>> 2 + 2
4
>>> exit()
```

Type `exit()` to leave the REPL and return to your normal terminal.

The REPL is great for quick experiments and testing small snippets of code.

## Common Issues

**"python is not recognized as an internal or external command"**
This means Python is not in your system PATH. The fix: reinstall Python and make sure you check "Add Python to PATH." Alternatively, try `python3` instead of `python`.

**"pip is not recognized"**
Same cause — pip is not in your PATH. Reinstalling Python with the PATH option checked usually fixes this. You can also try `python -m pip` as an alternative way to run pip.

**"Permission denied" errors on macOS/Linux**
Do not use `sudo pip install`. Instead, use a virtual environment or add the `--user` flag: `pip install --user <package>`.

## Useful Links

- [python.org](https://www.python.org/) — Official Python website and downloads
- [pip documentation](https://pip.pypa.io/) — Official pip docs
- [Real Python](https://realpython.com/) — Excellent tutorials and guides for all skill levels

---

*Back to: [Beginner Setup Guide](../00-beginner-setup.md) | [Tutorial Home](../../README.md)*

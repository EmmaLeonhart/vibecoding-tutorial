# Environment Variables and Secrets

## What Are Environment Variables?

Environment variables are key-value settings that exist at the system level, outside your code. Your programs can read them at runtime. They're the standard way to handle configuration that changes between environments (your laptop vs. a production server) and secrets that should never appear in your source code.

## Why They Matter

If you put an API key directly in your code and push it to GitHub, anyone can find it. Bots actively scan GitHub for exposed credentials and will abuse them within minutes. Environment variables keep secrets out of your code and out of your git history.

**The rule is simple:** if it's secret or environment-specific, it goes in an environment variable.

## Setting Environment Variables

### Mac / Linux

**Temporary** (lasts until you close the terminal):
```bash
export WEATHER_API_KEY="abc123def456"
```

**Permanent** (add to your shell profile):
```bash
# For zsh (default on modern macOS):
echo 'export WEATHER_API_KEY="abc123def456"' >> ~/.zshrc
source ~/.zshrc

# For bash:
echo 'export WEATHER_API_KEY="abc123def456"' >> ~/.bashrc
source ~/.bashrc
```

### Windows

**Temporary** (current Command Prompt session only):
```cmd
set WEATHER_API_KEY=abc123def456
```

**Permanent:**
```cmd
setx WEATHER_API_KEY "abc123def456"
```
Note: `setx` changes take effect in new terminal windows, not the current one.

**PowerShell (temporary):**
```powershell
$env:WEATHER_API_KEY = "abc123def456"
```

## Reading Environment Variables in Your Code

### Python

```python
import os

# Get the variable (returns None if not set)
api_key = os.environ.get("WEATHER_API_KEY")

# Get with a default value
debug = os.environ.get("DEBUG", "false")

# Get and raise an error if it's missing
api_key = os.environ["WEATHER_API_KEY"]  # Raises KeyError if not set
```

### Node.js / JavaScript

```javascript
// Get the variable (returns undefined if not set)
const apiKey = process.env.WEATHER_API_KEY;

// Use with a default
const port = process.env.PORT || 3000;
```

## The .env File

Setting environment variables in your shell gets tedious fast. A `.env` file stores them in your project directory instead:

```
# .env
WEATHER_API_KEY=abc123def456
DATABASE_URL=postgresql://user:password@localhost:5432/mydb
DEBUG=true
FLASK_SECRET_KEY=super-secret-random-string
```

### Python: python-dotenv

```bash
pip install python-dotenv
```

```python
from dotenv import load_dotenv
import os

load_dotenv()  # Reads .env file and loads variables

api_key = os.environ.get("WEATHER_API_KEY")
```

### Node.js: dotenv

```bash
npm install dotenv
```

```javascript
require('dotenv').config();

const apiKey = process.env.WEATHER_API_KEY;
```

## The Golden Rule: .gitignore

Your `.env` file contains real secrets. It must **never** be committed to git.

Add it to your `.gitignore` file:

```
# .gitignore
.env
.env.local
.env.production
```

Do this **before your first commit**. If `.env` is already tracked, adding it to `.gitignore` won't remove it from git history. You'd need to remove it explicitly:

```bash
git rm --cached .env
```

## The .env.example File

Since `.env` isn't committed, new developers won't know what variables they need. Create a `.env.example` file that shows the required variables without real values:

```
# .env.example -- Copy this to .env and fill in your values
WEATHER_API_KEY=your_api_key_here
DATABASE_URL=postgresql://user:password@localhost:5432/dbname
DEBUG=true
```

This file **should** be committed to git. It serves as documentation.

## Common Environment Variables

| Variable | Purpose | Example |
|----------|---------|---------|
| `API_KEY` | Third-party API authentication | `sk-abc123...` |
| `DATABASE_URL` | Database connection string | `postgresql://user:pass@host/db` |
| `SECRET_KEY` | Session/encryption key | Random long string |
| `DEBUG` | Enable debug mode | `true` or `false` |
| `PORT` | Server port number | `5000` |
| `NODE_ENV` | Node.js environment | `development` or `production` |

## What to Tell Claude Code

Here are effective prompts for setting up environment variables:

> "This project needs an API key. Set it up to read from an environment variable. Create a .env.example file and make sure .env is in .gitignore."

> "Add python-dotenv to this project. Update the code to load the database URL and API key from environment variables instead of hardcoding them."

> "Check this project for any hardcoded secrets or API keys. Move them to environment variables and create a .env.example file."

## If You Accidentally Commit a Secret

It happens. Here's what to do:

1. **Rotate the secret immediately.** Generate a new API key, password, or token from the service's dashboard. The old one is compromised.
2. **Remove it from your code** and switch to environment variables.
3. **Don't try to just delete it in a new commit.** The old value is still in your git history and can be found.
4. If the repo is public, assume the secret was seen by someone.

The only safe response is to rotate (replace) the compromised credential.

## Useful Links

- [python-dotenv documentation](https://pypi.org/project/python-dotenv/)
- [dotenv for Node.js](https://www.npmjs.com/package/dotenv)
- [GitHub: Removing sensitive data from a repository](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)

---

*Back to: [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)*

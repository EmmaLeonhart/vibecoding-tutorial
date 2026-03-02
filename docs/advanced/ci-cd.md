# CI/CD with GitHub Actions

## What Is CI/CD?

**CI (Continuous Integration)** means automatically running your tests every time you push code. **CD (Continuous Deployment)** means automatically deploying after tests pass. Together, they catch bugs before production and eliminate manual deployment steps.

## Why It Matters

Without CI/CD, you forget to run tests, broken code gets merged, and deployments are manual and error-prone. With CI/CD, every push is tested automatically, and deployments happen on their own when tests pass.

## GitHub Actions Basics

GitHub Actions is GitHub's built-in CI/CD system. It's free for public repos and has a generous free tier for private ones.

| Term | What It Means |
|------|--------------|
| **Workflow** | An automated process defined in a YAML file |
| **Trigger** | What starts the workflow (push, pull request, schedule) |
| **Job** | A set of steps that runs on a virtual machine |
| **Step** | A single task within a job |

Workflows live in `.github/workflows/` and GitHub automatically detects any `.yml` file there.

## Example: Run Tests on Every Push (Python)

Create `.github/workflows/tests.yml`:

```yaml
name: Run Tests

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: "3.12"
      - run: pip install -r requirements.txt
      - run: pytest
```

## Example: Lint Code on Every Push

Create `.github/workflows/lint.yml`:

```yaml
name: Lint Code

on: [push, pull_request]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: "3.12"
      - run: pip install flake8 black
      - run: black --check .
      - run: flake8 .
```

## Example: Auto-Deploy on Push to Main

### Deploy to GitHub Pages

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    permissions:
      pages: write
      id-token: write
    steps:
      - uses: actions/checkout@v4
      - uses: actions/configure-pages@v4
      - uses: actions/upload-pages-artifact@v3
        with:
          path: "./public"
      - uses: actions/deploy-pages@v4
```

### Trigger a Render Deploy

```yaml
name: Deploy to Render

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - run: curl -X POST ${{ secrets.RENDER_DEPLOY_HOOK }}
```

## Viewing Workflow Results

Go to your repository's **Actions** tab on GitHub. You'll see a **green checkmark** for passing workflows and a **red X** for failures. Click into any run for detailed logs. On pull requests, check status appears in the PR conversation. You can block merging if checks fail via Settings > Branches > Branch protection rules.

## Secrets in GitHub Actions

Never put API keys in workflow files. Use GitHub's encrypted secrets:

1. Go to **Settings > Secrets and variables > Actions**
2. Click **New repository secret**
3. Reference in workflows with `${{ secrets.SECRET_NAME }}`

```yaml
steps:
  - name: Deploy
    run: ./deploy.sh
    env:
      API_KEY: ${{ secrets.API_KEY }}
```

Secrets are encrypted and automatically redacted from logs.

## What to Tell Claude Code

> "Set up GitHub Actions for this project. Add a workflow that runs the tests on every push and pull request. Use Python 3.12 and install dependencies from requirements.txt."

> "Add a GitHub Actions workflow that lints the code with flake8 and checks formatting with black on every pull request."

> "Create a CI/CD pipeline that runs tests on push and auto-deploys to Render when the main branch is updated. Use repository secrets for the deploy hook URL."

## Useful Links

- [GitHub Actions documentation](https://docs.github.com/en/actions)
- [GitHub Actions marketplace](https://github.com/marketplace?type=actions)
- [Workflow syntax reference](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions)

---

*Back to: [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)*

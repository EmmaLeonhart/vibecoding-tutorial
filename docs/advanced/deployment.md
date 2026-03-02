# Deploying Your Projects

## What Is Deployment?

Deployment means making your project available on the internet so anyone can use it. During development you run things on `localhost` -- deployment puts it on a real server with a real URL.

## Choosing a Platform

### Static Sites (HTML/CSS/JS only)

These platforms serve static files for free:

| Platform | Free Tier | Best For |
|----------|-----------|----------|
| [GitHub Pages](https://pages.github.com/) | Unlimited | Project sites, portfolios |
| [Netlify](https://www.netlify.com/) | 100 GB bandwidth/month | Sites with build steps |
| [Vercel](https://vercel.com/) | 100 GB bandwidth/month | Next.js and React apps |

### Web Applications (Python, Node.js, etc.)

These platforms run server-side code:

| Platform | Free Tier | Best For |
|----------|-----------|----------|
| [Render](https://render.com/) | 750 hours/month | Flask, Django, Express |
| [Railway](https://railway.app/) | $5 credit/month | Full-stack apps |
| [PythonAnywhere](https://www.pythonanywhere.com/) | 1 web app | Python-only projects |
| [Fly.io](https://fly.io/) | 3 shared VMs | Docker-based deployments |

### Databases in Production

Don't run a database on your laptop for production. Use managed services:

- **PostgreSQL:** Render, Railway, Supabase (all have free tiers)
- **SQLite:** Fine for small apps -- the database file lives on the server
- **MongoDB:** MongoDB Atlas has a free tier

## The General Workflow

Most modern deployment follows this pattern:

```
Write code locally
    → Push to GitHub
        → Hosting platform detects the push
            → Builds and deploys automatically
```

Once connected, every push to your main branch triggers a new deployment. You never manually upload files.

## Step-by-Step: Deploying a Flask App to Render

### 1. Prepare Your Project

Make sure your project has these files:

**requirements.txt** (list your dependencies):
```
flask==3.1.0
gunicorn==23.0.0
python-dotenv==1.1.0
```

Generate it automatically if needed:
```bash
pip freeze > requirements.txt
```

**Your app should read the port from an environment variable:**
```python
import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, World!"

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)
```

### 2. Push to GitHub

Make sure your code is in a GitHub repository with all changes committed and pushed.

### 3. Create a Render Account and Deploy

1. Go to [render.com](https://render.com/) and sign up with GitHub
2. Click **New > Web Service**
3. Connect your GitHub repository
4. Configure the service:
   - **Build command:** `pip install -r requirements.txt`
   - **Start command:** `gunicorn app:app`
5. Add environment variables under **Environment**
6. Click **Create Web Service**

Render gives you a URL like `https://your-app.onrender.com`.

### 4. Set Environment Variables

In the Render dashboard, go to your service > **Environment** and add your variables (API keys, database URLs, etc.). Never put these in your code.

## Step-by-Step: Deploying a Static Site to Netlify

### 1. Push Your Site to GitHub

Your repository should contain your HTML, CSS, and JavaScript files. If you use a build tool, make sure the build output is configured.

### 2. Connect to Netlify

1. Go to [netlify.com](https://www.netlify.com/) and sign up with GitHub
2. Click **Add new site > Import an existing project**
3. Select your GitHub repository
4. Configure build settings:
   - **Build command:** Leave blank for plain HTML, or use your build command (e.g., `npm run build`)
   - **Publish directory:** `.` for plain HTML, or `build`/`dist` for frameworks
5. Click **Deploy site**

### 3. Auto-Deploys

From now on, every push to your main branch automatically triggers a new deployment. Netlify also creates preview deployments for pull requests.

## Custom Domains

All these platforms let you use your own domain name:

1. Buy a domain from a registrar (Namecheap, Cloudflare, etc.)
2. In your hosting platform's dashboard, add the custom domain
3. Update your DNS settings at your registrar (the platform will tell you exactly what records to add)
4. Wait for DNS propagation (usually a few minutes to a few hours)
5. HTTPS certificates are usually provided automatically

## Environment Variables in Production

Every hosting platform has a way to set environment variables through their dashboard. This is where your production API keys, database URLs, and secrets go.

**Never:**
- Hardcode secrets in your code
- Commit `.env` files to git
- Use the same API keys for development and production

**Always:**
- Use the platform's environment variable settings
- Use different credentials for development and production
- Rotate credentials if they're ever exposed

## What to Tell Claude Code

Here are effective prompts for deployment preparation:

> "Prepare this project for deployment on Render. Add the necessary configuration files and update the README with deployment instructions."

> "This Flask app needs to be production-ready. Add gunicorn to requirements.txt, make sure the port is configurable via environment variable, and create a render.yaml configuration file."

> "Set up this project for Netlify deployment. Add a netlify.toml with the right build settings and configure redirects for the single-page app."

> "Create a Procfile and runtime.txt for deploying this Python app. Make sure all hardcoded values are replaced with environment variables."

## Useful Links

- [Render documentation](https://render.com/docs)
- [Railway documentation](https://docs.railway.app/)
- [Netlify documentation](https://docs.netlify.com/)
- [Vercel documentation](https://vercel.com/docs)
- [PythonAnywhere help](https://help.pythonanywhere.com/)

---

*Back to: [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)*

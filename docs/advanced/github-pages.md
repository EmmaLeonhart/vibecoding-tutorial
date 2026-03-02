# GitHub Pages: Free Website Hosting

## What Is GitHub Pages?

GitHub Pages is free static site hosting built right into GitHub. You push your code to a repository, and GitHub serves it as a live website. No server setup, no hosting fees, no complicated configuration.

You can host:
- **Personal websites** and portfolios
- **Project documentation** for your open-source work
- **Blogs** with posts written in Markdown
- **Resumes and CV pages** to share with employers

Your site lives at `https://username.github.io` or `https://username.github.io/repo-name`.

## Step-by-Step: Creating a GitHub Pages Site

### 1. Create a Repository

For a **personal site**, create a repo named exactly `username.github.io` (replace `username` with your GitHub username). This gives you the clean URL `https://username.github.io`.

For a **project site**, use any repository name. The site will be available at `https://username.github.io/repo-name`.

### 2. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** > **Pages** (in the left sidebar)
3. Under **Source**, select the branch you want to deploy from (`main` or `gh-pages`)
4. Click **Save**
5. Wait a minute or two, then visit your URL

### 3. Add Your Content

At minimum, you need an `index.html` file in the root of your chosen branch. GitHub Pages will serve that as your homepage.

## Building a Simple Site with HTML/CSS

You don't need any frameworks or build tools. A basic site structure looks like this:

```
my-site/
  index.html
  projects.html
  contact.html
  css/
    style.css
  images/
    photo.jpg
```

Write plain HTML files, link a CSS stylesheet, and push to GitHub. That's it -- your site is live.

## Using Jekyll (Built-In Static Site Generator)

GitHub Pages has built-in support for [Jekyll](https://jekyllrb.com/), a static site generator that turns Markdown files into a full website.

**Quick setup:**

1. Add a `_config.yml` to your repo root:
   ```yaml
   title: My Site
   description: A personal website
   theme: minima
   ```

2. Write pages in Markdown (Jekyll converts them to HTML automatically)

3. Create blog posts in a `_posts/` folder with filenames like `2025-01-15-my-first-post.md`

GitHub supports several [built-in themes](https://pages.github.com/themes/) you can activate with a single line in `_config.yml`.

## Using Other Static Site Generators

If you prefer Hugo, Eleventy, Next.js (static export), or another generator, you can use **GitHub Actions** to build and deploy. The workflow builds your site on GitHub's servers and pushes the output to GitHub Pages.

Most generators have ready-made GitHub Actions workflows in the [Actions marketplace](https://github.com/marketplace?type=actions).

## Custom Domain Setup

Want your site at `www.yourdomain.com` instead of `username.github.io`? Here's how:

### 1. Buy a Domain

Popular registrars include:
- [Namecheap](https://www.namecheap.com/)
- [Cloudflare Registrar](https://www.cloudflare.com/products/registrar/)
- [Google Domains](https://domains.google/) (now part of Squarespace)

### 2. Add a CNAME File

Create a file called `CNAME` (no extension) in your repo root. Put your domain in it:

```
www.yourdomain.com
```

### 3. Configure DNS at Your Registrar

For the **apex domain** (`yourdomain.com`), add these A records pointing to GitHub's servers:

```
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
```

For the **www subdomain**, add a CNAME record:

```
www  →  username.github.io
```

### 4. Enable HTTPS

In your repo's **Settings > Pages**, check **Enforce HTTPS**. GitHub provides free SSL certificates via Let's Encrypt.

### 5. Wait for DNS Propagation

DNS changes can take anywhere from a few minutes to 48 hours to propagate worldwide. Be patient.

## What to Tell Claude Code

Here are effective prompts for building GitHub Pages sites:

> "Create a personal portfolio site for GitHub Pages. Include an index page with my name and bio, a projects page, and a contact page. Use clean, modern CSS. Make it responsive for mobile."

> "Set up a Jekyll blog in this repository. Configure _config.yml with the minima theme, create a landing page, and add two sample blog posts."

> "Build a project documentation site with a homepage, getting started guide, and API reference page. Use a clean sidebar navigation layout."

## Example Projects

- **Portfolio site** -- showcase your projects with screenshots and descriptions
- **Blog** -- write about what you're learning using Markdown and Jekyll
- **Project documentation** -- create a polished docs site for your open-source project
- **Resume/CV page** -- a single-page resume that's always up to date

## Useful Links

- [GitHub Pages home](https://pages.github.com/)
- [GitHub Pages documentation](https://docs.github.com/en/pages)
- [Jekyll documentation](https://jekyllrb.com/docs/)
- [Supported Jekyll themes](https://pages.github.com/themes/)

---

*Back to: [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)*

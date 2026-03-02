# Docker Basics: Containerize Your Projects

## What Is Docker?

Docker packages your application and all of its dependencies -- the language runtime, libraries, system tools, configuration files -- into a single unit called a **container**. That container runs the same way on every machine, whether it's your laptop, your teammate's desktop, or a cloud server.

The classic developer headache of "it works on my machine" goes away.

## When to Use Docker

- **Deploying applications** to production servers consistently
- **Running databases locally** (PostgreSQL, MySQL, Redis) without installing them on your system
- **Sharing reproducible environments** so anyone can run your project with one command
- **Isolating projects** that need different versions of the same language or tool

## Installation

- **Windows / Mac:** Download [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- **Linux:** Install Docker Engine via your package manager ([instructions](https://docs.docker.com/engine/install/))

After installation, verify it works:

```bash
docker --version
docker run hello-world
```

## Key Concepts

| Concept | What It Is |
|---------|-----------|
| **Image** | A blueprint for a container. Like a recipe. |
| **Container** | A running instance of an image. Like the meal made from the recipe. |
| **Dockerfile** | Instructions for building an image. |
| **docker-compose** | A tool for running multiple containers together. |

## Dockerfile Basics

A Dockerfile tells Docker how to build your image. Here's one for a simple Python app:

```dockerfile
# Start from an official Python image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements first (for better caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Tell Docker what command to run
CMD ["python", "app.py"]
```

**Key instructions:**
- `FROM` -- the base image to start from
- `WORKDIR` -- set the working directory inside the container
- `COPY` -- copy files from your machine into the container
- `RUN` -- execute a command during the build (install dependencies, etc.)
- `CMD` -- the command to run when the container starts

Build and run it:

```bash
docker build -t my-app .
docker run my-app
```

## Docker Compose: Multiple Services

Most real apps need more than one service. A web app might need a database and a cache. Docker Compose lets you define and run all of them together.

Create a `docker-compose.yml` file:

```yaml
version: "3.8"

services:
  web:
    build: .
    ports:
      - "5000:5000"
    environment:
      - DATABASE_URL=postgresql://user:password@db:5432/myapp
    depends_on:
      - db

  db:
    image: postgres:16
    environment:
      - POSTGRES_USER=user
      - POSTGRES_PASSWORD=password
      - POSTGRES_DB=myapp
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

Start everything with one command:

```bash
docker-compose up
```

## Essential Commands

```bash
# Build an image from a Dockerfile
docker build -t my-app .

# Run a container
docker run my-app

# Run with port mapping and in the background
docker run -d -p 5000:5000 my-app

# Start all services defined in docker-compose.yml
docker-compose up

# Start in the background
docker-compose up -d

# Stop all services
docker-compose down

# List running containers
docker ps

# View container logs
docker logs <container-id>

# Open a shell inside a running container
docker exec -it <container-id> bash
```

## What to Tell Claude Code

Here are effective prompts for Docker setup:

> "Add Docker support to this project. Create a Dockerfile and docker-compose.yml that runs the app and any databases it needs."

> "Create a Dockerfile for this Python Flask app. It should install dependencies from requirements.txt and expose port 5000."

> "Set up a docker-compose.yml with a Node.js app and a PostgreSQL database. Include a volume for persistent data."

## Common Gotchas

- **Forgot to expose a port?** Use `-p host:container` in `docker run` or the `ports` section in docker-compose
- **Changes not showing up?** Rebuild with `docker build --no-cache -t my-app .`
- **Container exits immediately?** Check logs with `docker logs <container-id>` -- your app probably crashed

## Useful Links

- [Docker official site](https://www.docker.com/)
- [Docker documentation](https://docs.docker.com/)
- [Docker Hub (pre-built images)](https://hub.docker.com/)
- [Docker Compose documentation](https://docs.docker.com/compose/)

---

*Back to: [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)*

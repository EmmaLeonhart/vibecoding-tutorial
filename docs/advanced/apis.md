# Working with APIs

## What Is an API?

An API (Application Programming Interface) is a way for programs to talk to each other. When you use a weather app on your phone, it calls a weather API to get forecast data. Your program sends a request, and the API sends back structured data.

## REST APIs: The Basics

Most web APIs follow the REST pattern. They're URLs that return data instead of web pages. Visiting `https://api.github.com/users/octocat` in your browser returns JSON data about a GitHub user.

### HTTP Methods

| Method | Purpose | Example |
|--------|---------|---------|
| `GET` | Read data | Get a list of users |
| `POST` | Create data | Create a new user |
| `PUT` | Update data | Update a user's email |
| `DELETE` | Remove data | Delete a user |

### JSON Format

APIs send and receive data in JSON format:

```json
{
  "name": "Alice",
  "age": 30,
  "languages": ["Python", "JavaScript"],
  "active": true
}
```

If you can read a Python dictionary, you can read JSON.

## Making API Calls in Python

Install the `requests` library (`pip install requests`), then fetch data:

```python
import requests

response = requests.get("https://api.github.com/users/octocat")
data = response.json()

print(f"Name: {data['name']}")
print(f"Public repos: {data['public_repos']}")
```

Send data with a POST request:

```python
import requests

payload = {"title": "Buy groceries", "completed": False}
response = requests.post("https://jsonplaceholder.typicode.com/todos", json=payload)
print(response.status_code)  # 201 means created
```

## API Keys and Authentication

Many APIs require an API key. **Never put API keys directly in your code or commit them to git.**

Use environment variables instead (see the [Environment Variables guide](./environment-variables.md)):

```python
import os, requests

api_key = os.environ.get("WEATHER_API_KEY")
url = f"https://api.openweathermap.org/data/2.5/weather?q=London&appid={api_key}"
response = requests.get(url)
data = response.json()
print(f"Weather: {data['weather'][0]['description']}")
```

## Building Your Own API with Flask

```python
from flask import Flask, jsonify, request

app = Flask(__name__)
todos = []

@app.route("/todos", methods=["GET"])
def get_todos():
    return jsonify(todos)

@app.route("/todos", methods=["POST"])
def add_todo():
    todo = request.json
    todos.append(todo)
    return jsonify(todo), 201

if __name__ == "__main__":
    app.run(debug=True)
```

## Rate Limiting

Most APIs limit how many requests you can make per minute or day. Exceeding the limit returns a `429 Too Many Requests` error. Respect limits by adding delays between requests, caching responses, and checking `X-RateLimit-Remaining` headers.

## Free Public APIs for Practice

| API | What It Does | Auth Required? |
|-----|-------------|---------------|
| [JSONPlaceholder](https://jsonplaceholder.typicode.com/) | Fake data for testing | No |
| [PokéAPI](https://pokeapi.co/) | Pokemon data | No |
| [The Dog API](https://thedogapi.com/) | Dog breeds and images | Free key |
| [OpenWeatherMap](https://openweathermap.org/api) | Weather data | Free key |
| [NASA APIs](https://api.nasa.gov/) | Space photos and data | Free key |

## What to Tell Claude Code

> "Create a Python script that uses the OpenWeatherMap API to fetch the current weather for a city entered by the user. Display the temperature, humidity, and conditions in a nicely formatted output. Store the API key in an environment variable."

> "Build a Flask API with endpoints for creating, reading, updating, and deleting notes. Store them in a SQLite database."

> "Write a script that fetches the top posts from the Reddit API and saves them to a CSV file."

## Useful Links

- [Requests library documentation](https://requests.readthedocs.io/)
- [Public APIs list](https://github.com/public-apis/public-apis) -- hundreds of free APIs
- [HTTP status codes reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)

---

*Back to: [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)*

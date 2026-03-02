# Project Ideas for Beginners

You've got your tools set up. Now what do you actually build?

This page has a collection of starter projects organized by difficulty. Each one includes **exactly what to tell Claude** to get started, plus ideas for expanding the project once the basics are working.

The key to vibe coding is starting simple and building up. Don't try to build everything at once — get one thing working, commit it, then add the next feature.

---

## How to Start Any Project

For every project below, the workflow is the same:

1. Open a terminal and create a new project:
   ```
   cleanvibe new my-project-name
   cd my-project-name
   ```
2. Launch Claude Code:
   ```
   claude
   ```
3. Give Claude the instruction listed under "What to tell Claude"
4. Review changes in GitHub Desktop
5. Commit and keep building

---

## Beginner Projects

### 1. Personal To-Do List App

A command-line to-do list that saves your tasks to a file.

**What to tell Claude:**

> Create a Python command-line to-do list app. It should let me add tasks, mark them as done, delete tasks, and list all tasks. Save the tasks to a JSON file so they persist between runs. Use a simple numbered menu for navigation.

**Expand it later:**
- "Add due dates to tasks and show overdue items in red"
- "Add priority levels (high, medium, low) and let me sort by priority"
- "Add categories so I can group tasks by project"

---

### 2. Quiz Game

A multiple-choice quiz that reads questions from a file and keeps score.

**What to tell Claude:**

> Build a Python quiz game. Create a JSON file with at least 15 trivia questions, each with 4 multiple choice answers. The game should ask questions in random order, track the score, and show results at the end with which ones you got wrong.

**Expand it later:**
- "Add different difficulty levels that pull from different question sets"
- "Add a high score system that saves the top 10 scores to a file"
- "Let users add their own questions through a menu option"

---

### 3. Simple Calculator

A calculator that handles basic math and keeps a history.

**What to tell Claude:**

> Create a Python calculator that takes input like '5 + 3' or '10 * 2.5' and gives the result. Support add, subtract, multiply, divide, and power operations. Keep a history of all calculations that the user can view. Handle errors nicely — like division by zero.

**Expand it later:**
- "Add support for parentheses so I can do things like (5 + 3) * 2"
- "Add a unit conversion mode for common conversions like miles to km, Fahrenheit to Celsius"
- "Save the calculation history to a file"

---

### 4. Password Generator

A tool that creates strong passwords with customizable settings.

**What to tell Claude:**

> Build a Python password generator. Let the user choose the password length and whether to include uppercase, lowercase, numbers, and special characters. Generate the password and copy it to the clipboard. Also rate the password strength.

**Expand it later:**
- "Add a mode that generates memorable passphrases using random words"
- "Let the user save generated passwords with labels to an encrypted file"
- "Add a password strength checker that can analyze any password the user types in"

---

### 5. Expense Tracker

Track spending and see where your money goes.

**What to tell Claude:**

> Create a Python expense tracker. It should let me log expenses with an amount, category (food, transport, entertainment, etc.), and date. Store everything in a CSV file. Include commands to see total spending, spending by category, and a summary for any given month.

**Expand it later:**
- "Add a monthly budget feature where I set limits per category and get warnings when I'm close"
- "Create a simple bar chart visualization of spending by category using matplotlib"
- "Add income tracking so I can see my net balance"

---

## Intermediate Projects

### 6. Weather Dashboard

Fetch real weather data and display it in the terminal.

**What to tell Claude:**

> Build a Python weather app that uses the OpenWeatherMap free API to fetch current weather for any city. Display temperature, humidity, wind speed, and a description. Let the user save favorite cities so they can quickly check them. Show temperatures in both Fahrenheit and Celsius.

**Expand it later:**
- "Add a 5-day forecast display"
- "Add weather alerts if conditions are extreme"
- "Create a simple web version using Flask that shows the same data in a browser"

---

### 7. Markdown Note-Taking App

A personal note system that saves and organizes markdown files.

**What to tell Claude:**

> Create a Python note-taking app. Notes are stored as markdown files in a 'notes' folder. I should be able to create new notes, list all notes, search notes by content, view a note, and delete notes. Each note should auto-include a timestamp when created.

**Expand it later:**
- "Add tags to notes and let me filter by tag"
- "Add a 'daily journal' command that creates a dated entry with a template"
- "Build a simple web interface using Flask where I can browse and edit my notes in a browser"

---

### 8. File Organizer

A script that automatically sorts messy download folders.

**What to tell Claude:**

> Build a Python script that organizes files in a folder by their type. It should move images to an 'Images' folder, documents to 'Documents', videos to 'Videos', music to 'Music', and everything else to 'Other'. Have it work on any folder I specify as a command-line argument. Show a summary of what was moved.

**Expand it later:**
- "Add a 'watch mode' that monitors the folder and auto-sorts new files as they appear"
- "Add duplicate file detection that finds files with the same content"
- "Let me configure custom rules in a config file, like moving .psd files to a 'Design' folder"

---

### 9. Flashcard Study App

A spaced repetition study tool.

**What to tell Claude:**

> Create a Python flashcard app. Let me create decks of flashcards with a front (question) and back (answer). When studying, show cards using a spaced repetition algorithm — cards I get wrong come back sooner, cards I get right come back later. Save all progress to a JSON file.

**Expand it later:**
- "Add the ability to import flashcards from a CSV file"
- "Add statistics showing my accuracy over time for each deck"
- "Build a web interface using Flask so I can study in a browser"

---

### 10. Personal Website Generator

Turn markdown files into a simple static website.

**What to tell Claude:**

> Build a Python static site generator. It should read markdown files from a 'content' folder, convert them to HTML using a template, and output a complete website to a 'build' folder. Include a basic CSS stylesheet that makes it look clean and modern. The homepage should list all pages with links.

**Expand it later:**
- "Add a blog section where posts are sorted by date"
- "Add syntax highlighting for code blocks"
- "Add a built-in development server that auto-reloads when I change files"

---

## Ambitious Projects

These are bigger, but totally achievable with vibe coding. Just build them one feature at a time.

### 11. Discord Bot

A bot for your Discord server.

**What to tell Claude:**

> Create a Python Discord bot using discord.py. It should respond to commands: !hello (greeting), !roll (random dice roll), !poll (create a simple yes/no poll with reactions), and !remind (set a reminder that pings the user after a set time). Include clear setup instructions in the README.

---

### 12. Web Scraper and Data Analyzer

Collect data from websites and analyze it.

**What to tell Claude:**

> Build a Python web scraper using requests and BeautifulSoup that scrapes product listings from a sample e-commerce page. Collect the name, price, and rating for each product. Save the data to a CSV file. Then create a separate analysis script that reads the CSV and shows statistics — average price, highest rated items, price distribution.

---

### 13. Simple REST API

Build your own API that other programs can talk to.

**What to tell Claude:**

> Create a simple REST API using Python and Flask. Make a "bookshelf" API where I can add books (title, author, year, rating), list all books, search by author, update a book's rating, and delete books. Store data in a SQLite database. Include a README with API documentation showing all the endpoints and example requests.

---

### 14. Chat Application

A real-time chat app that runs in the browser.

**What to tell Claude:**

> Build a simple chat application using Python Flask and Flask-SocketIO. Users enter a username and can send messages in a chat room. Messages should appear in real-time without refreshing the page. Show timestamps and usernames. Keep the last 100 messages in memory so new users can see recent history.

---

### 15. Budget Dashboard Web App

A visual budget tracker with charts.

**What to tell Claude:**

> Create a web-based budget dashboard using Python Flask. It should have a form to add income and expenses with categories and dates. Show a dashboard page with total balance, monthly spending chart (using Chart.js), and spending breakdown by category as a pie chart. Store everything in a SQLite database.

---

## General Tips for Talking to Claude

Here are some useful prompts that work for any project:

### Starting Out
- "Explain the project structure you created and what each file does"
- "Walk me through the main logic step by step"
- "What would I need to change to add [feature]?"

### When Things Break
- "I got this error: [paste error]. What's wrong and how do we fix it?"
- "The program runs but [describe wrong behavior]. Debug this."
- "Run the tests and fix anything that's failing"

### Improving Your Project
- "Add unit tests for the main functions"
- "Add input validation so the program doesn't crash on bad input"
- "Refactor this to be cleaner and add comments explaining the logic"
- "Add a help command that explains all available options"

### Learning From Your Project
- "Explain what this function does line by line"
- "Why did you choose this approach? What are the alternatives?"
- "What are the most important concepts a beginner should understand in this code?"

### Documentation
- "Update the README to explain how to install and run this project"
- "Add docstrings to all the functions"
- "Create a CHANGELOG entry for the features we just added"

---

## One More Thing

Don't feel like you have to finish a project to learn from it. Starting three projects and getting halfway through each one teaches you more than agonizing over one project trying to make it perfect.

Build things. Break things. Ask Claude why things broke. That's the loop.

---

**Back to:** [Tutorial Home](../README.md) | [Beginner Setup Guide](00-beginner-setup.md)

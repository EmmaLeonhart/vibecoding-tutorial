# SQLite

## What Is SQLite?

SQLite is a file-based database that stores everything in a single file on your computer. Unlike
most databases, it doesn't need a separate server running in the background. You don't install
anything — it's already built into Python. Just `import sqlite3` and you're ready to go.

This makes SQLite the easiest database to start with. There's no setup, no configuration, no
accounts to create. Your database is just a file like `my_app.db` sitting in your project folder.

## When to Use SQLite

SQLite is a great choice when:

- You're building a **small to medium application** (personal tools, local utilities, side projects)
- You're **prototyping** and want to get a database working fast without any setup
- Your app stores data **locally** on one machine (desktop apps, CLI tools)
- You're building a **mobile app** — both Android and iOS use SQLite under the hood
- You want to learn SQL basics without the overhead of running a database server

## When NOT to Use SQLite

SQLite isn't the right fit when:

- You're building a **high-concurrency web app** where many users write data at the same time
- You need **multi-user write-heavy workloads** — SQLite locks the entire database on writes
- Your dataset is extremely large (multiple gigabytes) and you need advanced indexing
- You need your database on a separate server from your application

For those cases, look at PostgreSQL or MySQL instead. But for learning and building personal
projects, SQLite handles far more than most people expect.

## No Installation Needed

SQLite comes bundled with Python. Open a terminal and test it:

```python
python3 -c "import sqlite3; print(sqlite3.sqlite_version)"
```

If that prints a version number, you're ready. No `pip install` required.

## Basic Concepts

If you've never used a database before, here's the vocabulary:

- **Table** — A structured collection of data, like a spreadsheet. A database can have many tables.
- **Row** — A single record in a table (like one line in a spreadsheet).
- **Column** — A field that each row has (like a spreadsheet column header: "name", "email", "age").
- **SQL** — Structured Query Language. The language you use to talk to the database — creating
  tables, inserting data, searching, updating, and deleting.

## Quick Example

Here's a complete Python script that creates a database, adds a table, inserts some data, and
queries it:

```python
import sqlite3

# Connect to a database file (creates it if it doesn't exist)
conn = sqlite3.connect("books.db")
cursor = conn.cursor()

# Create a table
cursor.execute("""
    CREATE TABLE IF NOT EXISTS books (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        author TEXT NOT NULL,
        year INTEGER
    )
""")

# Insert some data
cursor.execute("INSERT INTO books (title, author, year) VALUES (?, ?, ?)",
               ("Dune", "Frank Herbert", 1965))
cursor.execute("INSERT INTO books (title, author, year) VALUES (?, ?, ?)",
               ("Neuromancer", "William Gibson", 1984))
conn.commit()

# Query all books
cursor.execute("SELECT * FROM books")
for row in cursor.fetchall():
    print(row)

# Search for a specific book
cursor.execute("SELECT * FROM books WHERE author = ?", ("Frank Herbert",))
print(cursor.fetchone())

conn.close()
```

Run this script and you'll see a `books.db` file appear in your folder. That file **is** your
database.

## Viewing Your Database Visually

You don't have to query everything from code. **DB Browser for SQLite** is a free desktop app
that lets you open any `.db` file and browse tables, rows, and columns visually — like a
spreadsheet for your database.

Download it at [sqlitebrowser.org](https://sqlitebrowser.org). Open your `.db` file, click on a
table, and you'll see all your data laid out in a grid. You can even edit rows directly or run
SQL queries from a built-in editor.

## What to Tell Claude

When you want Claude Code to build something with SQLite, be specific about what data you're
storing and what operations you need. Here's a reliable prompt template:

> "Create a Python app that uses SQLite to store [your data]. Include functions to add, list,
> search, update, and delete records. Use a file called `[name].db` for the database."

For example:

> "Create a Python app that uses SQLite to store my book collection. Each book has a title,
> author, year, and a rating from 1-5. Include functions to add a book, list all books, search
> by author, update a rating, and delete a book. Use a file called books.db."

Claude will generate all the SQL, the Python functions, and usually a simple menu or CLI
interface to interact with it.

## Example Projects

These are all great beginner projects that work well with SQLite:

- **Expense tracker** — Log expenses with amount, category, date. Query totals by month or category.
- **Bookshelf app** — Track books you've read with ratings and notes.
- **Todo app** — Tasks with titles, due dates, and completion status.
- **Blog backend** — Store posts with titles, content, timestamps, and tags.
- **Contact book** — Names, phone numbers, emails, notes. Search by any field.
- **Habit tracker** — Log daily habits and query streaks.

## Links

- [SQLite official site](https://sqlite.org) — Documentation and background on the database itself
- [Python sqlite3 docs](https://docs.python.org/3/library/sqlite3.html) — The official Python module reference
- [DB Browser for SQLite](https://sqlitebrowser.org) — Free GUI tool to view and edit your databases

---

**Back to:** [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)

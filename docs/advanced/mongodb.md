# MongoDB

## What Is MongoDB?

MongoDB is a document database. Instead of storing data in rows and columns like a traditional
database, it stores data as **documents** — flexible, JSON-like objects that can have different
shapes and structures.

Think of it this way: a traditional database is like a spreadsheet with strict columns. MongoDB
is more like a folder full of JSON files, where each file can have whatever fields it needs. A
user document might have a `bio` field while another user doesn't — and that's perfectly fine.

This flexibility makes MongoDB popular for projects where your data structure might change over
time, or where different records naturally have different shapes.

## When to Use MongoDB

MongoDB is a good choice when:

- Your **data schema is flexible** — different records may have different fields
- You're **prototyping rapidly** and don't want to define rigid table structures upfront
- You're building **content management systems** where articles, pages, and media all look different
- You need **real-time analytics** on large amounts of semi-structured data
- Your data is naturally **nested** (objects inside objects, arrays of items)

## When NOT to Use MongoDB

MongoDB isn't ideal when:

- You need **complex joins** between many related tables — relational databases handle this better
- Your data is **strictly relational** (orders linked to customers linked to products linked to
  categories, all with rigid foreign key constraints)
- **ACID transactions** across multiple collections are critical to your application
- You're working with simple, flat, tabular data that fits perfectly in rows and columns

## Installation Options

You have two ways to get started:

1. **MongoDB Atlas (recommended for beginners)** — A free cloud-hosted database. No installation.
   You create an account, click a few buttons, and get a connection string. This is the easiest path.
2. **MongoDB Community Server** — Install and run MongoDB on your own computer. More control, but
   more setup. Download from [mongodb.com/try/download/community](https://www.mongodb.com/try/download/community).

## Setting Up MongoDB Atlas (Free Cloud Tier)

Atlas gives you a free database in the cloud. Here's how to set it up:

1. Go to [mongodb.com/atlas](https://www.mongodb.com/atlas) and click **Try Free**.
2. Create an account with your email or sign in with Google.
3. Choose the **Free (Shared)** tier — this gives you 512 MB of storage at no cost.
4. Pick a cloud provider and region (any of the free-tier options work — pick one close to you).
5. Click **Create Cluster** and wait a minute or two for it to provision.
6. Under **Security**, create a database user with a username and password. **Save these.**
7. Under **Network Access**, add your current IP address (or allow access from anywhere for
   development — `0.0.0.0/0`).
8. Click **Connect**, choose **Connect your application**, and select **Python**. Copy the
   connection string — it looks like:
   ```
   mongodb+srv://youruser:yourpassword@cluster0.xxxxx.mongodb.net/
   ```

That connection string is what your Python code uses to talk to your database.

## Python Library: pymongo

Install the Python driver:

```bash
pip install pymongo
```

## Key Concepts

- **Database** — A container for collections. One MongoDB server can hold many databases.
- **Collection** — Like a table. A group of documents. Example: a `users` collection.
- **Document** — Like a row, but it's a flexible JSON object. Example: `{"name": "Alice", "age": 30}`.
- **Field** — A key in a document. Like a column, but different documents in the same collection
  can have different fields.

## Quick Example

Here's a complete Python script that connects to MongoDB, inserts data, and queries it:

```python
from pymongo import MongoClient

# Connect to MongoDB (replace with your Atlas connection string)
client = MongoClient("mongodb+srv://youruser:yourpassword@cluster0.xxxxx.mongodb.net/")
db = client["myapp"]
collection = db["books"]

# Insert a document
collection.insert_one({
    "title": "Dune",
    "author": "Frank Herbert",
    "year": 1965,
    "tags": ["sci-fi", "classic"]
})

# Insert another with different fields — this is fine in MongoDB
collection.insert_one({
    "title": "Cooking Basics",
    "author": "Jane Smith",
    "year": 2020,
    "tags": ["cooking"],
    "pages": 250
})

# Query all documents
for book in collection.find():
    print(book)

# Search by field
for book in collection.find({"author": "Frank Herbert"}):
    print(book)

# Update a document
collection.update_one(
    {"title": "Dune"},
    {"$set": {"rating": 5}}
)

# Delete a document
collection.delete_one({"title": "Cooking Basics"})

client.close()
```

Notice how the two documents have different fields (`pages` only exists on one). MongoDB doesn't
care — each document is independent.

## Viewing Your Data Visually

**MongoDB Compass** is a free desktop app for browsing your MongoDB databases visually. You can
see collections, view documents, run queries, and edit data — all through a graphical interface.

Download it at [mongodb.com/products/compass](https://www.mongodb.com/products/compass). Paste
your connection string in and you'll see all your databases and collections immediately.

You can also browse data directly in the Atlas web UI under the **Collections** tab.

## What to Tell Claude

When asking Claude Code to build something with MongoDB, mention the library and your connection
setup. Here's a reliable prompt template:

> "Create a Python app using MongoDB to store [your data]. Use pymongo. Connect to my MongoDB
> Atlas cluster. Include CRUD operations: create, read (list all and search), update, and delete."

For example:

> "Create a Python app using MongoDB to store user profiles. Each profile has a name, email, bio,
> and a list of interests. Use pymongo and connect to MongoDB Atlas. Include functions to create
> a profile, list all profiles, search by interest, update a bio, and delete a profile."

## Example Projects

These projects work well with MongoDB's flexible document model:

- **User profiles** — Each user can have different optional fields (bio, avatar, social links).
- **Product catalog** — Different products have different attributes (clothing has sizes, electronics have specs).
- **Blog with comments** — Posts with nested comment arrays, tags, and metadata.
- **Logging system** — Log entries from different sources with varying fields and structures.
- **Recipe collection** — Recipes with flexible ingredient lists, steps, and nutrition info.

## Links

- [MongoDB official site](https://www.mongodb.com) — Documentation and downloads
- [MongoDB Atlas](https://www.mongodb.com/atlas) — Free cloud-hosted database
- [pymongo documentation](https://pymongo.readthedocs.io/) — Python driver reference
- [MongoDB Compass](https://www.mongodb.com/products/compass) — Free GUI for browsing your data
- [MongoDB University](https://university.mongodb.com/) — Free courses to learn MongoDB in depth

---

**Back to:** [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)

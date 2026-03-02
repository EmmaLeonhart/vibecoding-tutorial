# Neo4j

## What Is Neo4j?

Neo4j is a graph database. Instead of storing data in tables with rows and columns, it stores
data as **nodes** (things) connected by **relationships** (edges). If your data is all about how
things connect to each other, Neo4j is built exactly for that.

Think of a social network: people are nodes, and friendships are relationships between them. In
a traditional database, you'd need complex join tables to represent this. In Neo4j, you just
draw the connections directly.

## Graph Databases vs Relational Databases

**Relational database (like SQLite or PostgreSQL):**
```
Users table:          Friendships table:
| id | name  |        | user_id | friend_id |
|----|-------|        |---------|-----------|
| 1  | Alice |        | 1       | 2         |
| 2  | Bob   |        | 2       | 3         |
| 3  | Carol |        | 1       | 3         |
```

To find "friends of friends," you write complicated JOIN queries across multiple tables.

**Graph database (Neo4j):**
```
(Alice) --FRIENDS_WITH--> (Bob) --FRIENDS_WITH--> (Carol)
```

You just follow the connections. The query is simpler, faster, and matches how you actually
think about the data.

## When to Use Neo4j

Neo4j shines when:

- You're modeling a **social network** — users, followers, friends, interactions
- You're building a **recommendation engine** — "people who liked X also liked Y"
- You're doing **fraud detection** — finding suspicious patterns in transaction networks
- Your data has **lots of relationships** that you need to traverse and query

## When NOT to Use Neo4j

Neo4j isn't the best choice when:

- Your data is **simple and tabular** — a spreadsheet-style database like SQLite works fine
- You need **bulk data processing** on millions of flat records without relationship queries
- **Relationships aren't the focus** — if you're just storing and retrieving records, a
  traditional database is simpler

## Installation Options

1. **Neo4j Desktop (recommended)** — A free desktop application that bundles everything. Download
   at [neo4j.com/download](https://neo4j.com/download/).
2. **Neo4j AuraDB** — A free cloud-hosted tier. No installation needed. Create an account at
   [neo4j.com/cloud/aura](https://neo4j.com/cloud/platform/aura-graph-database/).

## Setting Up Neo4j Desktop

1. Download Neo4j Desktop from [neo4j.com/download](https://neo4j.com/download/).
2. Install and open it. Register for a free activation key during setup.
3. Click **New Project**, then **Add Database** and choose **Local DBMS**.
4. Set a name and password. Remember the password — your Python code needs it.
5. Click **Start** to launch the database.

Once running, click **Open** to launch the Neo4j Browser, or visit **http://localhost:7474**.
The browser lets you write Cypher queries, see your graph visualized as nodes and edges, click
on nodes to inspect properties, and explore connections interactively.

## Cypher Query Language Basics

Cypher is Neo4j's query language. Parentheses represent nodes, arrows represent relationships:

**Create nodes and relationships:**
```cypher
CREATE (alice:Person {name: "Alice", age: 30})
CREATE (bob:Person {name: "Bob", age: 25})
CREATE (acme:Company {name: "Acme Corp"})
```

```cypher
MATCH (a:Person {name: "Alice"}), (b:Person {name: "Bob"})
CREATE (a)-[:FRIENDS_WITH]->(b)
```

**Query the graph:**
```cypher
// Find all of Alice's friends
MATCH (a:Person {name: "Alice"})-[:FRIENDS_WITH]->(friend)
RETURN friend.name

// Find friends of friends
MATCH (a:Person {name: "Alice"})-[:FRIENDS_WITH]->()-[:FRIENDS_WITH]->(fof)
RETURN fof.name
```

The pattern `(node)-[:RELATIONSHIP]->(other_node)` is the core of Cypher. Chain connections
together to build more complex queries.

## Quick Example: Python with Neo4j

Install the official Python driver:

```bash
pip install neo4j
```

```python
from neo4j import GraphDatabase

# Connect to Neo4j
driver = GraphDatabase.driver(
    "bolt://localhost:7687",
    auth=("neo4j", "your-password-here")
)

def create_person(tx, name, age):
    tx.run("CREATE (p:Person {name: $name, age: $age})", name=name, age=age)

def create_friendship(tx, name1, name2):
    tx.run("""
        MATCH (a:Person {name: $name1}), (b:Person {name: $name2})
        CREATE (a)-[:FRIENDS_WITH]->(b)
    """, name1=name1, name2=name2)

def get_friends(tx, name):
    result = tx.run("""
        MATCH (p:Person {name: $name})-[:FRIENDS_WITH]->(friend)
        RETURN friend.name AS name, friend.age AS age
    """, name=name)
    return [{"name": r["name"], "age": r["age"]} for r in result]

# Create data
with driver.session() as session:
    session.execute_write(create_person, "Alice", 30)
    session.execute_write(create_person, "Bob", 25)
    session.execute_write(create_person, "Carol", 28)
    session.execute_write(create_friendship, "Alice", "Bob")
    session.execute_write(create_friendship, "Bob", "Carol")

# Query the graph
with driver.session() as session:
    for friend in session.execute_read(get_friends, "Alice"):
        print(f"{friend['name']}, age {friend['age']}")

driver.close()
```

## What to Tell Claude

When asking Claude Code to build something with Neo4j, describe the entities and their
connections:

> "Create a Python app using Neo4j to model [domain] as a graph. Create nodes for [entities]
> and relationships for [connections]. Include queries to traverse the graph and find patterns.
> Use the neo4j Python driver."

For example:

> "Create a Python app using Neo4j to model a music scene as a graph. Create nodes for bands,
> musicians, venues, and genres. Create relationships like MEMBER_OF, PLAYED_AT, and HAS_GENRE.
> Include queries to find all members of a band, all bands that played at a venue, and recommend
> bands based on shared genre. Use the neo4j Python driver."

## Example Projects

These projects are natural fits for graph databases:

- **Social network model** — Users, friendships, follows, posts, likes. Query mutual friends and degrees of separation.
- **Movie recommendation engine** — Movies, actors, directors, genres. Recommend based on what you've liked.
- **Skill tree / tech tree** — Skills as nodes, prerequisites as relationships. Query learning paths.
- **Knowledge map** — Concepts connected by "requires", "related to", "part of".
- **Transportation network** — Stations as nodes, routes as relationships. Find shortest paths.

## Links

- [Neo4j official site](https://neo4j.com) — Documentation and downloads
- [Neo4j Desktop download](https://neo4j.com/download/) — Free local database with visual browser
- [Cypher documentation](https://neo4j.com/docs/cypher-manual/current/) — Complete query language reference
- [neo4j Python driver docs](https://neo4j.com/docs/python-manual/current/) — Official Python driver docs
- [GraphAcademy](https://graphacademy.neo4j.com/) — Free courses to learn Neo4j from scratch

---

**Back to:** [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)

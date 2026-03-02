# Apache Jena Fuseki

## What Is Apache Jena Fuseki?

Apache Jena Fuseki is a server for storing and querying **knowledge graphs**. It speaks a
language called SPARQL (pronounced "sparkle") and stores data as RDF — a format designed for
describing relationships between things.

If regular databases are like spreadsheets, Fuseki is more like a web of connected facts. It's
built for situations where the **relationships between your data** are just as important as the
data itself. Fuseki is part of the larger Apache Jena project, a complete toolkit for building
semantic web and linked data applications.

## RDF and SPARQL in Plain English

**RDF (Resource Description Framework)** describes data as simple three-part statements called
triples:

```
Subject  →  Predicate  →  Object
"Alice"  →  "knows"    →  "Bob"
"Alice"  →  "works_at" →  "Acme Corp"
"Bob"    →  "lives_in" →  "London"
```

Every fact is a triple: something, a relationship, and another thing. String enough of these
together and you get a knowledge graph — a network of connected facts.

**SPARQL** is the query language for RDF data. It lets you ask questions like "Who does Alice
know?" or "Find everyone who works at Acme Corp and lives in London." It looks a bit like SQL
but works with graph patterns instead of tables.

## When to Use Fuseki

Fuseki is a good choice when:

- You're building a **knowledge graph** — a network of entities and their relationships
- You're working with **semantic web** or **linked data** standards
- Your project involves **ontologies** (formal descriptions of categories and relationships)
- You're managing **research data** that connects papers, authors, institutions, and concepts
- You want to link your data with public knowledge bases like Wikidata or DBpedia

## When NOT to Use Fuseki

Fuseki isn't the right tool when:

- You're building a **simple CRUD app** — use SQLite or MongoDB instead
- You don't need **semantic relationships** between your data
- You need **high-speed transactional processing** for a web application
- Your data is simple and tabular with no meaningful relationships to model

## Installation

Fuseki requires Java (version 11 or later). Check if you have it:

```bash
java -version
```

If not, install OpenJDK for your operating system first. Then:

1. Go to [jena.apache.org/download](https://jena.apache.org/download/) and download the latest
   **Apache Jena Fuseki** package (the standalone server zip).
2. Unzip it to a folder on your computer.

## Starting the Server

Run the Fuseki server from the unzipped folder:

```bash
./fuseki-server
```

On Windows, use `fuseki-server.bat`. Once running, open **http://localhost:3030** in your
browser to see the Fuseki web interface.

## Creating a Dataset

In the Fuseki web UI:

1. Click **Manage**, then **Add new dataset**.
2. Give it a name (for example, `knowledge`).
3. Choose **Persistent** (saved to disk) or **In-memory** (temporary).
4. Click **Create dataset**.

Your SPARQL endpoint is now at `http://localhost:3030/knowledge/sparql` and the update endpoint
at `http://localhost:3030/knowledge/update`.

## Basic SPARQL Examples

Insert data (run in the Fuseki web UI query panel):

```sparql
PREFIX ex: <http://example.org/>
INSERT DATA {
    ex:Alice ex:knows ex:Bob .
    ex:Alice ex:worksAt ex:AcmeCorp .
    ex:Bob ex:knows ex:Charlie .
    ex:Charlie ex:worksAt ex:AcmeCorp .
}
```

Query everyone Alice knows:

```sparql
PREFIX ex: <http://example.org/>
SELECT ?person WHERE { ex:Alice ex:knows ?person . }
```

Find friends of friends (two hops):

```sparql
PREFIX ex: <http://example.org/>
SELECT ?person ?fof WHERE {
    ?person ex:knows ?friend .
    ?friend ex:knows ?fof .
}
```

## Querying Fuseki from Python

Install the Python library:

```bash
pip install SPARQLWrapper
```

Here's a complete example that queries and inserts data:

```python
from SPARQLWrapper import SPARQLWrapper, JSON, POST

# Query data
sparql = SPARQLWrapper("http://localhost:3030/knowledge/sparql")
sparql.setQuery("""
    PREFIX ex: <http://example.org/>
    SELECT ?person ?relationship ?other
    WHERE { ?person ?relationship ?other . }
""")
sparql.setReturnFormat(JSON)
results = sparql.query().convert()

for result in results["results"]["bindings"]:
    person = result["person"]["value"]
    rel = result["relationship"]["value"]
    other = result["other"]["value"]
    print(f"{person} -- {rel} --> {other}")

# Insert data
sparql_update = SPARQLWrapper("http://localhost:3030/knowledge/update")
sparql_update.setMethod(POST)
sparql_update.setQuery("""
    PREFIX ex: <http://example.org/>
    INSERT DATA {
        ex:Diana ex:knows ex:Alice .
        ex:Diana ex:livesIn ex:Paris .
    }
""")
sparql_update.query()
```

## What to Tell Claude

When asking Claude Code to build something with Fuseki, explain the knowledge domain and the
relationships you want to model:

> "Create a Python app that connects to a Fuseki SPARQL endpoint at localhost:3030. Build a
> knowledge graph about [topic] using RDF triples. Include queries to find relationships
> between entities. Use SPARQLWrapper."

For example:

> "Create a Python app that connects to a Fuseki SPARQL endpoint. Build a knowledge graph about
> a university — with students, professors, courses, and departments as entities. Include
> relationships like 'teaches', 'enrolledIn', and 'belongsTo'. Add functions to insert new
> entities, query all courses a student is enrolled in, and find which professors are in the
> same department."

## Example Projects

These projects are great fits for RDF and SPARQL:

- **Family tree knowledge graph** — People connected by `parentOf`, `siblingOf`, `marriedTo`.
- **Recipe ontology** — Ingredients, recipes, cuisines, and dietary categories linked semantically.
- **Research paper citation network** — Papers, authors, institutions, and topics linked by citations.
- **Movie database with semantic relationships** — Films, actors, directors, genres, awards interconnected.

## Links

- [Apache Jena site](https://jena.apache.org/) — Downloads, documentation, and tutorials
- [SPARQL tutorial (W3C)](https://www.w3.org/TR/sparql11-query/) — The official SPARQL specification and examples
- [SPARQLWrapper docs](https://sparqlwrapper.readthedocs.io/) — Python library for querying SPARQL endpoints
- [Wikidata SPARQL endpoint](https://query.wikidata.org/) — Practice SPARQL on real-world linked data

---

**Back to:** [Tutorial Home](../../README.md) | [Project Ideas](../08-project-ideas.md)

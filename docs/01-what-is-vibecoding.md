# 1. What Vibe Coding Actually Is

## It's Not Just "Ask AI to Write Code"

The most common misconception about vibe coding is that it means opening ChatGPT, typing "make me a website," and copy-pasting whatever comes back. That is not vibe coding. That is prompting.

**Vibe coding is a discipline.** It has best practices, tools, workflows, and expectations — just like traditional software development. The difference is that instead of writing every line yourself, you collaborate with an AI agent to build software while maintaining full awareness of what your program is doing.

## The Fundamental Principle

> You need to have an idea of what your actual program is doing.

This is the core of vibe coding. You don't need to write every line, but you need to:

- **Understand the architecture** — How are the pieces of your program connected?
- **Know what changed** — When the AI makes edits, you should review what was modified and why
- **Be able to explain your project** — If someone asked you what your code does, you should be able to answer
- **Make intentional decisions** — The AI proposes, you decide

## Vibe Coding vs. Traditional Coding vs. Prompting

| Aspect | Prompting | Vibe Coding | Traditional Coding |
|--------|-----------|-------------|-------------------|
| Who writes code | AI generates, human copy-pastes | AI agent writes, human reviews | Human writes everything |
| Version control | Rarely used | Essential — every change tracked | Standard practice |
| Documentation | Usually absent | Central to the workflow | Varies |
| Testing | Not considered | Actively maintained | Standard practice |
| Understanding | "It works, I think" | "I know what it does and why" | Deep understanding |
| Tools | Chat interface | AI agents + IDE + git | IDE + git |

## Do You Need to Know How to Code?

If you don't know how to code, it is perfectly fine to get started with vibe coding. But don't expect that you will never need programming knowledge.

Vibe coding lowers the barrier to entry, but it doesn't eliminate the need to understand what's happening. As your projects grow in complexity, you will need to:

- Read code to verify the AI's work
- Understand error messages to give the AI better instructions
- Recognize when something looks wrong, even if it "works"
- Make architectural decisions the AI can't make for you

Think of it like driving a car with advanced cruise control. The car does a lot of the work, but you still need to understand the road, know where you're going, and be ready to take the wheel.

## Vibe Coding Is a Capability Multiplier

Here is something important that often gets missed: **vibe coding scales with what you already know.**

It is not a great equalizer that brings everyone to the same level. It is a force multiplier. The more programming knowledge you bring to the table, the more powerful your results. An experienced developer using vibe coding can build things that would take weeks alone; a beginner using it will still run into conceptual walls they don't have the vocabulary to break through.

This also means you should not think of vibe coding as a substitute for learning. It is better understood as a way to act at a higher level than your current skills would normally allow — but you are still bounded by what you understand.

### You Can Use Libraries You've Never Touched the API For

One of the most practical benefits of this is what happens with third-party libraries. Traditionally, integrating a library means reading through its documentation, understanding its method signatures, handling its error types, figuring out which version introduced the feature you need. It is often the most tedious part of building something.

With vibe coding, you only need to know **what a library does** — not exactly how to use it. If you know that `SQLAlchemy` handles database ORM for Python, or that `Recharts` builds charts in React, or that `Celery` manages async task queues, that is enough. Tell the AI what you want to build and which library you want it to use, and it will handle the API surface for you.

This is a genuine productivity unlock. You can incorporate tools you've heard about but never had time to properly learn, and your project benefits from them immediately. The knowledge that matters is architectural — "this library solves this kind of problem" — not syntactic.

## The Right Mindset

Vibe coding works best when you approach it as a **collaboration**, not a delegation. The AI is an extremely fast and knowledgeable partner, but it doesn't know your goals, your users, or your constraints the way you do. Your job is to provide direction, review output, and maintain the big picture.

---

**Next:** [2. Essential Tools and Setup](02-tools-and-setup.md)

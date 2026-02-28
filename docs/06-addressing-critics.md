# 6. Addressing the Critics

## The Criticisms Are Real

Many critics of vibe coding raise concerns about:

- **Technical debt** — AI-generated code that works but is poorly structured
- **Debugging difficulty** — Hard to debug code you didn't write
- **Security issues** — AI may introduce vulnerabilities you don't notice

These are definitely real concerns, and you should not dismiss them. They represent genuine risks in AI-assisted development.

## Don't Dismiss the Critics, But Don't Be Paralyzed Either

You should not dismiss these concerns just because they are often brought up by people who are judgmental towards AI users and vibe coders. The people raising these concerns are often experienced developers who have seen the consequences of poorly maintained code firsthand.

However, the good thing is that **all of these problems are preventable**, assuming you put in the effort to actually make your code sustainable.

## Technical Debt

**What it is:** Code that works now but will be painful to maintain or extend later. Common signs: duplicated logic, unclear naming, overly complex functions, missing documentation.

**How vibe coding causes it:** AI agents optimize for "making it work" in the current context. They don't always consider long-term maintainability.

**How to prevent it:**

- **Review the code.** Don't just check if it works — look at *how* it's structured
- **Ask the AI to refactor.** If code looks messy, ask: "Can you clean up this module and reduce duplication?"
- **Keep documentation current.** Technical debt is worse when nobody understands the code
- **Use tests.** They make refactoring safe because you'll know immediately if something breaks

## Debugging Difficulty

**What it is:** When something goes wrong in code you didn't write, it's harder to figure out why.

**How vibe coding causes it:** If you let the AI write large amounts of code without reviewing it, you end up with a codebase you don't understand.

**How to prevent it:**

- **Review every change.** Use GitHub Desktop to read what the AI wrote
- **Commit frequently.** Small changes are easier to debug than massive ones
- **Ask the AI to explain.** "Explain what this function does and why" — the AI can help you learn the code it wrote
- **Add logging.** Ask the AI to add meaningful log messages to help with future debugging
- **Experiment on your own.** Modify small pieces of code yourself to understand how they behave

## Security Issues

**What it is:** Vulnerabilities like SQL injection, cross-site scripting (XSS), exposed secrets, or insecure defaults.

**How vibe coding causes it:** AI agents may generate code with security antipatterns, especially if you don't specifically ask for secure code.

**How to prevent it:**

- **Ask for security specifically.** "Make sure this handles user input safely" goes a long way
- **Use established libraries.** Tell the AI to use well-known, maintained libraries instead of hand-rolling security-critical code
- **Never commit secrets.** Use `.gitignore` for `.env` files and credentials
- **Run security linters.** Tools like `bandit` (Python), `eslint-plugin-security` (JS), or `gosec` (Go) catch common issues automatically
- **Review authentication and authorization code especially carefully**

## The Bottom Line

The critics are right that vibe coding *can* produce bad code. But the same is true of traditional coding. The solution in both cases is the same: good practices, careful review, and continuous improvement.

Vibe coding with proper practices (documentation, testing, version control, code review) produces code that is just as maintainable as traditionally written code. Vibe coding *without* those practices produces a mess — but so does any approach without those practices.

---

**Next:** [7. Learning to Code Through Vibe Coding](07-learning-through-vibecoding.md)

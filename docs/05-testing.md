# 5. Testing and Quality Assurance

## Why Tests Matter Even More in Vibe Coding

Unit tests exist because they allow you to reliably detect when some kind of functionality has been altered. In vibe coding, this is especially important because AI agents sometimes:

- Fix one thing while breaking another
- Refactor code in ways that subtly change behavior
- Remove or modify code they consider unnecessary (but you needed)
- Introduce edge cases they didn't consider

Tests are your automated safety net.

## Tests Are Not Hard to Set Up

You can definitely just get the AI to do all of the work of setting up the tests for you. This is one of the best things to delegate to an AI agent because:

- Test boilerplate is tedious to write by hand
- AI agents are good at identifying what should be tested
- The AI can generate comprehensive test cases faster than you can
- You can focus on reviewing the tests rather than writing them

### Example Prompt

> "Add unit tests for the user authentication module. Test successful login, failed login with wrong password, login with nonexistent user, and rate limiting."

The AI will set up the test framework, write the test functions, and create any needed test fixtures.

## Understanding Test Results

A failed test does not necessarily mean that whatever made it fail was a mistake. It means there is some kind of behavior that was changed in the program that resulted in the test failure.

This is an important distinction:

| Scenario | What Happened | What to Do |
|----------|--------------|------------|
| Test fails after a bug fix | The bug fix changed expected behavior | Update the test to match the new correct behavior |
| Test fails after a new feature | The feature changed something the test relied on | Review whether the change is intentional, then update the test |
| Test fails unexpectedly | The AI broke something it shouldn't have | Revert the change or ask the AI to fix the regression |

## Tests + Visual Diffs = Full Coverage

Doing testing in addition to visually inspecting differences is a very good way to ensure that you actually know what is going on with your program:

- **Visual diffs** (GitHub Desktop) show you *what* changed in the code
- **Tests** tell you *whether the behavior* changed
- **Together** they give you near-complete visibility into the AI's work

## Common Test Frameworks

| Language | Framework | Setup Command |
|----------|-----------|---------------|
| Python | pytest | `pip install pytest` |
| JavaScript | Jest | `npm install --save-dev jest` |
| TypeScript | Vitest | `npm install --save-dev vitest` |
| Go | built-in | `go test ./...` |
| Rust | built-in | `cargo test` |

## What to Test

Focus your tests on:

1. **Core business logic** — The things your program is actually supposed to do
2. **Edge cases** — Empty inputs, large inputs, unexpected types
3. **Integration points** — Where different parts of your code connect
4. **Anything that broke before** — If the AI broke it once, add a test to catch it next time

## Running Tests as Part of Your Workflow

Make running tests a habit:

```
Ask AI to make changes
    ↓
Review changes in GitHub Desktop
    ↓
Run tests
    ↓
All pass? → Commit
Some fail? → Investigate
    ↓
Repeat
```

You can also ask the AI agent to run tests after making changes. Most agents can execute test suites and report results directly.

---

**Next:** [6. Addressing the Critics](06-addressing-critics.md)

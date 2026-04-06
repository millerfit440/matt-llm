# Flywheel Protocol

The Flywheel is the core work loop. Every unit of work follows this cycle.

## The cycle

1. **Read state** — Check TODO.md, recent updates.json entries, and any relevant files. Understand where things are before acting.
2. **Pick one bounded action** — Choose a single, concrete task. Not two. Not "and also." One thing.
3. **Do the work** — Execute the task. Stay within the boundary you set.
4. **Verify it** — Confirm the work is correct. Run tests, check output, validate JSON, re-read what you wrote. Do not skip this.
5. **Write back** — Update TODO.md, append to updates.json, commit and push.
6. **Stop or name next step** — Either you're done, or you name exactly what comes next. No open-ended "continue working on things."

## Rules

- **No scope creep.** If you discover something else that needs doing, note it in TODO.md and move on. Do not fold it into the current action.
- **One bounded action at a time.** The Flywheel turns once per action. Trying to do multiple things at once breaks the loop.
- **Always verify.** Never mark something done without confirming it actually works.
- **Always write back.** If you did meaningful work, the repo should reflect it. No floating changes.
- **Name the boundary before starting.** Say what you're going to do and what you're not going to do. Then hold that line.

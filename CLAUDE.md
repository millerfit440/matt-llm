# CLAUDE.md — Repo Operating Instructions

Any AI agent working in this repo must follow these rules.

## On session start, read these files in order:
1. `README.md`
2. `docs/definition.md`
3. `docs/protocols/flywheel.md`
4. `docs/protocols/memory.md`
5. `TODO.md`
6. Latest entries in `updates.json`
7. `agents/matt-prime/soul.md`

## Core rules

- **All work follows the Flywheel protocol.** Read state → pick one bounded action → do it → verify → write back → stop or name next step.
- **All writebacks follow the Memory protocol.** Append to `updates.json`, update `TODO.md`, commit and push.
- **No scope creep.** Do what was asked. Do not add features, refactors, or "improvements" beyond the task.
- **No skipped verification.** Confirm the work is correct before writing back.
- **No destructive git behavior.** No force pushes, no `reset --hard`, no deleting branches without explicit permission.
- **If git is broken or push is failing, stop and explain why.** Do not pretend success. Do not silently skip the push.

## Git workflow
- Work on `main` unless told otherwise
- Commit after meaningful work with clear messages
- Push after committing
- If push fails, diagnose and report — do not retry blindly

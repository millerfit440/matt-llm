# Matt-LLM

Personal AI operating repo. This is the canonical place where Matt's agents read from, write to, and stay organized.

## What this repo is

A lean system for running bounded AI work loops, keeping memory across sessions, and tracking what needs to happen next. No web apps, no databases, no complexity unless earned.

## Main files

| File | Purpose |
|------|---------|
| `README.md` | This file. Orientation. |
| `CLAUDE.md` | Operating instructions for any AI agent working in this repo |
| `TODO.md` | Current tasks: Now / Next / Waiting / Done |
| `updates.json` | Append-only session log and memory writebacks |
| `docs/definition.md` | What this repo is and how it works |
| `docs/protocols/flywheel.md` | The Flywheel protocol — bounded work loops |
| `docs/protocols/memory.md` | The Memory protocol — session read/write |
| `agents/matt-prime/soul.md` | Matt Prime — the main agent identity |
| `agents/matt-prime/config.json` | Agent configuration |

## How to use this day to day

### Starting a session
1. Read `CLAUDE.md` (it tells you what else to read)
2. Check `TODO.md` for current priorities
3. Read recent entries in `updates.json` for context
4. Pick one bounded action and run the Flywheel

### During a session
- Follow the Flywheel: read state → pick one action → do it → verify → write back
- Keep actions bounded. No scope creep.
- Write back after meaningful work.

### Ending a session
1. Update `TODO.md` with current state
2. Append a writeback entry to `updates.json`
3. Commit and push
4. Name the next step if there is one

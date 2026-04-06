# Memory Protocol

The Memory protocol ensures context carries forward between sessions. Agents read state on start and write state on end.

## Core mechanism

Memory lives in two places:
- **`TODO.md`** — current task state (Now / Next / Waiting / Done)
- **`updates.json`** — append-only session log with structured entries

## What goes in updates.json

Each entry should include:
- `date` — ISO date string (YYYY-MM-DD)
- `type` — what kind of work (e.g., "setup", "task", "fix", "writeback")
- `summary` — one or two sentences about what happened
- `files_changed` — list of files that were created or modified (optional but useful)

Entries are **append-only**. Do not edit or delete previous entries. The log is the history.

## Session start checklist

1. Read `CLAUDE.md` for operating rules
2. Read `docs/definition.md` for repo context
3. Read `docs/protocols/flywheel.md` and `docs/protocols/memory.md`
4. Read `TODO.md` for current priorities
5. Read the last 3–5 entries in `updates.json` for recent context
6. Read the main agent soul (`agents/matt-prime/soul.md`)
7. You now have state. Begin the Flywheel.

## Session end checklist

1. Update `TODO.md` to reflect current state
2. Append a writeback entry to `updates.json`
3. Commit all changes with a clear message
4. Push to origin
5. Confirm push succeeded
6. Name the next step, or state that the work is complete

## Principle

Once an agent has this protocol, it should read and write repo state automatically from session to session. No manual briefing required. The repo is the memory.

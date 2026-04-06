# Definition

## What is Matt-LLM?

Matt-LLM is the canonical repo where Matt's AI agents read from and write to. It is the single source of truth for:

- **Organizing work** — what needs to happen, what's in progress, what's done
- **Running bounded loops** — the Flywheel protocol keeps work focused and verified
- **Keeping memory** — session writebacks in `updates.json` carry context forward

## Principles

- **Simple by default.** No frameworks, no databases, no web apps unless they're actually needed.
- **One main agent for now.** Matt Prime handles coordination and execution. More agents only if there's a real reason.
- **Protocols before complexity.** The Flywheel and Memory protocols are the foundation. Follow them before adding anything new.
- **Everything in the repo.** If it matters, it's committed and pushed. No floating context.

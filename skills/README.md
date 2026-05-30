# Skills

Version-controlled source for the Claude skills used in this workspace. The copy
here is the **master** — edit these files, then sync them out to the live Claude
install and the shareable bundle.

## Skills in this folder

- **sweat440-paid-ad-review/** — reviews SWEAT440 paid social ad creative (briefs,
  headlines, primary text, CTAs, static/video) against the SOP framework, pillar
  logic, persona mapping, and the StoryBrand 2.0 narrative framework.

## The three copies of a skill

A skill exists in three places. Keep the repo as the single source of truth and
push outward from it:

| Copy | Path | Role |
|------|------|------|
| **Master** | `skills/<name>/` (here) | Edit this. Version-controlled. |
| **Live install** | `~/Library/Application Support/Claude/.../skills/<name>/` | What Claude actually runs. |
| **Bundle** | `~/Downloads/<name>.skill` | Zip you share with the team. |

## Update flow

1. Edit the files under `skills/<name>/` in this repo.
2. Run the sync script to push to the live install and rebuild the bundle:
   ```sh
   ./skills/sync-skill.sh                 # defaults to sweat440-paid-ad-review
   ./skills/sync-skill.sh <skill-name>    # for another skill
   ```
3. **Restart any open Claude session** so it reloads the skill's files (skills are
   cached at load time).
4. Commit and push the repo changes (follows the repo Memory protocol — also update
   `updates.json` and `TODO.md`).

## Sharing with the team

Send `~/Downloads/<name>.skill` (self-contained — includes all `references/`
files), or have teammates pull `skills/<name>/` from this repo. Treat skill
contents as **confidential** — they encode internal brand strategy.

## Anatomy of a skill

```
<name>/
├── SKILL.md              # entry point: name, description (triggers), instructions
└── references/           # supporting docs SKILL.md tells Claude to read
    └── *.md
```

`SKILL.md`'s frontmatter `description` controls when the skill auto-triggers. The
body should reference any `references/*.md` files explicitly so they get loaded.
A version comment near the top of `SKILL.md` (e.g. `<!-- v2.0 — ... -->`) helps
teammates tell which copy they have.

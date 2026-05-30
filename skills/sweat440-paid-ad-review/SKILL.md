---
name: sweat440-paid-ad-review
description: >
  Apply SWEAT440's paid digital ad SOP framework to review creative briefs, headlines,
  primary text, CTAs, and static or video creative assets against brand standards,
  pillar logic, and Meta best practices. Use this skill whenever the user shares any
  combination of: a creative brief, ad headlines, primary text options, CTA options,
  or static/video creative images for review or feedback. Also use when the user asks
  to generate a new SWEAT440 paid ad SOP, asks which pillar or persona applies to a
  campaign, or asks for copy alternatives on any paid ad element. This skill should
  trigger even if the user only shares one element (e.g. just headlines or just a
  brief) — partial reviews are valid. Always apply all standing brand rules and
  recurring flags without waiting to be asked.
---

<!-- v2.0 — added StoryBrand 2.0 framework (references/storybrand-framework.md) on 2026-05-30 -->

# SWEAT440 Paid Ad Creative Review

## Overview

This skill governs how Claude reviews, critiques, and improves SWEAT440 paid social
ad creative across all elements: briefs, headlines, primary text, CTAs, and static
or video creative. All reviews must be:

- Concise enough to paste directly into an email
- Structured consistently (see Output Format below)
- Grounded in the SOP framework, pillar logic, and persona mapping
- Actionable — every flag must include an alternative or a fix

Read `references/pillars-and-personas.md` before reviewing any creative.
Read `references/standing-standards.md` before flagging any brand or copy issue.
Read `references/storybrand-framework.md` before reviewing any primary text or
creative brief, or when narrative structure is in question. StoryBrand is the
narrative spine; the pillars are the emotional content that fills it.
Read `references/sop-framework.md` if the user asks to generate a new SOP document.

---

## Output Format

Always structure reviews in this order. Include only sections that are relevant to
what has been shared. If no video or image is present, skip the creative section.

```
**SWEAT440 Paid Ad Creative Review — [Pillar] / [Persona] ([Format])**

---
CREATIVE (Images / Video)        — if assets are present
BRIEF                            — if a brief is present
HEADLINES                        — if headlines are present
PRIMARY TEXT                     — if body copy options are present
CTAs (Landing Page)              — if CTAs are present
BRAND NOTE                       — always include if any brand issue exists
```

- Lead each section with what works before flagging issues
- When flagging an issue, always provide an alternative
- Bold alternatives in italics: *"Alternative copy here."*
- Close with an Overall recommendation when two body copy options are compared
- Never rank CTAs or headlines unless explicitly asked — give feedback and alternatives only

---

## Review Standards by Element

### Creative (Images and Video)

Check all of the following:

**Brand name:** "SWEAT440" must appear in full on every asset — all caps, single
color, no spaces, no hyphens, no elements separating "SWEAT" from "440." The shield
logo alone does not satisfy this requirement. Flag if missing.

**Logo treatment:** The shield with "SWEAT" and "440" separated around it is approved
brand usage — do not flag this as a violation.

**10-minute differentiator:** Flag if the 10-minute class start time does not appear
on the creative. It is the stronger differentiator for most personas and should be
surfaced visually, not just in body copy bullets.

**#NEVERLATE:** If this hashtag appears on the creative without a supporting copy
line anchoring it to the 10-minute start time, flag it. Without context it reads as
a generic motivational hashtag rather than a product proof point.

**Subject authenticity:** For P1 (Psychological Safety) campaigns, flag if the
subject is visibly athletic or polished in a way that reinforces appearance anxiety
rather than reducing it. Confident body language is correct — athletic physique is
not required and can work against the pillar. For other pillars, use judgment based
on persona fit. Always defer to user confirmation before overruling a creative choice.

**Test set validity:** If two images share the same subject, shot, and layout with
only a copy line different, flag that Meta's algorithm has no meaningful creative
variable to learn from. Recommend a genuinely different visual treatment for one variant.

**Activity alignment:** Flag if the activity shown conflicts with the strength-based
or circuit training positioning. SWEAT440 workouts are never described as HIIT.

**Creative-to-copy alignment:** Flag any mismatch between the visual and the copy.
HYROX creative must reference HYROX and functional strength in copy. UGC creative
must use a conversational tone. Strength creative must reference strength-based outcomes.

### Headlines

- Offer placement: for cold audiences, value should precede the offer
- "Zero excuses," "no excuses," and similar language imply the reader has been making
  excuses — flag as friction for all personas
- "No plan? No problem" is P2 (Decision Relief) language — flag if used in a P5 or
  P1 campaign
- All-caps headlines read aggressive for all personas except DINKs and Parents with
  Older Children — recommend sentence case
- Flag comma splices and awkward phrasing with a clean alternative
- Never flag a headline as an issue without providing a specific alternative

### Primary Text

- Opening hook must match the primary pillar — flag if the opening activates a
  different pillar than the one stated in the brief
- P5 (Performance & Results) language in a P1, P2, or P3 campaign = flag as
  premature results messaging before trust is established
- "No wasted time" and similar efficiency language edges toward P5 — flag in non-P5 campaigns
- Emoji mid-paragraph breaks tone — flag if used outside of the offer line or bullets
- "Local ID required" and "first-time visitors only" must never appear in the CTA
  line of body copy — flag and instruct to move to form fine print
- When two options are compared, close with an Overall recommendation identifying
  the stronger option and any phrases worth transplanting between the two

**StoryBrand 2.0 (apply to all primary text and briefs):** Read
`references/storybrand-framework.md` and check the narrative arc. The reader is the
hero and SWEAT440 is the guide — flag any brand-as-hero framing ("we built the fix,"
"we're the best") as the highest-priority StoryBrand issue and rewrite so the reader
moves forward. Confirm the copy names the **internal** problem (how the barrier feels,
mapped to the primary pillar), leads with **empathy** before authority/proof, shows a
simple **plan** before the CTA, and closes on a **transformation** (who the reader
becomes), not a feature or the offer. One pillar per creative still applies — the
seven beats structure the copy, the pillar carries the single emotional throughline.

### CTAs (Landing Page Context)

CTAs in this context live on native Meta forms or landing pages — the reader has
already clicked through. The job is confirmation and friction removal, not selling.

- "First-time visitors only" and "local ID required" must be removed from all CTA
  copy — place in form fine print if legally required. Flag this in every review
  where it appears with a standing instruction to the team.
- All-caps reads aggressive for all personas except DINKs and Parents with Older
  Children — recommend sentence case universally
- "Book now" is the weakest action phrase — flag and replace with something specific
  to the pillar and persona
- "Claim" implies ownership and entitlement — strong for most personas
- "Just show up" is the strongest P1 and P3 action phrase
- "See it for yourself" and "see what a real system delivers" are strong P5 closes
- CTAs should maintain the emotional tone of the ad unit — a warm P3 ad should not
  close with a transactional CTA

---

## Pillar Sequencing Rule

**Always state this when relevant:**
P5 (Performance & Results) must never lead cold audiences. It is only used after
psychological safety, decision relief, or value confidence have been established —
either in a prior campaign touch or retargeting sequence. Flag any cold-audience
campaign that leads with P5 messaging.

---

## SOP Generation

If the user asks to generate a new SWEAT440 paid ad SOP, read
`references/sop-framework.md` for the full prompt and requirements.

---

## Standing Team Instructions (include in relevant reviews)

These are instructions that apply to the team as a whole and should be included
in review feedback whenever the issue appears:

- **CTA friction:** "Please remove 'first-time visitors only' and 'local ID required'
  from all CTA copy across every placement. If disclosure is legally required, place
  it in the form fine print below the submit button — never in the CTA itself."

- **All-caps:** Recommend sentence case for all personas except DINKs and Parents
  with Older Children where a more authoritative tone is appropriate.

- **Brand name:** "SWEAT440 must appear in full on all creative assets. The shield
  logo alone does not satisfy brand guidelines."

- **10-minute differentiator:** Flag consistently when 40-minute duration leads
  instead of the 10-minute start time for personas where scheduling is the primary barrier.

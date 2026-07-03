# SWEAT440 Community App — Project Brief

**Status:** Prototype phase (v1)
**Owner:** Matt
**Created:** 2026-07-03

## What this is

A community- and workout-driven mobile app for SWEAT440 members. Long-term vision spans community (profiles, boards, meetups), workout programming (in-studio + at-home), rewards (check-ins + referrals via CRM), retail/supplements, nutrition tracking, and an AI concierge. The prototype proves **three core loops** only.

## Who it's for

- **Primary:** current SWEAT440 members at pilot studio(s)
- **Secondary:** friends of members invited via referral (the growth channel)

## The three core loops

### 1. Community loop
Instagram-model social layer, focused on SWEAT440 — connection, not romance (though we don't fight it if it happens).

**Profiles (Instagram-style, updated 2026-07-03):**
- Follow / unfollow between members
- Public or private accounts (private = follow requests, locked media grid)
- Photo + video grid on each profile
- Direct messages (member-to-member; text-only in v1 to keep moderation scope sane)
- Profile fields: Name, Photo, Home Studio (dropdown of SWEAT440 studios), Location, Birthday (private — only age shows), Occupation, Fitness goals (multi-select), Usual class times, Short bio

**Board (updated 2026-07-03):**
- One network-wide community board that **defaults to All Studios** and filters down to a single studio — the studio filter scopes the board, member discovery, and events together
- Events / meetups with RSVP (run clubs, post-class coffee, challenges)
- Member discovery filtered by studio, goals, class times — simple filters, **no matching algorithm in v1**

### 2. Workout loop
- **Studio WOD:** the day's SWEAT440 programming in-app (4 stations × 10 min format), synced to the member's home studio
- **In-Home custom workout:** member picks equipment, time available, and focus area → app generates a SWEAT440-style at-home workout (AI-generated, keeps the 440-second interval DNA)
- Check-in history and streaks (fed by CRM check-in data)

### 3. Rewards loop
Points engine tied to the CRM. **Referrals are the flagship mechanic** — the whole rewards system exists to drive "invite a friend into the community."

- **Earn:** class check-ins (from CRM), referral sent, referral joins (big bonus), community participation (posts, event attendance)
- **Redeem:** retail/supplement discounts, guest passes, branded gear — redemption in-studio for v1 (no in-app storefront)
- **Referral flow v1:** member gets a unique code/link → friend books a first class with it → CRM attributes the join → both sides get points
- Tiers (e.g., Bronze/Silver/Gold) as a later layer once point economy is validated

### AI concierge (rides along, not its own loop)
Claude-powered chat: "what's today's workout," "find me an event this week," generates the in-home workouts, answers studio FAQs. Cheap to layer on; not a prototype success criterion.

## Explicitly out of scope for the prototype

- In-app retail storefront / payments (link out or redeem in-studio)
- Nutrition tracker
- Matching/recommendation algorithms (filters only)
- Real CRM integration (prototype fakes it; integration is a build-phase task)
- Push notifications, moderation tooling, multi-language

## Prototype plan

1. **Clickable prototype (this repo, v1):** self-contained HTML mobile mockup of the three loops — profile creation, community board + events, WOD + in-home builder, rewards + referral. Get it in front of ~10 members at one studio.
2. **Working prototype (next):** Expo (React Native) + Supabase (auth, Postgres, realtime) + Claude API. TestFlight pilot: one studio, 20–30 members, 4 weeks.
3. **Success metrics (pilot):** weekly active usage ≥ 50% of pilot group; ≥ 1 organic community post/event per week not seeded by staff; ≥ 10% of pilot members send at least one referral.

## CRM: Mindbody (confirmed 2026-07-03)

SWEAT440 runs on Mindbody. What its Public API v6 + Webhooks API give us:

- **Check-ins:** `GetClientVisits` / `GetClassVisits` return visit data per client/class — this powers streaks and check-in points. Webhooks push events in near-real-time (no polling), so points can land in the app right after class.
- **Referral attribution:** client profiles carry a **`ReferredBy`** field, included in the `client.created` webhook payload. v1 referral flow: friend books first class with member's code → front desk (or online intake) sets Referred By → webhook fires → app credits both sides. Cleaner long-term: app-side attribution keyed to Mindbody client IDs, with `ReferredBy` as the CRM record.
- **Account matching:** app login matched to Mindbody client ID by email at signup.
- **Studio list:** each location is a Mindbody site/location — the Home Studio dropdown can be fed from the API rather than hand-maintained.

**To do before build phase (see TODO):** register a Mindbody developer account, get sandbox access, and confirm how SWEAT440's franchise is structured in Mindbody (one site with many locations vs. site-per-franchisee — this determines API keys, costs, and whether each franchisee must approve the integration). Note the API v6 vs. webhooks time-format quirk (local time vs. ISO UTC) for the build team.

Docs: [developers.mindbodyonline.com](https://developers.mindbodyonline.com/) · [API endpoints](https://developers.mindbodyonline.com/Resources/Endpoints) · [Webhooks](https://developers.mindbodyonline.com/WebhooksDocumentation) · [API FAQ](https://support.mindbodyonline.com/s/article/API-FAQ?language=en_US)

## Open questions

1. ~~Which CRM does SWEAT440 use?~~ **Answered: Mindbody** (see section above). Remaining sub-question: franchise site structure in Mindbody (one site vs. site-per-franchisee).
2. **Canonical studio list source** for the Home Studio dropdown — likely resolvable via the Mindbody API once we have access.
3. **Birthday/age display policy** — collect birthday for perks (birthday reward?) but decide what's shown publicly. Also: 18+ only?
4. **Moderation and safety** — the Instagram model (user photos/videos, DMs, follows) raises the stakes well beyond a text board: blocking, reporting, and content review must ship at launch, and media storage/CDN is now a real build cost. Who owns moderation — franchise owner or HQ? Note: this also expands the working-prototype scope; keeping DMs text-only in v1 is the recommended pressure valve.
5. **Referral reward economics** — what's a referral worth in points/dollars, and who funds it (HQ vs. franchisee)?

## File map

- `docs/projects/sweat440-app/brief.md` — this file
- `docs/projects/sweat440-app/prototype/v1.html` — clickable prototype v1 (self-contained HTML)

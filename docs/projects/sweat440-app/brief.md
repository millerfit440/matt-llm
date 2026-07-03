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
Dating-app-style member profiles, focused on SWEAT440 — connection, not romance (though we don't fight it if it happens).

**Profile fields (v1):**
- Name
- Photo
- Home Studio — dropdown of SWEAT440 studio locations
- Location (city/neighborhood)
- Birthday (internal; display age or age range — TBD, see open questions)
- Occupation
- Fitness goals (multi-select: strength, weight loss, endurance, community, etc.)
- Usual class times (helps members find people on their schedule)
- Short bio / interests

**Around profiles:**
- Studio-scoped community board (posts, questions, wins)
- Events / meetups with RSVP (run clubs, post-class coffee, challenges)
- Member discovery filtered by home studio, goals, class times — simple filters, **no matching algorithm in v1**

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

## Open questions

1. **Which CRM does SWEAT440 use, and what does its API expose?** Check-ins and referral attribution both depend on this. Biggest technical risk — answer before build phase.
2. **Canonical studio list source** for the Home Studio dropdown (and how new studios get added).
3. **Birthday/age display policy** — collect birthday for perks (birthday reward?) but decide what's shown publicly. Also: 18+ only?
4. **Who moderates community boards** at the studio level (franchise owner? HQ?).
5. **Referral reward economics** — what's a referral worth in points/dollars, and who funds it (HQ vs. franchisee)?

## File map

- `docs/projects/sweat440-app/brief.md` — this file
- `docs/projects/sweat440-app/prototype/v1.html` — clickable prototype v1 (self-contained HTML)

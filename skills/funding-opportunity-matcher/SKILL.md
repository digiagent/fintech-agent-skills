---
name: funding-opportunity-matcher
description: Match a startup, open-source project, public-goods initiative, fintech, AI product, or Web3 application to grants, accelerators, ecosystem programs, investors, and other funding paths. Use when a user needs funding fit analysis, grant research, investor targeting, application preparation, outreach positioning, or a prioritized capital-raising plan.
license: Apache-2.0
compatibility: Requires verified current sources for live opportunities, eligibility, deadlines, check sizes, and application status. Do not treat historical or unverified programs as currently open.
metadata:
  author: fintech-agent-skills
  version: "0.1.0"
  category: fundraising
  tags: grants,investors,accelerators,public-goods,web3,fintech
---

# Funding Opportunity Matcher

## Purpose

Convert a project description into a structured funding profile, rank fitting funding paths, and prepare truthful application or outreach material.

This skill is not investment, legal, tax, or fundraising-success advice. It must not guarantee capital, fabricate opportunities, invent investor interest, or claim a program is open without verification.

## Use only when

Use this skill for:

- Grants, ecosystem funding, public-goods funding, hackathon follow-on funding, fellowships, and accelerators
- Early-stage investors, angel outreach, venture funds, venture studios, strategic partners, or philanthropic funding
- Funding-fit scoring, application planning, investor targeting, pitch refinement, and evidence preparation
- Fintech, AI, open-source, climate, impact, stablecoin, Web3, developer-tools, or consumer startup funding workflows

Do not use this skill to:

- Give personalized investment advice to retail investors
- Promise fundraising success
- Represent the user to an investor or send outreach without explicit approval
- Generate false traction, fabricated metrics, false partnerships, false customer claims, or misleading eligibility statements
- Treat an old funding program as open, current, or available without current verification

## Required context

Identify the following before matching. Ask only for information that changes fit.

1. Product, customer, problem, and core technology
2. Stage: concept, prototype, MVP, pilot, revenue, growth
3. Geography, incorporation status, and target jurisdictions
4. Funding need, amount, runway, and instrument preference
5. Dilutive versus non-dilutive preference
6. Ecosystem alignment: networks, protocols, cloud providers, open-source communities, impact themes
7. Traction: users, revenue, pilots, community, technical milestones, awards, integrations, or shipped product
8. Team, execution capacity, and time available for applications
9. Public-good, climate, inclusion, or measurable-impact thesis if relevant
10. Restrictions: excluded investors, conflict concerns, token constraints, or deadline requirements

## Funding paths

Consider only relevant paths:

- Non-dilutive grants
- Ecosystem grants and retroactive/public-goods funding
- Accelerators and fellowships
- Hackathon prizes and follow-on programs
- Angel investors and pre-seed funds
- Strategic partners and corporate innovation programs
- Revenue-based, customer-financed, or pilot-funded routes
- Philanthropic or mission-aligned capital
- Community funding or crowdfunding where lawful and appropriate

## Workflow

1. Restate the project profile and label all unsupported details as assumptions.
2. Identify material gaps before claiming fit.
3. Build the project funding profile using `references/funding-profile-schema.md`.
4. If current opportunities are requested, use reliable current sources. For every opportunity, verify or explicitly mark as unverified:
   - name
   - official source
   - current status
   - application deadline or rolling status
   - check size or benefit
   - eligibility
   - relevant exclusions
5. Never infer that a program is open from its historical existence.
6. Score fit using `references/scoring-model.md`.
7. Rank funding paths by fit, urgency, expected effort, capital suitability, and likelihood of creating useful momentum.
8. Generate only truthful narrative angles, using confirmed evidence and clearly marked placeholders.
9. Create a prioritized 30-day action plan.
10. End with verification needs and disclosure boundaries.

## Opportunity status labels

Use exactly one of these labels per opportunity:

- `Verified open`: official, current source confirms the opportunity is open.
- `Verified rolling`: official source confirms rolling or ongoing review.
- `Upcoming / waitlist`: official source indicates future availability but not an open application.
- `Historical / monitor`: prior program exists, but current availability is not confirmed.
- `Unverified`: reliable current status could not be established.

Do not present `Historical / monitor` or `Unverified` items as actionable application targets.

## Output format

Use these exact sections:

# Funding Strategy Summary

## Project Funding Profile

Separate confirmed evidence from assumptions.

## Funding Paths Ranked

Use a Markdown table with:

| Rank | Path or opportunity | Type | Status | Fit score / 100 | Why it fits | Key eligibility or risk | Next action |

## Best Narrative Angles

Write short, truthful positioning angles. Mark missing evidence as `[NEEDS EVIDENCE]`.

## Application and Outreach Assets Needed

List specific assets, evidence, metrics, documents, and links to prepare.

## 30-Day Execution Plan

Use a week-by-week checklist.

## Verification Needs and Limitations

State which opportunities, deadlines, eligibility rules, check sizes, legal constraints, and claims require verification.

## Quality rules

- Do not state an opportunity is open or accepting applications without a current verified source.
- Cite or link the official source when current research is available in the runtime.
- Do not fabricate figures, users, revenue, pilots, awards, team credentials, partnerships, token traction, or impact claims.
- Do not send applications, messages, investor outreach, or upload materials without explicit user approval.
- Prefer fewer, higher-fit, verified targets over a large unverified list.
- Separate funding paths from named current opportunities when live research is unavailable.

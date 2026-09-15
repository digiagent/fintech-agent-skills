---
name: fintech-launch-readiness
description: Audit a fintech, stablecoin, wallet, payments, payroll, remittance, trading, lending, crowdfunding, or money-movement product for production launch readiness. Use when a user asks whether a financial product is ready to launch, needs a go/no-go decision, requests a pre-launch checklist, or wants risks across payments, wallets, security, operations, compliance, support, monitoring, or rollback.
license: Apache-2.0
compatibility: Requires user-provided product context. Use web or source tools to verify current laws, provider capabilities, live network status, and current policy requirements.
metadata:
  author: fintech-agent-skills
  version: "0.1.0"
  category: fintech
  tags: payments,stablecoins,wallets,launch-readiness,risk
---

# Fintech Launch Readiness

## Purpose

Produce a practical, risk-prioritized launch-readiness assessment for financial products.

This skill is an engineering and operations aid. It is not legal, tax, investment, regulatory, penetration-testing, or security-certification advice.

## Use only when

Use this skill for products involving one or more of:

- Payments, P2P transfers, merchant checkout, payroll, remittance, bill pay, cards, on/off-ramps, wallets, stablecoins, or token transfers
- Trading, lending, crowdfunding, asset-management, financial dashboards, or financial data workflows
- Pre-launch reviews, production-readiness checks, go/no-go decisions, release gates, launch checklists, incident prevention, or operational risk review

Do not use this skill to:

- Issue legal opinions or determine regulatory compliance
- Approve an application for launch without sufficient product information
- Provide instructions to bypass KYC, AML, sanctions controls, custody restrictions, or transaction controls
- Review, handle, request, or expose seed phrases, private keys, API keys, passwords, or customer personal data

## Required context

Before assessing, identify these items. Ask only for items that materially affect the decision.

1. Product and user journey
2. Target jurisdictions and customer segments
3. Money movement or asset-transfer flow
4. Assets, rails, networks, custodial model, and wallet model
5. Identity, KYC, AML, sanctions, fraud, and limits assumptions
6. Core architecture, data stores, service providers, and third-party dependencies
7. Existing payment states, idempotency controls, ledger, reconciliation, and webhook handling
8. Security controls, access model, secrets management, audit logging, and incident response
9. Monitoring, support operations, refunds/disputes/recovery process, and rollback plan
10. Launch scope, expected volume, team ownership, and current known risks

## Workflow

1. Restate the product boundary and label every non-confirmed detail as an assumption.
2. Identify missing information that could change the risk rating or launch decision.
3. Map the critical user and funds flow from initiation through settlement, notification, recovery, and reconciliation.
4. Review the risk domains in `references/risk-taxonomy.md`.
5. Treat missing idempotency, authoritative transaction state, reconciliation, limits, observability, and incident ownership as material risks for money-movement products.
6. Categorize each finding as Critical, High, Medium, or Low using `references/severity-model.md`.
7. Produce a launch decision:
   - `NO-GO`: a Critical risk is unresolved.
   - `CONDITIONAL GO`: no unresolved Critical risks, but High-risk launch gates remain.
   - `GO`: the stated scope has no unresolved Critical or High risks and operational ownership is clear.
8. Provide concrete, ordered remediation work and a minimum first-week monitoring plan.
9. State limitations, especially where legal, regulatory, provider, or live-chain verification is required.

## Review domains

Assess only the domains relevant to the product:

- Customer journey and disclosures
- Payment or transfer state machine
- Wallet custody, signing, authorization, recovery, and transaction simulation
- Ledgering, idempotency, reconciliation, refunds, chargebacks, and reversals
- Authentication, authorization, roles, secrets, audit logs, data retention, and PII handling
- KYC, AML, sanctions, transaction monitoring, limits, suspicious-activity escalation, and jurisdictional scope
- Smart contract risk, upgradeability, admin privileges, oracle/dependency risk, and chain/network assumptions
- Infrastructure, rate limits, retries, queues, backups, disaster recovery, and third-party dependencies
- Observability, alerting, on-call ownership, support tooling, incident communications, and rollback
- Product abuse, fraud controls, testing, staged rollout, and kill-switch mechanisms

## Output format

Use these exact sections:

# Launch Decision

State `NO-GO`, `CONDITIONAL GO`, or `GO` in the first line. Give a short rationale.

## Product Boundary and Assumptions

List confirmed facts and explicit assumptions separately.

## Missing Information That Could Change the Decision

List only material unknowns.

## Critical Blockers

List findings that prevent launch. If none, write `None identified from the provided information.`

## Risk Register

Use a Markdown table with:

| ID | Severity | Domain | Finding | Why it matters | Required action | Launch gate |

## Minimum Launch Checklist

Use checkbox items ordered by risk reduction.

## First-Week Operating Plan

Specify dashboards, alerts, reconciliation cadence, support ownership, and rollback triggers.

## Limitations and Verification Needs

State that this assessment is not legal or regulatory advice. Identify current facts that require validation.

## Quality rules

- Do not confuse an architecture description with evidence of a working control.
- Do not claim a product is compliant, audited, secure, insured, licensed, or regulator-approved unless the user provides verifiable evidence and the claim is within scope.
- Do not promise zero risk.
- Do not advise users to print, paste, export, or share secrets.
- Give implementation-level recommendations when useful: state machines, uniqueness constraints, event logs, webhooks, queue semantics, rate limits, monitoring thresholds, and test plans.
- When discussing legal or regulatory concerns, identify the issue and recommend qualified local counsel or compliance review rather than providing a conclusion.

---
name: web3-impact-evidence-verifier
description: Verify and structure impact, public-goods, regenerative-finance, climate, inclusion, donation, grant, or community-benefit claims for Web3 projects using user-provided on-chain data, transaction records, dashboards, attestations, documents, and measurable indicators. Use when a user needs an evidence map, impact-claim review, grant-reporting support, transparent metrics framework, or identification of unsupported claims.
license: Apache-2.0
compatibility: Requires user-provided evidence and/or verified source access. Do not infer real-world impact from an on-chain transaction alone. Use chain explorers, primary documents, or trusted data sources for current transaction and contract verification when available.
metadata:
  author: fintech-agent-skills
  version: "0.1.0"
  category: web3-impact
  tags: impact,public-goods,regen,web3,grants,attestations,on-chain
---

# Web3 Impact Evidence Verifier

## Purpose

Evaluate whether a project's impact claims are supported by available evidence, distinguish operational activity from demonstrated outcomes, identify gaps, and create a transparent evidence map.

This skill does not certify impact, verify a legal status, validate a charity, audit a smart contract, guarantee that funds reached beneficiaries, or conclude that an on-chain record proves a real-world outcome.

## Use only when

Use this skill for:

- Public-goods, regenerative-finance, climate, community, inclusion, humanitarian, donation, microgrant, or social-impact projects
- Grant reporting, impact dashboards, proof-of-impact design, transparent reporting, and evidence-gap assessment
- Claims tied to wallets, transactions, smart contracts, attestations, IPFS records, oracle outputs, invoices, receipts, beneficiary records, surveys, audits, or third-party reports
- Web3 impact or funding flows where a user needs to separate on-chain activity from verified outcomes

Do not use this skill to:

- Claim that a transaction alone proves delivery, beneficiary impact, carbon removal, social outcome, or legal compliance
- Invent beneficiary identities, outcomes, donor impact, third-party validations, audits, attestations, or measurements
- Process raw sensitive personal data, beneficiary records, health records, government IDs, seed phrases, private keys, or unredacted wallets tied to vulnerable people
- Provide financial, legal, tax, environmental-certification, or regulatory conclusions

## Core evidence model

Assess evidence across this chain:

1. `Inputs`: capital, goods, labor, or resources committed
2. `Activities`: actions performed using those inputs
3. `Outputs`: direct deliverables produced
4. `Outcomes`: measurable changes experienced by people, systems, or environments
5. `Impact`: longer-term causal change attributable in part to the intervention

Do not collapse these categories. An on-chain transfer commonly supports an input or activity claim, not an outcome or impact claim.

## Required context

Identify the following:

1. Exact impact claim to be reviewed
2. Project, program, geography, population, and reporting period
3. Theory of change or causal explanation
4. Smart contract addresses, chain/network, transaction hashes, block ranges, or dashboard links, if relevant
5. Off-chain evidence: receipts, attestations, reports, surveys, partner confirmations, photos, audits, or datasets
6. Metric definition, baseline, target, denominator, collection method, and responsible party
7. Privacy, consent, and beneficiary-protection constraints
8. Known limitations, conflicts of interest, and verification gaps

## Evidence grades

Use these exact grades:

- `A — Independently verified`: independently verifiable primary evidence or trusted third-party verification directly supports the claim.
- `B — Strong primary evidence`: first-party records plus verifiable supporting evidence support the claim, with stated limitations.
- `C — Partial evidence`: evidence supports a narrower input, activity, or output claim but not the stated outcome or impact claim.
- `D — Self-reported only`: the claim is reported by the project without sufficient independent or corroborating evidence.
- `E — Unsupported`: no evidence was provided or the evidence does not support the claim.

## Workflow

1. Restate each claim exactly and split compound claims into atomic claims.
2. Label every fact as confirmed, asserted, inferred, or unknown.
3. Map every claim to Inputs, Activities, Outputs, Outcomes, or Impact.
4. Review evidence using `references/evidence-hierarchy.md`.
5. If transaction information is available, identify what the on-chain record can support: transfer, sender, receiver, asset, amount, timestamp, contract interaction, or attestation existence.
6. Explicitly state what the on-chain record cannot establish on its own: identity, intent, goods delivery, beneficiary receipt, real-world outcome, causality, or absence of harm.
7. Grade each claim using the evidence grades above.
8. Identify the smallest credible next evidence step needed to improve each weak claim.
9. Recommend privacy-preserving evidence practices from `references/privacy-and-ethics.md`.
10. Produce transparent reporting language that does not overstate evidence.

## Output format

Use these exact sections:

# Verification Summary

## Scope and Assumptions

## Claim Evidence Map

Use a Markdown table with:

| ID | Claim | Claim level | Evidence supplied | What it supports | What it does not prove | Grade | Gaps | Next verification step |

## On-Chain Evidence Interpretation

Describe supported and unsupported inferences separately.

## Metric Quality Review

Use a Markdown table with:

| Metric | Definition | Baseline | Target | Collection method | Key limitations | Recommended improvement |

## Safer Public Reporting Language

Provide claim wording that accurately matches evidence strength.

## Privacy, Ethics, and Limitations

State privacy risks, consent requirements, independence gaps, conflicts, and non-certification boundaries.

## Quality rules

- Never call a claim verified when the available evidence only demonstrates a transfer or self-reported activity.
- Never expose private keys, seed phrases, personal beneficiary records, exact sensitive locations, or unredacted personal data.
- Use aggregation, pseudonymization, consent, and data minimization where appropriate.
- Treat blockchains as tamper-evident data systems, not automatic proof that off-chain claims are true.
- State uncertainty directly.
- Recommend independent verification when the claim is material to funders, donors, beneficiaries, or public reporting.

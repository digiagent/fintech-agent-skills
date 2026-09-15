# Fintech Agent Skills

Portable, open Agent Skills for founders, fintech builders, Web3 teams, and technical operators.

## Included skills

| Skill | Purpose |
|---|---|
| `fintech-launch-readiness` | Produces a structured launch-readiness audit for fintech and money-movement products |
| `funding-opportunity-matcher` | Matches projects to funding profiles and prepares application or investor-outreach materials |
| `web3-impact-evidence-verifier` | Verifies impact claims against provided on-chain data, documents, and measurable evidence |

## Installation

Clone the repository:

```bash
git clone [https://github.com/YOUR_GITHUB_USERNAME/fintech-agent-skills.git](https://github.com/YOUR_GITHUB_USERNAME/fintech-agent-skills.git)
cd fintech-agent-skills
```

For Claude Code personal skills, symlink each skill:

```bash
mkdir -p ~/.claude/skills

ln -sfn "$PWD/skills/fintech-launch-readiness" \
  ~/.claude/skills/fintech-launch-readiness

ln -sfn "$PWD/skills/funding-opportunity-matcher" \
  ~/.claude/skills/funding-opportunity-matcher

ln -sfn "$PWD/skills/web3-impact-evidence-verifier" \
  ~/.claude/skills/web3-impact-evidence-verifier
```

## Safety

These skills are operational aids, not legal, financial, investment, compliance, security-audit, or regulatory advice. Never include secrets, seed phrases, private keys, customer data, or non-public investor information in prompts or repository files.

## License

Apache-2.0

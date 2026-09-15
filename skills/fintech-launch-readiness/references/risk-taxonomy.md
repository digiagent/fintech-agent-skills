# Fintech Launch Risk Taxonomy

## Payment and transfer integrity

Review for:

- Idempotency at payment-intent creation and transaction broadcast.
- A single authoritative internal payment identifier.
- Explicit state transitions and terminal states.
- Safe retry behavior and duplicate-transfer prevention.
- Webhook signature validation and replay protection.
- Chain confirmation policy and reorg handling where relevant.
- Internal ledger records separated from external provider or chain records.
- Scheduled and exception-based reconciliation.
- Clear handling of failed, pending, replaced, reversed, refunded, disputed, or manually reviewed transfers.

## Wallet and custody

Review for:

- Custodial, non-custodial, MPC, embedded-wallet, and delegated authorization boundaries.
- Transaction preview, recipient confirmation, asset and network display, and approval scopes.
- Key-management controls and privileged access separation.
- Wallet recovery policy and support boundaries.
- Smart-account and paymaster failure modes.
- Withdrawal allowlists, velocity limits, cool-downs, and step-up authentication where appropriate.

## Identity, fraud, and compliance operations

Review for:

- Jurisdiction restrictions and eligibility disclosures.
- KYC/KYB policy assumptions.
- Sanctions-screening and transaction-monitoring workflow.
- Account-takeover protections.
- Fraud detection, manual review, velocity controls, and abuse reporting.
- Decision ownership and escalation for suspicious transactions.

## Application and infrastructure

Review for:

- Role-based access, least privilege, and admin action audit trails.
- Secret management and environment separation.
- Input validation and authorization checks.
- Rate limits, bot defenses, queueing, retries, timeouts, and circuit breakers.
- Backup, restore, dependency-failure, and disaster-recovery plans.
- Logging that excludes secrets and unnecessary sensitive personal data.

## Operations and support

Review for:

- Named incident owner and escalation channel.
- Monitoring for money-flow anomalies, errors, delays, reconciliation breaks, and dependency failures.
- Customer support workflow for pending, failed, and disputed payments.
- Status communication and rollback plan.
- Controlled or staged rollout strategy.
- A documented kill switch or capability-disable procedure where feasible.

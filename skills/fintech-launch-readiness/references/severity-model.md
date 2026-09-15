# Severity Model

## Critical

A realistic failure can cause unauthorized or duplicated funds movement, irreversible loss, severe data exposure, systemic abuse, or a material inability to operate or recover.

Launch must not proceed until the issue is remediated or the launch scope is reduced enough to remove the exposure.

Examples:

- Payment retries can create duplicate transfers.
- Production signing authority or private-key exposure is possible.
- No way exists to reconcile internal records against settlement records.
- A critical authorization bypass affects balances, withdrawals, or admin functions.

## High

A significant risk can materially harm users, operations, financial integrity, or trust, but a controlled launch may be possible if there is an explicit owner, deadline, temporary mitigation, and reduced scope.

Examples:

- No alerting for rising failed-transfer rates.
- Wallet recovery policy is absent.
- Third-party provider outages have no fallback or customer-messaging plan.
- Privileged actions have incomplete audit logging.

## Medium

The issue increases operational burden or reduces resilience but should not independently create severe loss under the stated launch scope.

Examples:

- Incident documentation is incomplete.
- A dashboard lacks non-critical business metrics.
- Some support macros are missing.
- Rollback communication templates are not yet prepared.

## Low

A quality, documentation, maintainability, or usability improvement with limited direct risk impact.

Examples:

- A release checklist could be better organized.
- Minor customer-facing wording is ambiguous.
- A runbook needs clearer ownership labels.

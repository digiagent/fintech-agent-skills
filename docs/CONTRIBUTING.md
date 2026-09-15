# Contributing

## Before opening a pull request

1. Keep the skill directory name and frontmatter `name` identical.
2. Add at least five evaluation cases under `evals/cases.json`.
3. Include normal, underspecified, adversarial, out-of-scope, and sensitive-data cases.
4. Confirm the skill does not request or expose secrets.
5. Run the repository validation commands.

## Versioning

Use semantic versions in the frontmatter metadata:

- Patch: wording, references, small output improvements.
- Minor: new workflow step, evaluation coverage, optional capability.
- Major: breaking output contract, changed safety boundaries, renamed skill.

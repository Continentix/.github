# Contributing to Continentix

Continentix repositories are engineered and operated by a single maintainer. External contributions are welcome where a repository says so in its own `README.md`; everywhere else, issues and security reports are the way in. This document is the engineering standard every change is held to — internal or external.

## Before you start

1. Read the repository `README.md` and, if present, `docs/SPEC.md` and `_audit/` — the audit reports are the ground truth of what exists.
2. Open an issue describing the change before writing code, unless it is a one-line fix.
3. One pull request = one change. Bundled refactors are declined.

## Engineering standard

### Code
- Code, identifiers, and comments are in **English**. Files end with a commented Russian annotation block (`=== АННОТАЦИЯ (RU) ===`) describing purpose, contents, key fact, location, and owner.
- No feature flags or compatibility shims where the code can simply change. No speculative abstractions.
- Comments explain *why*, never *what*.

### Security
- Never introduce custom cryptography. Use standardised primitives from audited libraries and state the attack class in the PR description.
- Secrets are never committed — not in code, config, fixtures, or tests. CI push-protection is enabled; do not work around it.
- Validate at system boundaries (user input, external APIs, webhooks). Trust internal code.

### Licensing and provenance
- Dependencies must be **permissive-licensed**: MIT, Apache-2.0, BSD, ISC. GPL / AGPL / LGPL / SSPL are rejected by CI (`cargo deny`, `license-checker`, `composer licenses`).
- Any new dependency is recorded in the repository `SBOM.md`: `package | version | licence | date | reason`.
- Weak-copyleft exceptions (MPL-2.0, unmodified, linked only) require an explicit line in `SBOM.md`.
- AI-assisted code is allowed and must be original; non-trivial generated blocks carry an inline audit marker and the file's provenance section records the human creative input.

### Data
- Local, test, and production use the **same database engine and major version**. SQLite is not accepted anywhere, including tests.
- Migrations are forward-only and reversible by a new migration, never by editing an applied one.

### Process
- Branches: `main` is releasable; work happens on `feat/*`, `fix/*`, `chore/*`.
- Commits follow [Conventional Commits](https://www.conventionalcommits.org): `feat(scope): …`, `fix(scope): …`.
- Every PR states: what changed, why, how it was verified (commands, screenshots, or test names). "Should work" is not verification.
- CI must be green: formatting, lints with warnings as errors, tests, licence and vulnerability scans.

## Review

Reviews check correctness, security boundaries, licence hygiene, and whether the change is the smallest one that solves the problem. Style nits are fixed by tooling, not by reviewers.

Thank you for holding the line with us.

<!--
=== АННОТАЦИЯ (RU) ===
Назначение файла: инженерный стандарт организации, по умолчанию для всех
  репозиториев Continentix (GitHub подхватывает CONTRIBUTING.md из .github).
Что внутри: перед стартом (аудит = ground truth, issue до кода, один PR =
  одно изменение), стандарт кода/безопасности/лицензий/данных/процесса.
Ключевой факт: это публичная проекция правил _control (RESOLVE not FLAG,
  permissive-only, DB-паритет, one change per cycle) без внутренних деталей.
Куда ставится: /Users/apple/Projects/continentix/org-profile/CONTRIBUTING.md
Кто редактирует: Vitalii.
-->

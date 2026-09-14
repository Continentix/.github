# Security Policy

Security is the foundation of every Continentix product, not a feature of it. This policy applies to all repositories in the Continentix organisation unless a repository ships its own, stricter `SECURITY.md`.

## Reporting a vulnerability

**Do not open a public issue for security problems.**

Report privately through **GitHub Security Advisories** on the affected repository: *Security → Report a vulnerability*. If the affected repository is not public yet, use the advisory form on `Continentix/.github`.

Please include:

- the product and version / commit;
- a description of the issue and the attack class it enables;
- reproduction steps or a proof of concept;
- your assessment of impact.

## What to expect

| Step | Target |
|---|---|
| Acknowledgement | within 72 hours |
| Triage and severity | within 7 days |
| Fix for critical / high | as fast as a safe fix allows; status updates at least weekly |
| Credit | in the release notes, unless you ask to stay anonymous |

We do not run a paid bug-bounty programme. Every valid report is acknowledged, fixed, and credited.

## Scope

In scope: source code, build and release pipelines, infrastructure configuration published in Continentix repositories, and production deployments of Continentix products.

Out of scope: third-party services we integrate with (report to the vendor), social engineering, physical attacks, and denial-of-service testing against production systems. Do not access, modify, or exfiltrate data that is not yours while researching.

## Our commitments

- We never implement our own cryptographic primitives; we use standardised, audited ones and state the attack class each protection defends against.
- Secrets never live in repositories, front-ends, or plaintext configuration.
- Critical operations in control-plane products require approval from a separate trusted device and leave an immutable, hash-chained audit record.
- Dependencies are tracked in an SBOM and scanned continuously; licence and vulnerability gates run in CI.

Thank you for helping keep Continentix products and their users safe.

<!--
=== АННОТАЦИЯ (RU) ===
Назначение файла: политика безопасности по умолчанию для всей организации
  Continentix (GitHub подхватывает SECURITY.md из репозитория .github для
  любого репо без собственного файла).
Что внутри: канал приватного репорта (GitHub Security Advisories), что
  включать в отчёт, сроки реакции, scope, наши обязательства.
Ключевой факт: без email-адреса — только GHSA, чтобы не выдумывать ящик,
  которого нет; добавить security@continentix.com, когда почта будет поднята.
Куда ставится: /Users/apple/Projects/continentix/org-profile/SECURITY.md
Кто редактирует: Vitalii.
-->

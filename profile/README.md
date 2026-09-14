<p align="center">
  <img src="https://raw.githubusercontent.com/Continentix/.github/main/profile/banner.svg" alt="Continentix" width="100%">
</p>

<h3 align="center">Continent-scale infrastructure — from the first commit.</h3>

<p align="center">
  <a href="https://continentix.com">continentix.com</a> ·
  <a href="https://github.com/Continentix/.github/blob/main/SECURITY.md">Security policy</a> ·
  <a href="https://github.com/Continentix/.github/blob/main/CONTRIBUTING.md">Engineering standard</a>
</p>

---

## What Continentix is

Continentix is not a product. It is the structure under which products are built to survive continental scale: from one engineer to millions of users, from one server to global infrastructure.

We do not chase launch counts. Ideas are sifted as strictly as code — only what has passed an audit, held under load, been restored from backup, and can withstand outside scrutiny earns the Continentix name.

Continentix is designed, built, and operated by a single engineer. That is a condition, not a limitation: every decision has an author, every line has an owner, and nothing is left to "we'll sort it out later."

## What we believe

| Principle | In practice |
|---|---|
| **Security is the foundation, not a feature** | No home-grown cryptography. Standardised primitives only (ML-KEM, Ed25519, P-256, AES-GCM, Argon2id); every protection claim names the attack class it defends against. |
| **Infrastructure is architecture, not patches** | Explicit responsibility boundaries, reproducible environments, local == production down to the engine version. Temporary fixes do not exist — only a found root cause or an open task. |
| **Honesty over presentation** | A risk is called a risk. Weak decisions are surfaced and fixed before release. "Done" means verified end-to-end. |
| **Primitives outlive products** | Positioning dies in months; primitives hold value for years. We inventory molecules — signatures, attestation, trust thresholds, immutable logs, deterministic replay — and reuse them across products. |
| **Scale is independence from geography** | A Continentix product must work the same for one city and for a continent. That is the difference between a startup and infrastructure. |

## The Continentix Standard

A system earns the name only after passing seven gates — each closed by a fact, not an intention:

1. **Audit on disk** — no plan without a written report of the real state of code and infrastructure.
2. **Proven cryptography** — standardised primitives only; anything custom is an access scheme on top of them, with its threat model stated.
3. **Clean IP** — every dependency permissive-licensed (MIT / Apache-2.0 / BSD) and recorded in an SBOM; provenance of human authorship documented per file; copyleft contamination blocked in CI.
4. **Environment parity** — local, test, and production run identical engine versions. No "faster test database."
5. **Recovery proven by recovery** — a backup that has never been restored is not a backup. The disaster procedure is written and rehearsed.
6. **Separated planes** — control never shares a path with customer traffic; critical actions require a second trusted device.
7. **One change per cycle** — changes land one at a time, each closed by verification.

## What we build

| Domain | Products | Stack |
|---|---|---|
| Infrastructure control | **Valtrix** — secure virtual-infrastructure control plane (Proxmox, Hetzner) with a guardian-device approval model | Rust · Axum · PostgreSQL · Flutter |
| Secure communication & keys | **DevoraX2** — post-quantum, dual-device messenger · attestation and mandate-transparency primitives | Rust · ML-KEM · Flutter |
| Verifiable interfaces | **Calcara** — deterministic replay for AI-assembled UI · **Veltweave** — open standard for signed interfaces · **Veltarra** — engineering platform | Rust · TypeScript · Laravel |
| Real industries | **GuroJobs** (work) · **Puente** (health) · **Wincase**, **Liminara**, **Provata** (legal & compliance) · **Ocula** (AI eyewear) | Laravel · Vue · Flutter · Rust |

Repositories are transferred into this organisation one project at a time, each only after it passes the Standard above. An empty-looking organisation is a feature of the sieve, not a gap.

## Engineering conventions

- **Languages:** Rust for cores and control planes; PHP / Laravel for business platforms; Flutter for mobile; Vue 3 + TypeScript for web consoles.
- **Data:** PostgreSQL for the Rust family; MariaDB 10.11 for the Laravel family; Valkey for cache. Same versions everywhere, pinned by digest.
- **Licensing:** permissive-only dependencies enforced by `cargo deny` / license checkers; exceptions are recorded, never silent.
- **Process:** audit → decision record → one gated change at a time. Conventional commits, signed tags, Renovate for dependencies.
- **Observability:** OpenTelemetry, Prometheus-compatible metrics, alerting into private ops channels.

Reusable workflow templates for these stacks live in this repository under [`workflow-templates/`](https://github.com/Continentix/.github/tree/main/workflow-templates).

## Security

Found a vulnerability in any Continentix product? Please read the [security policy](https://github.com/Continentix/.github/blob/main/SECURITY.md) and report privately through GitHub Security Advisories. We do not run a public bug-bounty programme, but every valid report is acknowledged, fixed, and credited.

---

<p align="center">
  <sub>Continentix · Web Wave Developers · Spain · Founded 2026</sub>
</p>

<!--
=== АННОТАЦИЯ (RU) ===================================================
Назначение файла:
  Публичный README организации Continentix на GitHub. Рендерится на
  вкладке Overview https://github.com/Continentix (правило GitHub:
  файл profile/README.md в публичном репозитории <org>/.github).

Что внутри:
  баннер (profile/banner.svg), тэглайн, «что такое Continentix»,
  пять принципов таблицей, семь ворот стандарта, портфель по четырём
  направлениям (только продукты с публичными сайтами или уже названные
  в манифесте), инженерные конвенции, ссылка на security policy.

Ключевой факт:
  Это английская, сокращённая редакция манифеста v2
  (/Users/apple/Downloads/CONTINENTIX_MANIFESTO_v2.md). Внутренние
  blueprint-проекты (After, Liquara, Verdara, Audit-service) намеренно
  не перечислены — до анонса.

Куда ставится:
  локально /Users/apple/Projects/continentix/org-profile/profile/README.md
  → GitHub Continentix/.github:profile/README.md (public)

Кто редактирует:
  Vitalii; правки через commit в репозиторий Continentix/.github.
======================================================================
-->

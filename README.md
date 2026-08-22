Portfolio website
=================

# Plan

Home
Services
- Consulting & Transformation
- IT Innovation
- Architecture & Product
Work
About
Contact

## Home

- Who am I?
    Senior Software Architect / IT Innovation Consultant.

- What do I solve?
    Complex technical decisions, innovation programmes, architecture transitions, product/R&D strategy.

- Why me?
    Combination of architecture, hands-on engineering, innovation and product experience.

Suggestion:

Hero:
  Senior Software Architect & IT Innovation Consultant

I help organisations turn complex technology,
R&D and architecture challenges into actionable strategies.

[Explore services] [View portfolio]

Core expertise
Architecture | Innovation | Distributed Systems | Open Source

Selected work
3–4 highlighted portfolio cards

How I can help
short summary of the three service families

Contact CTA
Have a complex technology or innovation challenge?
Let's discuss it.

2-3 recommendations

## Services

### Consulting and Transformation

Technology assessment & transition
- Architecture / technology audit
- Technical due diligence
- Recommendations and target architecture
- Transition roadmap
- Support during implementation or migration
- Technical leadership during critical phases

### IT Innovation

Turn emerging technologies into viable products,
R&D programmes and partnerships.

- R&D strategy
- Technology exploration and prototyping
- R&D programme definition and management
- Innovation roadmap
- Industrial / academic partnerships
- Collaborative R&D projects
- Open-source strategy

  Looking for R&D partners?
  I am open to industrial, academic and collaborative research projects.

### Software Architecture & Product

- Distributed systems architecture
- Cloud / edge / embedded architecture
- Architecture modernization
- Technical strategy
- Product architecture
- Product Owner / technical Product Owner support
- Technical feasibility analysis
- Prototype / MVP architecture

## Work

### Card format

```yaml
title: "Scanbus"
date: 2026-08-01
client: "Personal / Open Source"
type: "Open Source"
tags:
  - Rust
  - Linux
  - Distributed Systems
  - D-Bus
  - Product
  - AI-assisted development
featured: true
```

+ recommendations ?

### Tagging

- Roles
    - Architect
    - Technical Lead
    - Product Owner
    - R&D Manager
    - Consultant
- Domains
    - Telecom
    - IoT
    - Embedded
    - Open Source
    - Cloud
- Technologies
    - Rust
    - Linux
    - Kubernetes
    - D-Bus
    - AI
    - Blockchain
- Themes
    - Innovation
    - Architecture
    - Transformation
    - R&D
    - Product

## About

I am a software architect and technology consultant
with a background spanning engineering, product development
and R&D.

I work where architecture, innovation and product strategy
meet: understanding complex systems, identifying viable
technical directions, and helping teams turn them into
working products.

Optionally:
- 20+ years experience
- Software architecture
- Distributed systems
- Open-source technologies
- R&D and innovation

Plus, links to
- linkedin
- github
- downloadable CV

## Contact

Let's work together

I am available for:
- Architecture and technology consulting
- R&D and innovation programmes
- Technical assessments
- Product / architecture advisory
- Collaborative R&D partnerships

[Email]
[LinkedIn]

# Hugo content model

## Structure

```
content/
├── _index.md
├── services/
│   └── _index.md
├── portfolio/
│   ├── _index.md
│   ├── scanbus.md
│   ├── bktel.md
│   ├── project-x.md
│   └── ...
├── about/
│   └── _index.md
└── contact/
    └── _index.md
```

## Portfolio filtering

Portfolio filtering uses Hugo taxonomy:

```toml
[taxonomies]
tag = "tags"
role = "roles"
domain = "domains"
```

## Recommendations

```yaml
recommendations:
  - author: "Name Surname"
    role: "CTO"
    company: "Company"
    quote: "..."
    linkedin: "..."
```

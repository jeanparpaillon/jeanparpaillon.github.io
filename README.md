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

# Hugo architecture

## Theme

Use `hugo-narrow` theme

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

The Work page (`/portfolio/`) opens with a row of filter buttons, defined in
`data/portfolio_filters.yaml`. Each entry may carry any of `roles`, `tags` and
`domains`; a project matches as soon as one of its front matter values appears
in one of those lists (exact, case-sensitive, lists OR'ed together):

```yaml
- name: Architect
  roles:
    - Architect

- name: Open Source
  domains:
    - Open Source
  tags:
    - Open Source
```

An "All" button is prepended automatically and is active on load. Matching runs
at build time in `layouts/projects/list.html`, which stamps each card with the
ids of the filters it satisfies; `assets/js/custom/work-filters.js` only toggles
visibility. That layout also drops the theme's pagination -- filtering needs
every project on the page at once.

## Recommendations

```yaml
recommendations:
  - author: "Name Surname"
    role: "CTO"
    company: "Company"
    quote: "..."
    linkedin: "..."
```

Recommendation should be in separate individual files, then:
- `feature` flag makes it home page top recommendation (2-3)
- project card can insert recommendation on demand

# Getting started

Requires **Hugo extended ≥ 0.165.0** (theme requirement) and Go (the theme is
installed as a Hugo module, no submodule / vendored copy).

```sh
make serve        # local server, drafts included, http://localhost:1313
make build        # production build into public/
make update-theme # pull the latest hugo-narrow release
```

New content:

```sh
make new-work NAME=my-project              # content/portfolio/my-project.md
make new-recommendation NAME=jane-doe      # content/recommendations/jane-doe.md
```

## Repository layout

```
config/_default/
├── hugo.yaml       # site, taxonomies, permalinks, module import
├── params.yaml     # theme options + home page copy (hero, CTA, order)
└── menus.yaml      # main / footer / social menus
content/
├── _index.md
├── services/{_index,consulting-transformation,it-innovation,architecture-product}.md
├── portfolio/      # `Work` section, exposed as /portfolio/
├── recommendations/  # headless: never rendered on its own
├── about/_index.md
└── contact/_index.md
archetypes/         # frontmatter templates used by `hugo new`
layouts/            # local overrides only (see below)
assets/css/custom/  # plain CSS loaded after the theme bundle
static/             # CNAME, favicon, cv.pdf, images…
```

## Notes on the theme integration

- The theme (`hugo-narrow`) hardcodes the section name `projects` in its project
  layouts. `content/portfolio/` cascades `type: projects` so the theme's card /
  list / single layouts apply unchanged, and
  `layouts/_partials/home/featured-projects.html` overrides the theme partial to
  read the `portfolio` section.
- The home page is composed from `params.home.contentOrder`; each entry is a
  partial in `layouts/_partials/home/`. Local sections: `hero`,
  `services-summary`, `recommendations`, `contact-cta`.
- Recommendations are one file per person in `content/recommendations/`
  (headless). `featured: true` puts one on the home page (keep 2–3); any page
  can embed one with `{{< recommendation "jane-doe" >}}`.
- The theme ships a **pre-built** Tailwind bundle (`assets/css/compiled.css`),
  so new Tailwind utility classes used in local layouts are not generated at
  build time. Reuse classes the theme already emits, or write plain CSS in
  `assets/css/custom/`.
- Technology and theme tags go into `tags`; `roles` and `domains` are separate
  taxonomies, per the filtering plan above.

Theme files can be found in `.cache/hugo/modules/filecache/modules/pkg/mod/github.com/tom2almighty/hugo-narrow@v1.3.15/`
# Website Design Specification
> Jekyll (al-folio theme) | Last updated: 2026-03-22

---

## Overview

This is a high-level design specification for a personal academic website built on the al-folio Jekyll theme. It is intended as a guiding document for an AI agent (e.g., Claude Code) tasked with implementing the site using the al-folio template.

This document is **philosophical and directional**, not a line-by-line implementation guide. It describes intent, structure, and requirements. The agent is expected to:
- Understand the design decisions described here
- Cross-reference with the actual al-folio template files and conventions
- Use its own judgment to implement details not explicitly specified
- Where a requirement conflicts with al-folio defaults, implement the necessary customization

Everything not mentioned in this document should remain as the al-folio template default.

---

## 1. File Directory Structure

> Only files you need to touch are listed. Everything else in the al-folio template stays as-is.

```
.
├── _config.yml                        # [MODIFY] Site-wide settings
│
├── _bibliography/
│   ├── papers.bib                     # [MODIFY] Published / accepted / preprint entries
│   └── working_papers.bib             # [MODIFY] Working papers (shown in separate top section)
│
├── _data/
│   ├── service.yml                    # [MODIFY] Teaching and reviewer data → renders service page
│   ├── personal.yml                   # [MODIFY] Personal life content → renders personal page
│   └── coauthors.yml                  # [MODIFY] Co-author info → auto-links their pages
│
├── _news/                             # [MODIFY] One .md file per news item
│   └── YYYY-MM-DD-slug.md
│
├── _pages/
│   ├── about.md                       # [MODIFY] Home page (hero + about + research interests)
│   ├── publications.md                # [MODIFY] Publications page config/header
│   ├── projects.md                    # [MODIFY] Projects landing page
│   ├── service.md                     # [ADD]    Teaching & Service page
│   └── personal.md                    # [ADD]    Personal Life page
│
├── _projects/                         # [EXISTS but UNUSED] Not rendered — kept for reference only
│
├── assets/
│   ├── img/
│   │   ├── prof_pic.jpg               # [MODIFY] Profile photo (replace with yours)
│   │   ├── personal/                  # [ADD] Skiing and cat photos
│   │   └── projects/                  # [ADD] Project images (e.g. micro-transit/demand-nashville.png)
│   ├── latex/
│   │   └── cv.tex                     # [MODIFY] LaTeX CV source — edit this to update CV
│   └── pdf/
│       └── cv.pdf                     # [AUTO-GENERATED] Compiled by GitHub Actions from cv.tex
│
└── _sass/
    ├── _variables.scss                # [MODIFY] Accent color, fonts
    └── _themes.scss                   # [MODIFY] Disable dark mode here
```



---

## 2. Site Structure / Navigation

| Page | Route | Nav Priority |
|------|-------|-------------|
| Home | `/` | Primary |
| Publications | `/publications/` | Primary |
| Projects | `/projects/` | Primary |
| CV | direct download → `/assets/pdf/cv.pdf` | Primary |
| Service | `/service/` | Secondary |
| Personal Life | `/personal/` | Secondary |

---

## 3. Global Design Settings

| Attribute | Value | Where to change |
|-----------|-------|----------------|
| Background | White only | `_sass/_themes.scss` |
| Dark mode | **Disabled** | `_sass/_themes.scss` |
| Accent color | Cornell red `#B31B1B` | `_sass/_variables.scss` → `$theme-color` |

---

## 4. Home Page Layout (`/`)

### 4.1 Frontmatter for `_pages/about.md`
```yaml
---
layout: about
title: Home
permalink: /
subtitle: Ph.D. Candidate · Cornell University

profile:
  align: right
  image: prof_pic.jpg
  image_circular: true
  more_info: >
    <p>Ithaca, New York</p>

announcements:
  enabled: true
  scrollable: true
  limit: 100          # show all items; scrollable container handles overflow

research_interests:   # defined in frontmatter, rendered by about.liquid
  - area: "Area Name"
    description: "One sentence."

selected_papers: false
social: true
latest_posts:
  enabled: false
---
```

### 4.2 Hero Section
- **Two-column layout**: avatar left or right (controlled by `profile.align` in frontmatter), info on the other side
- Circular profile photo from `assets/img/prof_pic.jpg`
- Display name, title, affiliation — pulled from `_config.yml`
- Social/contact icon row: Email · GitHub · LinkedIn · Google Scholar — configured in `_config.yml`
- Tagline — set as `subtitle` in frontmatter

### 4.3 Section 1 — About Me
- Full-width prose block (body of `_pages/about.md`)
- 2–3 paragraphs, no bullet points
- **"Download CV" button** at bottom of section → `/assets/pdf/cv.pdf`

### 4.4 Section 2 — News
- Rendered automatically from `_news/` via `announcements.enabled: true` in frontmatter
- Reverse-chronological list in a fixed-height scrollable container
- Each row: `[Mon YYYY]` · description · optional hyperlink
- All items shown (`limit: 100`); no "Show more" toggle — scrolling handles overflow
- Link text wrapped in square brackets: `[\[arXiv\]]`, `[\[PDF\]]`, `[\[Link\]]`

### 4.5 Section 3 — Research Interests
- Defined in `research_interests:` frontmatter list (not in the page body)
- Rendered by `_layouts/about.liquid` as a bulleted list with spacing between items

---

## 5. Publications Page Layout (`/publications/`)

### Frontmatter for `_pages/publications.md`
```yaml
---
layout: publications
permalink: /publications/
title: publications
nav: true
nav_order: 2
---
```

- Data sources:
  - `_bibliography/working_papers.bib` → rendered as a separate **Working Papers** section at the top
  - `_bibliography/papers.bib` → rendered below, grouped by **year, descending**
- Per-entry format:
  ```
  [Venue badge(s)]  Title
  Authors  ← site owner's name auto-bolded via _config.yml `scholar.last_name`
  Venue · Year
  [Abs]  [Paper]  [Bib]  [Code]  [Website]
  ```

### BibTeX custom fields (al-folio specific)

| Field | Effect |
|-------|--------|
| `bibtex_show = {true}` | Adds expandable **[Bib]** button |
| `abstract = {…}` | Adds expandable **[Abs]** button |
| `html = {url}` | Primary paper link → rendered as **[Paper]** button (priority over doi/pdf/arxiv) |
| `doi = {…}` | Fallback paper link if no `html` |
| `pdf = {url}` | Fallback paper link if no `html` or `doi` |
| `arxiv = {id}` | Fallback paper link; also generates arXiv badge |
| `code = {url}` | Adds **[Code]** button |
| `website = {url}` | Adds **[Website]** button |
| `selected = {true}` | Shows on home page if `selected_papers: true` |
| `award = {…}` | Displays award badge |
| `abbr = {ICLR,NeurIPS}` | Comma-separated venue badges; conference=blue, journal=amber, non-archival=teal, preprint=gray |

- Equal-contribution authors: mark with `*` in author field; note in abstract
- Status tags: add as `note = {Under Review}` or `note = {In Revision}`
- **Venue hover tooltip**: `abbr` shows abbreviation; full name on hover via `_data/venues.yml` + CSS tooltip in `_layouts/bib.liquid`

---

## 6. Projects Page Layout (`/projects/`)

### Frontmatter for `_pages/projects.md`
```yaml
---
layout: page
permalink: /projects/
title: Projects
nav: true
nav_order: 3
hide_title: true
_styles: >
  /* inline CSS for project card styles */
---
```

> **Note**: Projects are **not** rendered from `_projects/*.md` files. All content lives inline in `_pages/projects.md` as custom HTML cards. The `_projects/` directory is kept for reference only.

### Card structure

Each project is a `<div class="project-card">` block. Find a project by its HTML comment:
```html
<!-- ─── HeuriGym ─────────────────────────────────────────────── -->
```

Key elements inside each card:

| Element | Class / Tag |
|---------|------------|
| Title | `<span class="project-title">` |
| Date range | `<span class="project-date">` |
| Tag badges | `<span class="project-tag">` |
| Description | `<p class="project-desc">` |
| Bullet contributions | `<li>` inside `<ul class="project-contributions">` |
| Link buttons | `<a class="project-link-btn" href="…">` |
| Embedded iframe | `<iframe>` inside `<div class="project-live-embed">` |
| Image with caption | `<figure>` inside `<div class="project-img-stack">` |

To add a project: copy an existing card block, paste in the desired position, update all fields.

To temporarily hide a project without deleting: wrap the card in `{% comment %}…{% endcomment %}`.

---

## 7. CV Download

There is no dedicated CV page. The "CV" entry in the navbar links directly to `/assets/pdf/cv.pdf`.

- al-folio does not natively support a navbar link that triggers a direct file download. The simplest approach is to point the CV navbar entry to `/assets/pdf/cv.pdf` in `_config.yml` — the browser will open or download the PDF depending on the user's settings.
- If a forced download (i.e., `download` attribute) is required, the navbar Liquid template will need a small custom modification.
- **LaTeX source + auto-compile**: The CV is maintained as a LaTeX source file at `assets/latex/cv.tex`. A GitHub Actions workflow should be configured to automatically compile `cv.tex` into `assets/pdf/cv.pdf` on every push. This means only the `.tex` file needs to be edited — no local LaTeX installation or manual PDF compilation required.

---

## 8. Service Page Layout (`/service/`)

### Frontmatter for `_pages/service.md`
```yaml
---
layout: page
permalink: /service/
title: service
nav: true
nav_order: 5
---
```

> **Note**: This is a custom page not in al-folio defaults. Must add `nav: true` and configure `nav_order` in `_config.yml` navbar section.

- Data source: `_data/service.yml` — structured YAML fields, rendered via Liquid into the service page. Do not hand-write content in the `.md` body.
- Two subsections:
  1. **Teaching** (`teaching:` key) — table layout: Course Name | Code | Term(s) | Institution
  2. **Reviewer** (`reviewer:` key) — bulleted list of venues

---

## 9. Personal Life Page Layout (`/personal/`)

### Frontmatter for `_pages/personal.md`
```yaml
---
layout: page
permalink: /personal/
title: personal
nav: true
nav_order: 6
---
```

- Custom page — must be registered in `_config.yml` navbar.
- Content is driven by `_data/personal.yml`. Do not hand-write content in the `.md` body.

### Data source: `_data/personal.yml`

Two sections:

**1. Skiing**
- Short intro paragraph (skiing background, passion)
- Coaching certification
- Photo entries: each with an image path and a caption — rendered as 图文混排

**2. Cat**
- Short intro paragraph
- Photos rendered as photo gallery grid

### Layout
- Casual, warmer tone — no strict academic formatting
- Skiing: 图文混排, using al-folio's built-in Bootstrap image grid
- Cat: photo gallery grid
- Images stored in `assets/img/personal/`



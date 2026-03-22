# Changelog

## Features
- [x] Projects: Smart Cities card — restructure bullet points (papers summary, real-world cities, inter-zone future work) + 2×2 image grid (Nashville demand heatmaps + intra/inter-zone concept diagrams)
- [x] Projects: HeuriGym card — embed live iframe pointing to HeuriGym project website overview section (#overview), so visualization auto-updates when source site changes
- [x] Name displays as "Hins Hu · 胡兆轩"
- [x] Navbar: "about" renamed to "Home" (capitalized)
- [x] Navigation: removed Blog, Repositories, Teaching, People/Profiles, dropdown sub-menus
- [x] Home page layout: redesign header — photo on RIGHT, name + social icons + info on LEFT, bio description below the header row, then Research Interests (inspired by chhzh123.github.io)
- [x] Home page header: left-align all; email on its own line (icon + address text); other social icons inline + Download CV after LinkedIn; icons at 2rem
- [x] Home page header: email display styled as "zh223 [at] cornell [dot] edu" (obfuscated, icon is mailto link, text is plain)
- [x] About Me bio: add minors — CS (AI) and Operations Research (Mathematical Programming)
- [x] Research Interests: add line spacing between bullet points (0.7rem margin-bottom per item)
- [x] News: wrap all hyperlink text in square brackets e.g. [Link], [PDF], [arXiv]
- [x] News: preprint items — replace "available on arXiv" with "Publicly available."
- [x] Add UPDATING.md — content update quick-reference guide for all sections
- [x] Publications: fix all co-author names to match content.md (use initials as given, no guessing full names)
- [x] Publications: remove standalone NeurIPS workshop entry; add workshop note to ICLR HeuriGym entry
- [x] Publications: remove "In " prefix before booktitle in bib layout
- [x] Publications: always show authors up to and including self (Hins Hu), minimum 3
- [x] Publications: support multiple venue badges (abbr) per paper, comma-separated
- [x] Publications: unify venue badge colors — conference (blue), non-archival (teal), journal (amber), preprint (gray)
- [x] Publications: add missing paper — Hierarchical RL for Designing Micro-Transit Zones
- [x] Publications: add Working Papers section at top with 3 entries (separate working_papers.bib)
- [x] Publications: remove HTML button; merge arXiv/DOI/PDF into "Paper" (priority: html>doi>pdf>arxiv); order: Abs, Paper, Bib, Code, Website
- [x] Publications: fix COR paper title — "Modern Implementation" → "Efficient Implementation"
- [x] Social icons under profile photo: size increased (target ~1.5rem), spacing tightened between photo→icons and icons→Download CV
- [x] Download CV button placed under profile photo next to social icons, larger font
- [x] News section: vertical scroll enabled (max-height 300px), all items shown (no limit)
- [x] Capitalization: Publications, Projects, CV, Service, Personal, News all capitalized
- [x] All pages: hide redundant page title at top (Publications, Projects, Service, Personal — already visible in navbar)
- [x] Projects page: replace card-grid directory with single long page — each project is a full-width inline section (title, tags, description, contributions, links, optional image); no sub-pages
- [x] Service page: shorten institution label from "Cornell University" to "Cornell" in Teaching Assistant table
- [x] News: add 2023-06 Google Cloud $5,000 computing credits
- [ ] General alignment issues — needs specific elements identified

## Bugs
- [x] `_config.yml` YAML syntax error on description field (colon inside unquoted string) — fixed by adding quotes
- [x] Publications page not loading — caused by wrong `layout: bib` (entry template, not page layout); reverted to `layout: page`

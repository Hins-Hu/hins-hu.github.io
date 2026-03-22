# Website Content
> Actual content to be filled into the website
> Last updated: 2026-03-22
> Reference: populate into corresponding Jekyll data files as noted per section

---

## 0. Site-wide Settings (`_config.yml`)

```yaml
name: "Hins Hu · 胡兆轩"
title: Ph.D. Candidate
affiliation: Cornell University
email: zh223@cornell.edu
github: hins-hu
linkedin: hins-hu
google_scholar: WyWtfOsAAAAJ
tagline: "Machine Learning, Combinatorial Optimization, Smart Mobility"
```

---

## 1. Home Page (`_pages/about.md`)

### About Me

I am a Ph.D. candidate in Systems Engineering at Cornell University, advised by [Samitha Samaranayake](https://cee.cornell.edu/samitha/), with the special committee including [Sarah Dean](https://sdean.website/) and [Andrea Lodi](https://tech.cornell.edu/people/andrea-lodi/). I hold minors in Computer Science (AI) and Operations Research (Mathematical Programming). I received my M.Sc. from the University of Illinois Urbana-Champaign and my B.Eng. from South China University of Technology.

At the core, my research asks: *how can machine learning and optimization make hard real-world decisions better, faster, cheaper, and more reliably?* To answer this, I draw on combinatorial optimization, mixed-integer programming (MIP), deep RL, and LLM agents — building both theory and algorithms that scale to messy, real-time systems, with a particular focus on smart mobility.

I have industry experience at Google, where I worked on AI workflows and Knowledge Distillation of Gemini models, and at Meta, where I contributed to Facebook's billion-user recommendation system.

Outside of research, I am an avid snowboarder (with [AASI](https://www.aasi.org/) Level 1) and a proud cat owner. Find more on the [Personal](/personal/) page.

---

### Research Interests

- **Learning for Combinatorial Optimization** — Applying supervised learning and deep RL to NP-hard problems such as vehicle routing, scheduling, and matching.
- **Sequential & Online Decision-Making** — Online stochastic shortest path, on-demand ride-pooling
- **LLM Benchmarking & Evaluation** — Designing rigorous benchmarks to assess LLM-generated heuristics/models/algorithms against expert baselines.
- **Autonomous & Smart Mobility** — Ride-sharing, micro-transit zoning, and semi-autonomous vehicle routing, multi-modal integration.

---

## 2. News (`_news/`)

> One file per item. Reverse-chronological. Format: `YYYY-MM-DD-slug.md`

| Date | Content | Link |
|------|---------|------|
| 2026-03 | Paper *Ride-Pool Assignment Algorithms: Swapping Heuristics and Efficient Implementation* accepted at **Computers & Operations Research**. | [Link](https://www.sciencedirect.com/science/article/pii/S0305054826000821) |
| 2026-03 | Paper *Toward User Preference Alignment in LLM Recommendation via Explicit Context Feedback* published at **IEEE CogMI 2025**. | [Link](https://ieeexplore.ieee.org/document/11417068) |
| 2026-02 | Preprint *Column Generation for the Micro-Transit Zoning Problem* available in arXiv. | [arXiv](https://arxiv.org/abs/2603.07821) |
| 2025-12 | Paper *HeuriGym* accepted at **ICLR 2026**. | [Website](https://cornell-zhang.github.io/heurigym/) |
| 2025-10 | Paper *HeuriGym* presented at **NeurIPS 2025 MATH-AI Workshop**. | [TODO:Poster] |
| 2025-08 | Start Software Engineer Internship (PhD) at **Google (AI Flow)**. | — |
| 2025-07 | Paper *Optimal Micro-Transit Zoning via Clique Generation and Integer Programming* accepted at **IEEE ITSC 2025**. | [arXiv](https://arxiv.org/html/2509.11445v1) |
| 2025-05 | Start Machine Learning Scientist Internship (PhD) at **Meta (Modern Recommendation System)**. | — |
| 2024-12 | Paper *Learning to Prune: Fast Feasible Trip Generation for High-Capacity Ridepooling* accepted at **TRISTAN 2025**. | [PDF](https://tristan2025.org/proceedings/TRISTAN2025_ExtendedAbstract_397.pdf) |
| 2024-10 | Received $10,000 **AWS Cloud Computing Grant** from Amazon. | — |
| 2024-09 | Passed PhD Candidacy Exam (A Exam). | [TODO:Slide] |
| 2023-06 | Present *Vehicle Routing Problems in the Age of Semi-Autonomous Driving* as a poster at **IPCO 2023**. | [IPCO 2023](https://optimization.discovery.wisc.edu/ipco-2023-madison/) |
| 2023-06 | Received $5,000 **Google Cloud Computing Credits** from Google. | — |
| 2023-05 | Preprint *Vehicle Routing Problems in the Age of Semi-Autonomous Driving* available. | [arXiv](https://arxiv.org/abs/2502.03655) |

---

## 3. Publications

> Working papers → `_bibliography/working_papers.bib`. All others → `_bibliography/papers.bib`.

### Working Papers

1. **H. Hu**, H. Jiang, S. Samaranayake
   *Micro-Transit Zoning Problem with Inter-Zone Demand*

2. **H. Hu**, H. Jiang, S. Samaranayake
   *Reliable Multi-Armed Bandit Algorithms for Online Shortest Path Learning*

3. S. Pradhan, B. Geary, **H. Hu**, R. Sen, J. P. Talusan, S. Samaranayake, A. Dubey, A. Laszka
   *Hierarchical Reinforcement Learning for Designing Micro-Transit Zones*
   [TODO: arXiv link — not found online]

### Published / Accepted

1. H. Chen, Y. Wang, Y. Cai, **H. Hu**, J. Li, S. Huang, C. Deng, R. Liang, S. Kong, H. Ren, S. Samaranayake, C. P. Gomes, Z. Zhang
   *HeuriGym: An Agentic Benchmark for LLM-Crafted Heuristics in Combinatorial Optimization*
   The 39th Conference on Neural Information Processing Systems, Workshop on Math-AI (NeurIPS 2025 MATH-AI) · The Fourteenth International Conference on Learning Representations (ICLR 2026)
   arXiv: https://arxiv.org/abs/2506.07972
   GitHub: https://github.com/cornell-zhang/heurigym
   OpenReview: https://openreview.net/forum?id=HWxHUO15Yy
   Website: https://cornell-zhang.github.io/heurigym/

2. **H. Hu**, R. Goswami, H. Jiang, S. Samaranayake
   *Optimal Micro-Transit Zoning via Clique Generation and Integer Programming*
   2025 IEEE 28th International Conference on Intelligent Transportation Systems (IEEE ITSC 2025)
   arXiv: https://arxiv.org/abs/2509.11445
   [TODO: DOI / IEEE link]

3. Y. Kim, S. Li, **H. Hu**, W. Ouyang, S. Samaranayake, C. Wu
   *Learning to Prune: Fast Feasible Trip Generation for High-Capacity Ridepooling*
   The 12th Triennial Symposium on Transportation Analysis (TRISTAN 2025)
   PDF: https://tristan2025.org/proceedings/TRISTAN2025_ExtendedAbstract_397.pdf

4. W. Zhang, W. Yang, Y. Cui, Z. Guo, **H. Hu**, L. Yang, H. P. Zou, Q. Wang, H. Zeng, J. Liu, Y. Xia, P. S. Yu
   *Toward User Preference Alignment in LLM Recommendation via Explicit Context Feedback*
   2025 IEEE 7th International Conference on Cognitive Machine Intelligence (IEEE CogMI 2025)
   DOI: https://ieeexplore.ieee.org/document/11417068

5. M. Zalesak\*, **H. Hu**\*, S. Samaranayake  (\*equal contribution)
   *Ride-Pool Assignment Algorithms: Swapping Heuristics and Efficient Implementation*
   Computers & Operations Research
   arXiv: https://arxiv.org/abs/2504.10649
   DOI: https://www.sciencedirect.com/science/article/pii/S0305054826000821

6. W. F. Chong, R. Feng, **H. Hu**, L. Zhang (in alphabetical order)
   *Cyber Risk Assessment for Capital Management*
   Journal of Risk and Insurance
   DOI: https://onlinelibrary.wiley.com/doi/10.1111/jori.12504

### In Revision / Preprint

7. **H. Hu**, S. Samaranayake
   *Vehicle Routing Problems in the Age of Semi-Autonomous Driving*
   In Revision — European Journal of Operational Research
   arXiv: https://arxiv.org/abs/2502.03655

8. D. Edirimanna, **H. Hu**, S. Samaranayake
   *Integrating On-Demand Ride-Sharing with Mass Transit at Scale*
   In Revision — Transportation Research Part C: Emerging Technologies
   arXiv: https://arxiv.org/abs/2404.07691

9. **H. Hu**, R. Sen, J. P. Talusan, A. Dubey, A. Laszka, S. Samaranayake
   *Column Generation for the Micro-Transit Zoning Problem*
   Preprint: https://arxiv.org/abs/2603.07821

---

## 4. Projects (`_pages/projects.md`)

> **Note**: Projects are rendered as inline HTML cards in `_pages/projects.md` — not from individual files in `_projects/`. The `_projects/` directory exists but is unused. To edit a project, find the relevant `<!-- ─── Title ─── -->` comment block in `_pages/projects.md`.

### Currently visible projects (in order):

### Project 1: HeuriGym — LLM Benchmark for Heuristics in CO
- **Tags**: `LLM`, `Benchmark`, `Combinatorial Optimization`
- **Description**: An agentic benchmark evaluating LLM-crafted heuristics on real-world NP-hard combinatorial optimization problems. Introduces the Quality-Yield Index (QYI), a unified metric for solution feasibility and quality. SOTA models can achieve over 75% of expert performance on QYI (as of 03/2026). Accepted at ICLR 2026; presented at NeurIPS 2025 MATH-AI Workshop.
- **Links**:
   + Website: https://cornell-zhang.github.io/heurigym/
   + GitHub: https://github.com/cornell-zhang/heurigym
   + Paper: https://openreview.net/forum?id=HWxHUO15Yy

### Project 2: Smart Cities — Optimal Micro-Transit Zoning
- **Tags**: `Smart Mobility`, `Integer Programming`, `Column Generation`, `Reinforcement Learning`
- **Description**: Suite of algorithms for the Micro-Transit Zoning Problem — from heuristics to exact IP and RL. Validated on real-world travel demand from multiple U.S. cities. 3 papers spanning the full solution stack. Ongoing: extending to inter-zone demand.
- **Links**: —

### Projects currently commented out (hidden, can be re-enabled in `_pages/projects.md`):
- Learning Algorithms for Reliable Online Shortest Path (Oct 2025 – Present)
- End-to-End Deep RL for Combinatorially Constrained Ride-Sharing MDPs (May 2025 – Present)
- GNN-Based Pruning for High-Capacity Ride-Pool Matching (Nov 2023 – Nov 2024)
- Vehicle Routing in the Semi-Autonomous Driving Environment (Jan 2022 – Jun 2023)

---

## 5. CV (`assets/latex/cv.tex`)

> The CV is maintained as a LaTeX source file. The source file (`cv.tex`) is included in this project — place it at `assets/latex/cv.tex`. A GitHub Actions workflow will automatically compile it to `assets/pdf/cv.pdf` on every push.



---

## 6. Service (`_data/service.yml`)

### Teaching Assistant

| Course | Code | Term(s) | Institution |
|--------|------|---------|-------------|
| Engineering Economics | CEE3230 | Spring 2026 | Cornell University |
| Uncertainty Analysis in Engineering | CEE3040 | Fall 2023, Fall 2024 | Cornell University |
| Modeling and Optimization for Smart Cities | CEE4665 | Spring 2022 | Cornell University |
| Probability and Statistics for Engineers | CEE202 | Summer 2020 – Spring 2021 | UIUC |

### Reviewer Service

- IEEE Intelligent Vehicles Symposium (IV 2026)
- AAAI Conference on Artificial Intelligence (AAAI 2026)
- Conference on Neural Information Processing Systems (NeurIPS 2025)
- IEEE International Conference on Intelligent Transportation Systems (ITSC 2025)
- Learning for Dynamics & Control Conference (L4DC 2024)
- Robotics: Science and Systems (RSS 2024)

---

## 7. Personal Life (`_data/personal.yml`)

> Content is driven by this YAML file. `_pages/personal.md` renders it via Liquid — do not hand-write content in the .md body.

```yaml
snowboarding:
  intro: >
    I've been snowboarding since college and it's become one of my favorite ways to reset.
    There's something about carving down a mountain on a board that no paper deadline can compete with.
    My style leans toward trees, freeride, and backcountry — the less groomed, the better.
    I hold an AASI Level 1 snowboarding instructor certification and have spent time teaching beginners —
    turns out explaining edge control to a 7-year-old is harder than designing an algorithm.
  photos:
    - path: assets/img/personal/big-sky-bc.jpg
      caption: "◆◆◆ Hike up to a triple black in Big Sky, MT"
    - path: assets/img/personal/ski-aspen-peak.jpg
      caption: "At the peak, Aspen, CO"
    - path: assets/img/personal/ski-steamboat-trees.jpg
      caption: "In the trees at Steamboat, CO"

cat:
  intro: >
    This is Lottie. She showed up in my life when I was doing my internship in Seattle and
    has since taken over my keyboard and my sofa bed. She is unimpressed by my research but
    very interested in my snacks. Uptime: 100%. Bugs: many. No plan to deprecate.
  photos:
    - path: assets/img/personal/cat-sofa.jpg
      caption: "Lottie on the sofa"
    - path: assets/img/personal/cat-3mo.jpg
      caption: "Napping in the sun at 3 months old"
    - path: assets/img/personal/cat-out.jpg
      caption: "First time outside. Not thrilled."
```

# Website Content Update Guide

Quick reference for updating each section of the site.

---

## 1. News

**File:** `_news/YYYY-MM-DD-slug.md`

To add a news item, create a new file named by date and a short slug. Copy this template:

```markdown
---
layout: post
date: 2026-06-01
inline: true
related_posts: false
---

Paper *Title Here* accepted at **Venue Name**. [\[Link\]](https://url-here)
```

**Conventions:**
- Dates are in `YYYY-MM-DD` format — items auto-sort reverse-chronologically
- Keep `inline: true` so the item renders as a single line in the table
- Link text goes in square brackets: `[\[arXiv\]]`, `[\[PDF\]]`, `[\[Link\]]`, `[\[Website\]]`
- For preprints: `Preprint *Title* publicly available. [\[arXiv\]](url)`
- For papers: `Paper *Title* accepted at **Venue**. [\[Link\]](url)`
- Multiple links on one item: just append them — `[\[arXiv\]](url) [\[PDF\]](url)`

---

## 2. Publications

**Files:**
- `_bibliography/papers.bib` — published papers, accepted papers, preprints
- `_bibliography/working_papers.bib` — working papers (displayed in a separate section at the top of the Publications page)

Add a BibTeX entry to the appropriate file. Key custom fields for al-folio:

```bibtex
@article{yourkey2026,
  author    = {Hu, Hins and Others, A.},
  title     = {Your Paper Title},
  journal   = {Journal Name},
  year      = {2026},
  abstract  = {Your abstract here — enables [abs] button},
  bibtex_show = {true},          % enables [bib] button
  html      = {https://arxiv.org/abs/...},   % main link / arXiv page
  pdf       = {https://url-to-pdf},
  code      = {https://github.com/...},
  award     = {Best Paper Award},  % optional badge
  note      = {Under Review},      % optional status tag
}
```

**Your name is auto-bolded** via `_config.yml` (`scholar.last_name = Hu`).

For equal contribution: add `*` after the author name in the `author` field and note it in the abstract.

---

## 3. Projects

**File:** `_pages/projects.md`

> ⚠️ The `_projects/` folder still exists but is **not used** for rendering. All project content lives inline in `_pages/projects.md` as HTML blocks.

Each project is a `<div class="project-card">` block. To find a specific project, search for its title in the HTML comment above it, e.g.:

```html
<!-- ─── HeuriGym ─────────────────────────────────────────────── -->
```

**To edit a specific field, find the corresponding element inside that card:**

| What you want to change | Element to edit |
|-------------------------|----------------|
| Project title | `<span class="project-title">…</span>` |
| Description paragraph | `<p class="project-desc">…</p>` |
| Bullet point contributions | `<li>` inside `<ul class="project-contributions">` |
| Tag badges | `<span class="project-tag">…</span>` |
| Links (Website, Code, Paper, etc.) | `<a class="project-link-btn" href="…">…</a>` inside `<div class="project-links">` |
| Embedded live visualization | `<iframe src="…">` inside `<div class="project-live-embed">` |

**To add a new project**, copy an existing `<div class="project-card">…</div>` block, paste it in the desired position, and update all fields.

**Card styles** (layout, colors, hover effects) are defined in the `_styles:` frontmatter block at the top of `_pages/projects.md`.

---

## 4. About Me (Bio & Research Interests)

**File:** `_pages/about.md`

- **Bio paragraphs:** edit the body text (below the `---` frontmatter)
- **Research Interests:** edit the `research_interests` list in the frontmatter:

```yaml
research_interests:
  - area: "Area Name"
    description: "One sentence description."
```

- **Subtitle** (under your name): edit `subtitle:` in the frontmatter
- **Location info**: edit `more_info:` in the frontmatter

---

## 5. Social Links & Email

**File:** `_data/socials.yml`

```yaml
email: zh223@cornell.edu
scholar_userid: WyWtfOsAAAAJ
github_username: hins-hu
linkedin_username: hins-hu
```

The email on the homepage is hard-coded as obfuscated text in `_layouts/about.liquid` — update it there too if your email changes.

---

## 6. Service Page (Teaching & Reviewer)

**File:** `_data/service.yml`

```yaml
teaching:
  - course: "Course Name"
    code: "CEE3230"
    terms: "Spring 2026"
    institution: "Cornell University"

reviewing:
  - "Conference Name (YEAR)"
```

---

## 7. Personal Life Page (Skiing & Cat)

**File:** `_data/personal.yml`

Edit the `intro` text and `photos` list for each section:

```yaml
snowboarding:
  intro: >
    Your intro text here.
  photos:
    - path: assets/img/personal/ski-1.jpg
      caption: "Your caption"

cat:
  intro: >
    Your intro text here.
  photos:
    - path: assets/img/personal/cat-1.jpg
      caption: "Your caption"
```

Store photos in `assets/img/personal/`.

---

## 8. CV

**File:** `assets/latex/cv.tex`

Edit the LaTeX source. GitHub Actions automatically compiles it to `assets/pdf/cv.pdf` on every push — no local LaTeX needed.

---

## 9. Profile Photo

**File:** `assets/img/prof_pic.jpg`

Replace with your new photo. Keep the same filename.

---

## 10. Site-wide Settings

**File:** `_config.yml`

| Field | What it controls |
|-------|-----------------|
| `title` | Name displayed in navbar and page header |
| `description` | Meta description for search engines |
| `url` | Your GitHub Pages URL |

---

## Deployment Workflow

### How it works

```
你编辑的文件 (main 分支)
        │
        │  git push
        ▼
  GitHub Actions
  自动编译 Jekyll → 生成静态 HTML/CSS/JS
        │
        ▼
   gh-pages 分支
  （编译结果，不要手动碰）
        │
        ▼
  GitHub Pages 对外提供网站
  https://hins-hu.github.io/
```

- **`main` 分支** — 你的源代码（Markdown、YAML、BibTeX 等），只改这里
- **`gh-pages` 分支** — 自动生成的静态文件，不要手动修改

### 日常更新步骤

```bash
# 1. 修改本地文件（_pages/, _news/, _bibliography/, _data/ 等）

# 2. 提交并推送
git add <修改的文件>
git commit -m "update: 描述你改了什么"
git push
```

**就这两步。** 之后 GitHub Actions 自动跑，1–3 分钟后网站更新。

### 确认部署成功

推送后在以下地址查看 Actions 进度：
```
https://github.com/Hins-Hu/hins-hu.github.io/actions
```

- 绿色 ✅ → 部署完成，刷新网站即可看到更新
- 红色 ❌ → 编译出错，点进去看 log 找原因

### 注意事项

- **不需要**手动操作 `gh-pages` 分支
- **不需要**修改 GitHub Actions 配置（`.github/workflows/`）
- **不需要**本地安装 Jekyll 或 LaTeX（CV 也是自动编译的）
- 如果修改了 `_config.yml`，注意 YAML 语法——字符串含冒号时要加引号

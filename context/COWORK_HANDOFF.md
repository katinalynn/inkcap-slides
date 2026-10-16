# Inkcap Slides — Cowork Handoff Document

**Last updated:** October 16, 2026  
**Purpose:** Everything Claude needs to continue work on Katina's slide decks.

**Location:** `~/Desktop/talks` on Katina's laptop (moved out of the old `~/Desktop/cowork/talks` folder in October 2026). It is a git repo backed up to GitHub at `katinalynn/inkcap-slides`. Do not move it into a Google Drive sync folder, since Drive sync can corrupt git repos. For Claude to work on these files directly, Katina connects this folder to the session.

---

## Project at a glance

HTML/Reveal.js slide decks for Katina's talks, all sharing brand CSS matched to inkcapconsulting.com. Decks sit in the root of the folder; shared images are in `images/` (with per-venue subfolders such as `images/msu/` and `images/alabama/`); reference docs are in `context/`.

| File | Event | Date | Slides |
|---|---|---|---|
| `msu-keynote.html` | Keynote, Michigan State University | Oct 2026 | 17 |
| `msu-faculty.html` | Faculty workshop, Michigan State University | Oct 2026 | 17 |
| `msu-gradstudents.html` | Graduate student workshop, Michigan State University | Oct 2026 | 17 |
| `cuny.html` | Talk, The Graduate Center, CUNY | Aug 4, 2026 | 9 |
| `stockholm.html` | Book talk, Stockholm University | June 2026 | 20 |
| `alabama.html` | Keynote, University of Alabama | May 2026 | 19 |
| `alabama-workshop.html` | Faculty workshop, University of Alabama | May 2026 | 8 |
| `inkcap-keynote-template.html` | Blank master template | — | 13 |

### File naming and publishing

Decks use short, lowercase, hyphenated filenames with no dates: `[venue].html` or `[venue]-[format].html` (e.g., `cuny.html`, `msu-keynote.html`, `alabama-workshop.html`). The repo is published with GitHub Pages, so each filename becomes a public URL, e.g. `https://katinalynn.github.io/inkcap-slides/msu-keynote.html`. Keep names short and easy to say aloud. If a venue repeats, add the year (`msu-2027.html`). Renaming or moving a deck changes its URL, so links and QR codes that point to the old URL will stop working.

Other files: `faculty-workshop-script.docx` (workshop script), `flourishing-deck-session-handoff.md` (notes from the CUNY deck session), `context/inkcap-template-cheatsheet.md` (editing guide).

---

## Critical technical facts

### Reveal.js version and config
- **Reveal.js 5.1.0** loaded from Cloudflare CDN
- All files use `center: true` in the Reveal config — do NOT change this to `false` without also updating slide sizing
- The CSS fix for Reveal.js 5.x is already applied: `.slide-inner` uses `height: var(--slide-height, 720px)` — do not add `height: 100%` or `flex: 1` to `.slide-inner`

### Footnotes
- Footnotes must live **inside** `.slide-inner`, not outside it
- Do NOT add `style="position: relative;"` to any `<section>` tag — this breaks layout with `center: true`

### Images
- Image files live in the `images/` folder next to the decks and ARE tracked in git
- Decks reference them with relative paths (`images/filename.jpg`, `images/msu/filename.png`), so the HTML files and `images/` must always stay together
- To add an image: save it to `images/` (or a venue subfolder), then replace `<div class="img-placeholder">...</div>` with `<img src="images/filename.jpg" alt="description" style="width:100%; height:100%; object-fit:cover;">`
- Quick check that nothing is broken: every `images/...` path in each deck should resolve to a file
- Most content slides use `layout-default-img` (split layout) — images go in the `.img-col` div

### Speaker notes
- Every slide has `<aside class="notes">` speaker notes
- Notes only display via a local server: `python3 -m http.server 8000` then open `http://localhost:8000/filename.html` and press `S`

---

## Slide layouts (all files)

| Class | Background | Structure |
|---|---|---|
| `layout-title` | Navy | `.text-col` left + `.img-col` right (split) |
| `layout-section` | Teal | Section number + heading + optional desc |
| `layout-default` | White | Standard content, no image |
| `layout-default-img` | White | `.content-col` left + `.img-col` right (split) |
| `layout-quote` | Warm off-white | Quote mark + blockquote + attribution |
| `layout-two-col` | White | `.col-grid` with two `.col` divs |
| `layout-callout` | Light gray | `.stat-grid` with `.stat-card` divs |
| `layout-discussion` | Navy | Heading + `.prompt` + `<ul>` |
| `layout-closing` | Navy | Centered, with `.orange-rule` |

---

## Image files (Google Drive)

**Folder ID:** `17w4XH8SY8PjJetprQQncDr8hPSipQY18`

Named files available:
- `Inkcap Mushroom by Ripton Scott.jpg` — good for title slide
- `multispecies fungi.jpg`
- `ash-tree bolete.jpg`
- `club fungi.png` ⚠️ 21MB — optimize before using
- Personal photos: `IMG_1158.JPG`, `IMG_1146.JPG`, `IMG_1011.JPG`, `IMG_9223.JPG`, `IMG_9726.JPG`, `IMG_9251.JPG`, `IMG_0654 2.JPG`, `IMG_0643 2.JPG`, `IMG_0076 2.JPG`, `IMG_0091 3.JPG`, `IMG_9129.JPG`, `IMG_9139.JPG`, `IMG_9198 2.JPG`, and others
- ⚠️ `IMG_9695.heic` and `IMG_8707.heic` — will NOT display in browsers; convert to JPG first

**Workflow for adding images:**
1. Download photos from Drive into `images/` in the talks folder
2. Replace `<div class="img-placeholder">[ ... ]</div>` with `<img src="images/filename.jpg" alt="..." style="width:100%; height:100%; object-fit:cover;">`

---

## Google Drive source documents

| Document | Drive ID | Used for |
|---|---|---|
| ACLA source deck | `17nx0TGx5jbFNmLHhXr0mjjh9xuw6NE6v` | Stockholm basis |
| Stony Brook 2023 script | `1i6goFhkS0dFqdHPza27f27dvYPIxFt95nVviKgfaRvk` | Alabama basis |
| Stony Brook 2023 slides | `1pB7ic8x-OI2gsCFNMfuSdjtPMbKnzG52KZ2uprJStGs` | Alabama basis |
| ACLS Doctoral Futures — all docs | `1_b7k3neI0uDx3ASSEomIxkxdxLh6Qo9jBauGJDR-Lqs` | Research findings |
| Doctoral Futures Phase II Summary | `1d4l-SXiZ_lQ92VZtklmBrm6oR0k9A3R8j_rDQTJL4wY` | Research findings |
| Listening Session Findings | `1gWji-7HOsLWNCy2Vko2K_xjnbmojpwi8l5Z_xnYm7VI` | Research findings |
| Career Prep thematic analysis | `1NnsbaVG8xrvmWu-opvh5F-vrGhxzkRg6sNN0BLDxdSU` | Research findings |
| Mentorship thematic analysis | `1oDb-JwLlqp5TUDumzqw_CIjr236Rn2LYt43sPXao2pk` | Research findings |
| Funding thematic analysis | `1vzQLxbog3gO2uZwUrWiRgERTaOzAnApXXEwIKOEJAXI` | Research findings |
| ACLS deck (career workshop) | `1LV4lmyrvt_gKe3p891p51O_GFJQrUWcp6peXe3gYl8Y` | Alabama slides 9+ |
| Project handoff doc (Google Drive) | `1SpNA7JwGtrlX18vZCJNVQZLMAl_33TrFlNYcDRnt1cQ` | Full history |

---

## Archived task lists (May 2026)

These lists were written before the Alabama and Stockholm talks, which have since taken place. They're kept for reference only and are not current to-dos.

### Pending tasks — Alabama keynote

**Slides 1–8: do not modify.** Katina has edited these directly and they are locked.

- [ ] Slides 9+: content review and editing still in progress
- [ ] Slide 9 currently has "Where do I even start?" — 7-step framework from the ACLS career workshop deck
- [ ] Add mushroom photos to all `.img-placeholder` elements (one per slide)
- [ ] Decide whether to add personal narrative / "About my path" section (was Slide 4 in Stony Brook version)
- [ ] Confirm whether Doctoral Futures figures on slide 6 ($31K stipend, 274 history jobs) are cleared for public use
- [ ] Confirm talk length and trim/expand slide count accordingly
- [ ] Add references slide or fold refs into closing notes
- [ ] Consider offline-ready version (bundle fonts + Reveal.js inline) — deferred

### Pending tasks — Stockholm book talk

**Slides 1–8: do not modify.** Katina has edited these directly and they are locked.

- [ ] Slides 9+: content edits TBD
- [ ] Add mushroom photos to all `.img-placeholder` elements (one per slide)
- [ ] Slide 6 ("Blasted Landscapes") has a known layout issue: `style="position: relative;"` on the section + `position: absolute` footnote. Fix: move footnote inside `.slide-inner` as flowing element and remove the inline style from the section tag
- [ ] Consider offline-ready version — deferred

### Pending tasks — both decks

- [ ] PDF export versions for portability backup
- [ ] Decide on self-contained offline version

---

## How Katina works on these files

1. Works on the files in place in `~/Desktop/talks`, editing in VS Code
2. Saves and refreshes in Chrome to preview
3. When asking Claude for edits, connects the talks folder to the session so Claude edits the same files (no download/upload round trip)
4. Commits and pushes to GitHub after a round of changes

**Key constraint:** Always ask Katina which slides are locked before editing. She edits slides 1–8 herself and does not want those reverted. State clearly which slides you will touch.

---

## Brand tokens (CSS variables)

```css
--color-primary:        #006D6F;   /* teal */
--color-primary-dark:   #005456;
--color-primary-light:  #e6f3f3;
--color-text:           #1a1a1a;
--color-text-secondary: #4a4a4a;
--color-bg:             #ffffff;
--color-bg-subtle:      #f7f8f9;
--color-bg-warm:        #faf9f7;
--color-border:         #d4d4d4;
--color-border-light:   #e8e8e8;
--color-accent-dark:    #051A42;   /* navy */
--color-accent-orange:  #e05724;   /* burnt orange */
--font-body:    'Libre Franklin', system-ui, -apple-system, sans-serif;
--font-heading: 'Cormorant Garamond', Georgia, 'Times New Roman', serif;
```

---

## Website context

- Site: https://inkcapconsulting.com
- Built with Astro, hosted on GitHub Pages via repo `katinalynn/2026-website`
- All CSS tokens above match the live site stylesheet exactly

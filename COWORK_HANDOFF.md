# Inkcap Slides — Cowork Handoff Document

**Last updated:** May 7, 2026  
**Purpose:** Everything Cowork needs to continue work on Katina's slide decks.

---

## Project at a glance

Three HTML/Reveal.js slide decks for upcoming talks, all sharing brand CSS matched exactly to inkcapconsulting.com. Two decks are in active development; one is a reusable template.

| File | Event | Date | Slides | Status |
|---|---|---|---|---|
| `2026-05-15_Alabama_Unexpected_Flourishing.html` | Keynote, Univ. of Alabama | May 15, 2026 | 14 | In progress — content edits ongoing on slides 9+ |
| `2026-06-15_Stockholm_Unexpected_Flourishing.html` | Book talk, Stockholm Univ. | June 15, 2026 | 14 | In progress — content edits ongoing on slides 9+ |
| `inkcap-keynote-template.html` | Master template | — | 13 | Complete |
| `inkcap-template-cheatsheet.md` | Editing guide | — | — | Complete |

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
- Image files are NOT in the repo (gitignored)
- Images are local files placed in the same folder as the HTML at presentation time
- To add an image: replace `<div class="img-placeholder">...</div>` with `<img src="filename.jpg" alt="description" style="width:100%; height:100%; object-fit:cover;">`
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
1. Download photos from Drive to the same local folder as the HTML files
2. Replace `<div class="img-placeholder">[ ... ]</div>` with `<img src="filename.jpg" alt="..." style="width:100%; height:100%; object-fit:cover;">`

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

## Pending tasks — Alabama keynote

**Slides 1–8: do not modify.** Katina has edited these directly and they are locked.

- [ ] Slides 9+: content review and editing still in progress
- [ ] Slide 9 currently has "Where do I even start?" — 7-step framework from the ACLS career workshop deck
- [ ] Add mushroom photos to all `.img-placeholder` elements (one per slide)
- [ ] Decide whether to add personal narrative / "About my path" section (was Slide 4 in Stony Brook version)
- [ ] Confirm whether Doctoral Futures figures on slide 6 ($31K stipend, 274 history jobs) are cleared for public use
- [ ] Confirm talk length and trim/expand slide count accordingly
- [ ] Add references slide or fold refs into closing notes
- [ ] Consider offline-ready version (bundle fonts + Reveal.js inline) — deferred

## Pending tasks — Stockholm book talk

**Slides 1–8: do not modify.** Katina has edited these directly and they are locked.

- [ ] Slides 9+: content edits TBD
- [ ] Add mushroom photos to all `.img-placeholder` elements (one per slide)
- [ ] Slide 6 ("Blasted Landscapes") has a known layout issue: `style="position: relative;"` on the section + `position: absolute` footnote. Fix: move footnote inside `.slide-inner` as flowing element and remove the inline style from the section tag
- [ ] Consider offline-ready version — deferred

## Pending tasks — both decks

- [ ] PDF export versions for portability backup
- [ ] Decide on self-contained offline version

---

## How Katina works on these files

1. Downloads the HTML file from Claude's output or from the repo
2. Opens in VS Code to edit text, reorder slides, swap images
3. Saves and refreshes in Chrome to preview
4. Uploads the updated file back to Claude (or Cowork) when requesting further edits

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

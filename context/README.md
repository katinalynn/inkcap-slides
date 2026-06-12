# Inkcap Consulting — Keynote Slide Decks

HTML/Reveal.js slide decks for Katina L. Rogers's upcoming talks, styled to match [inkcapconsulting.com](https://inkcapconsulting.com).

---

## Files in this folder

**Slide decks** (root of Talks/)

| File | Purpose | Status |
|---|---|---|
| `alabama.html` | Keynote, University of Alabama, May 2026 | Complete |
| `stockholm.html` | Book talk, Stockholm University, June 2026 | Active |
| `alabama-workshop.html` | Workshop version, University of Alabama | Complete |
| `inkcap-keynote-template.html` | Blank master template for future decks | Complete |

**context & reference** (this context/ subfolder)

| File | Purpose |
|---|---|
| `SLIDE_PATTERNS.md` | CSS corrections and HTML patterns from June 2026 — read this first |
| `COWORK_HANDOFF.md` | Full project history, Google Drive IDs, pending tasks |
| `inkcap-brand-guidelines.md` | Brand identity reference |
| `inkcap-template-cheatsheet.md` | Editing reference guide |


---

## How to view and edit

Open any `.html` file in Chrome or Safari. Navigate slides with arrow keys.

For editing: open in VS Code, save, refresh browser. See `inkcap-template-cheatsheet.md` for full instructions.

For speaker notes (presenter view): requires a local server.
```bash
cd path/to/this/repo
python3 -m http.server 8000
# then open http://localhost:8000/filename.html and press S
```

---

## Tech stack

- **Reveal.js 5.1.0** (CDN) — presentation framework
- **Cormorant Garamond + Libre Franklin** (Google Fonts) — brand typography
- Custom CSS matching inkcapconsulting.com design tokens exactly

Fonts and Reveal.js load from the internet. For offline presenting, the files will need to be self-contained — this is a known pending task.

---

## Brand colors

| Token | Hex | Used for |
|---|---|---|
| `--color-primary` | `#006D6F` | Teal — headings, bullets, section slides |
| `--color-primary-light` | `#e6f3f3` | Light teal fills |
| `--color-accent-dark` | `#051A42` | Navy — title, closing, discussion slides |
| `--color-accent-orange` | `#e05724` | Burnt orange — callouts, accents |

---

## Contact

Katina L. Rogers · [inkcapconsulting.com](https://inkcapconsulting.com) · katina@katinarogers.com

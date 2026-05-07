# Inkcap Consulting — Keynote Slide Decks

HTML/Reveal.js slide decks for Katina L. Rogers's upcoming talks, styled to match [inkcapconsulting.com](https://inkcapconsulting.com).

---

## Files in this repo

| File | Purpose | Status |
|---|---|---|
| `2026-05-15_Alabama_Unexpected_Flourishing.html` | Keynote, University of Alabama, May 15 2026 | In progress |
| `2026-06-15_Stockholm_Unexpected_Flourishing.html` | Book talk, Stockholm University, June 15 2026 | In progress |
| `inkcap-keynote-template.html` | Blank master template for future decks | Complete |
| `inkcap-template-cheatsheet.md` | Editing reference guide | Complete |
| `COWORK_HANDOFF.md` | Task list and context for continuing work in Cowork | See below |

Image files (mushroom photos) are **not** in this repo — they live in Google Drive and will be added locally at presentation time. See `COWORK_HANDOFF.md` for the Drive folder ID and file list.

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

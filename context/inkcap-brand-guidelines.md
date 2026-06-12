# Inkcap Consulting — Brand Guidelines

**Version 2.0 | May 2026**  
*Sources: logo SVG (Adobe Illustrator origin), PNG logo variants, GitHub HANDOFF.md (website CSS), Reveal.js slide template (inkcap-slides skill), Google Drive proposals, 100Waters coaching notes (March 2026).*

---

## Source Notes and Known Discrepancies

This document is compiled from verified primary sources. Two color values are inconsistent across platforms and need a decision — see §1.4. The SVG logo and website HANDOFF.md are authoritative for color; the slides are closely aligned but not pixel-identical. The Claude Design notecard (link returned 403) and CoWork slides (URL returned 404) were not accessible and are not yet incorporated.

---

## 1. Color System

### 1.1 Primary Colors

| Name | Hex | Confirmed in | Use |
|------|-----|-------------|-----|
| **Teal** | `#06606d` | Website HANDOFF.md (canonical) | Primary brand color: headings, links, rules, bullets, section backgrounds |
| **Navy** | `#051A42` | SVG logo + website + slides | Dark backgrounds, H3 subheadings, key text on light surfaces |
| **Orange** | `#e05724` | Slides (only actively applied value) | Accent rules, callout boxes, stat highlights — see §1.4 |

### 1.2 Supporting Tones

| Name | Hex | Source | Use |
|------|-----|--------|-----|
| Teal Dark | `#005456` | Slides | Hover states on teal elements |
| Teal Light | `#e6f3f3` | Slides | Highlight box backgrounds, image placeholders, heading underlines |
| Orange box bg | `#fdf1ec` | Slides (derived) | Background of orange callout boxes |
| Headline on dark | `#f5f3ee` | Slides (derived) | Display type on navy or teal backgrounds |

### 1.3 Neutral and Background Tones

| Name | Hex | Use |
|------|-----|-----|
| Text | `#1a1a1a` | Body copy on light surfaces |
| Text Secondary | `#4a4a4a` | Captions, footnotes, attributions, metadata |
| White | `#ffffff` | Default page and slide background |
| Subtle | `#f7f8f9` | Callout section backgrounds, stat card grids |
| Warm off-white | `#faf9f7` | Quote backgrounds, warm editorial sections |
| Border | `#d4d4d4` | Standard dividers and borders |
| Border Light | `#e8e8e8` | Card outlines, heading underlines, progress bars |

### 1.4 ⚠️ Color Discrepancies — Decision Required

**Teal:**

| Context | Value |
|---------|-------|
| Website `global.css` (HANDOFF.md) | `#06606d` |
| Slides `base-template.html` | `#006D6F` |

These are visually close but not identical. The website value is the better-sourced canonical. The slides skill should be updated to `#06606d` once confirmed.

**Orange — resolved: two deliberate registers**

The orange is not inconsistent but contextual — two warm terracotta values in use for different applications:

| Context | Value | Register |
|---------|-------|---------|
| Notecards (punctuation accents) | `#c4652a` | Muted, warm terracotta — intimate/personal |
| Website CSS variable (defined, not yet applied) | `#c4652a` | Same — intended for web accents |
| SVG logo (built-in orange variant) | `#CD5C0F` | Close — probably same intent |
| Slides (accent rules, callout boxes) | `#e05724` | Brighter, more saturated — presentation impact |

**Recommendation:** Treat these as two deliberate orange registers — `#c4652a` for stationery/personal contexts; `#e05724` for presentations. The website CSS already defines `#c4652a`; apply it where orange is needed on the site.

### 1.5 CSS Custom Properties (paste-ready)

```css
:root {
  /* Update teal to #06606d once discrepancy is resolved */
  --color-primary:        #06606d;
  --color-primary-dark:   #005456;
  --color-primary-light:  #e6f3f3;
  --color-text:           #1a1a1a;
  --color-text-secondary: #4a4a4a;
  --color-bg:             #ffffff;
  --color-bg-subtle:      #f7f8f9;
  --color-bg-warm:        #faf9f7;
  --color-border:         #d4d4d4;
  --color-border-light:   #e8e8e8;
  --color-accent-dark:    #051A42;
  /* Update orange once discrepancy is resolved */
  --color-accent-orange:  #e05724;
  --font-body:    'Libre Franklin', system-ui, -apple-system, sans-serif;
  --font-heading: 'Cormorant Garamond', Georgia, 'Times New Roman', serif;
}
```

---

## 2. Typography

### 2.1 Typefaces

**Display / Heading: Cormorant Garamond**  
A high-contrast optically refined serif with scholarly and literary associations. Used for all display headings, pull quotes, section markers, and the presenter byline. The italic cut is expressive and central to the visual identity — used for elegance and emphasis, not merely citation.

- Google Fonts: `family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500;1,600`
- Weights: 300 (Light), 400 (Regular), 500 (Medium), 600 (SemiBold); italic throughout
- Confirmed in: website HANDOFF.md, slides CSS (replaced Source Serif 4 in 2026 refresh)

**Body: Libre Franklin**  
A contemporary grotesque designed for legibility at text sizes; provides clean counterpoint to Cormorant's elegance. Used for body copy, captions, footnotes, eyebrow labels, subtitles, navigation, and stat labels.

- Google Fonts: `family=Libre+Franklin:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400`
- Weights: 300 (Light), 400 (Regular), 500 (Medium), 600 (SemiBold)
- Confirmed in: website HANDOFF.md, slides CSS (replaced Source Sans 3 in 2026 refresh)

**Logo wordmark: Typewriter slab serif**  
The logo wordmark "Inkcap" uses a typewriter-style slab serif — distinct from both brand typefaces. This connects the name's etymology (inkcap fungi that dissolve into liquid ink; writing as physical practice) and gives the mark a different visual register from editorial type.

### 2.2 Type Scale

*Base for presentations: 28px. Adjust proportionally for documents.*

| Element | Font | Scale | Weight | Color | Notes |
|---------|------|-------|--------|-------|-------|
| H1 — title slide | Cormorant | 2.5em | 300 | `#f5f3ee` | Light weight — scale does the work |
| H2 — section break | Cormorant | 2.3em | 300 | White | On teal background |
| H2 — content slide | Cormorant | 1.85em | 400 | Teal | With teal-light underline |
| H3 — subheading | Libre Franklin | 1.25em | 500 | Navy | On white slides |
| Body / bullets | Libre Franklin | 0.70em | 400 | `#1a1a1a` | Line-height 1.7 |
| Eyebrow labels | Libre Franklin | 0.42em | 500 | Teal | ALL CAPS, letter-spacing 0.14em |
| Pull quote | Cormorant | 1.32em | 300 | Navy | Italic; line-height 1.55 |
| Stat numbers | Cormorant | 2em | 500 | Navy | Highlighted digit in orange |
| Stat labels | Libre Franklin | 0.5em | 400 | `#4a4a4a` | |
| Attribution | Libre Franklin | 0.43em | 400 | `#4a4a4a` | Author name in weight 600 |
| Footnotes | Libre Franklin | 0.38em | 400 | `#4a4a4a` | |
| Captions | Libre Franklin | 0.40em | 400 | `#4a4a4a` | Italic |

### 2.3 Type Rules

- **Headings are never bold** in display and presentation contexts — weight 300–400; scale and typeface create hierarchy
- **Cormorant italic** is expressive, not a formatting convention — use for elegance, emphasis, and reflection prompts
- **All-caps appears only on eyebrow labels**, always with `letter-spacing: 0.14em`. Never in headings or body text.
- `text-transform: none` on all headings
- Heading letter-spacing: `0.01em` only (barely perceptible tightening)
- Line height: 1.15 for headings; 1.65–1.7 for body copy
- Custom teal bullet dots — never default browser markers

---

## 3. Logo

### 3.1 Concept

The Inkcap logo is an original illustration of three inkcap mushrooms (*Coprinellus* or closely related genus) rendered in line-art style: one dominant large cap at top, two smaller specimens clustered below. The style is hand-drawn in quality — inky, organic, detailed, precise. It ties directly to the brand name: inkcap fungi dissolve their caps into black ink-like fluid (autodigestion), making them a natural emblem for intellectual work that leaves a material mark.

The wordmark below the illustration sets "Inkcap" in a typewriter-style slab serif — connecting to writing as physical, ink-on-paper practice, and giving the mark a different visual register from the brand's editorial typefaces.

### 3.2 Logo Files

| File | Variant | Format | Dimensions | Background |
|------|---------|--------|-----------|-----------|
| `Inkcap_logo_Typewriter.svg` | Full wordmark — multi-color layers | SVG | 1296×1728px viewBox | None — **use this for all production** |
| `Inkcap-Typewriter-White.png` | Full wordmark — white | PNG | 600×800px | Solid black |
| `Inkcap-Typewriter-Blue.png` | Full wordmark — navy | PNG | 600×800px | Solid black |
| `Inkcap-White.png` | Icon only — white | PNG | 600×800px | Solid black |
| `Inkcap-Blue.png` | Icon only — navy | PNG | 600×800px | Solid black |

**⚠️ PNG note:** All PNGs have solid black backgrounds and no alpha transparency. They are suitable for use directly on dark or black surfaces. For placement on white, cream, or colored backgrounds, use the SVG or generate transparent-background PNGs by exporting from the SVG.

**SVG source:** Created in Adobe Illustrator 26.0.3 (also tagged with Vectornator metadata). Viewbox 1296×1728px (portrait, 3:4 ratio). Contains separate style classes for navy, white, and orange color variants — all can be extracted individually.

### 3.3 Variant Usage

| Variant | When to use |
|---------|------------|
| Full wordmark, white | Presentation title slides (navy bg), dark print surfaces, stationery on dark stock |
| Full wordmark, navy | Documents, proposals, letters, website header, light stationery |
| Icon only, white | Small applications on dark backgrounds: favicon, social profile, slide watermark |
| Icon only, navy | Small applications on light backgrounds: document footer mark, email signature |
| SVG (any variant) | All print, web at any size, generating new color variants |

### 3.4 Logo Rules

- Never stretch, rotate, or distort proportions
- Never add drop shadows, glows, or effects
- Never recolor outside the navy / white / orange variants
- Never place the black-background PNGs on light surfaces
- Minimum size: not yet set — test and establish before print production (suggested baseline: 80px digital, 0.75 inch print)
- Clear space: not yet formalized — suggested minimum = the cap width of the "I" in "Inkcap" on all sides

---

## 4. Graphic Elements

### 4.1 Rules and Dividers

| Element | Spec | Color | Use |
|---------|------|-------|-----|
| Teal rule (major) | 56px × 3px | Teal `#06606d` | Title slide — below heading, above subtitle |
| Orange rule (closing) | 48px × 3px | Orange `#e05724` | Closing slide — centered divider |
| H2 underline | Full width, 1.5px | `#e6f3f3` (teal light) | Below teal headings on white slides |
| Attribution rule | Full width, 1px | `#d4d4d4` | Above quote attribution lines |
| Footnote rule | Full width, 1px | `#e8e8e8` | Above footnote text |

### 4.2 Callout Boxes

```
Teal highlight box — framing statements, key definitions, pivotal claims:
  background:   #e6f3f3
  border-left:  4px solid [teal]
  border-radius: 0 3px 3px 0
  padding:      0.65em 1em

Orange accent box — urgent, action-oriented, or climactic points:
  background:   #fdf1ec
  border-left:  4px solid #e05724
  border-radius: 0 3px 3px 0
  padding:      0.65em 1em
```

### 4.3 Cards

```
border:        1.5px solid #e8e8e8
border-radius: 3px
background:    #ffffff
padding:       28px 22px
```

**Border radius rule:** All rounded elements use exactly `3px` — a precise, minimal softening. Never pill-shaped, never fully square.

### 4.4 Bullet System

Custom teal circular dot: 5px, color `#06606d`, positioned 0.52em from top, text indent 1.3em. Never use default browser list markers.

### 4.5 Website Hover / Animation Elements

*(From HANDOFF.md — specific to inkcapconsulting.com)*

- Navigation: uppercase, letter-spaced, navy underline animates in on hover
- Service cards: navy top-bar animates in via `scaleX` on hover
- CTA button: navy background, uppercase tracking
- Testimonials: 2px navy left border (static)
- Talks list: highlight border on hover
- Book covers: shadow deepens on hover
- Page sections: fade-up entrance animation on load

---

## 5. Slide Layout System

### 5.1 Color-by-Context Logic

| Layout | Background | Heading | Body | Purpose |
|--------|-----------|---------|------|---------|
| Title | Navy `#051A42` | `#f5f3ee` warm white | 60% white | Opening impression |
| Section break | Teal `#06606d` | White | 62% white | Major transition |
| Default (content) | White `#ffffff` | Teal | `#1a1a1a` | Argument + evidence |
| Default + image | White `#ffffff` | Teal | `#1a1a1a` | Visual + content split |
| Quote | Warm off-white `#faf9f7` | — | Navy italic Cormorant | Pull quote |
| Callout / stat | Subtle gray `#f7f8f9` | Teal | Navy + orange highlights | Data moments |
| Discussion | Navy `#051A42` | `#f5f3ee` | Italic Cormorant, 88% white | Audience engagement |
| Closing | Navy `#051A42` | `#f5f3ee` | 52% white | Q&A and contact |

**Canvas:** 1280 × 720px (16:9). **Transition:** fade, slow. **Full implementation:** `/mnt/skills/user/inkcap-slides/`.

---

## 6. Voice and Tone

### 6.1 Brand Personality

Inkcap Consulting is a solo practice grounded in intellectual rigor, equity in higher education, and relationship-based work. The voice is precise, warm, and direct. Equity and mission are woven into how work is designed and described — never used decoratively.

### 6.2 Writing Principles

1. **Lead with the client's problem.** The first paragraph of any proposal names the client's challenge; bio and credentials follow naturally.
2. **Concrete over abstract.** "Up to six listening sessions" rather than "a robust engagement process."
3. **Active voice, present tense.** "Inkcap conducts" not "will be conducted by."
4. **No bloat words:** *leverage, robust, holistic, synergy, impactful, deliverable-centric.*
5. **No hollow intensifiers:** *truly, really, very* — and never *genuinely* (house style).
6. **Calibrate formality to relationship.** First-time institutional client: more formal. Established retainer: collegial. Both feel human.
7. **State uncertainty honestly.** Timelines dependent on client input say so; provisional budgets are labeled.

### 6.3 Tone by Document Type

| Document | Tone |
|----------|------|
| Proposal | Confident, collaborative, specific — scope clear, relationship acknowledged |
| Contract / change order | Clear, collegial; warm but precise; minimal legalese |
| Report / deliverable | Rigorous, accessible, organized by argument |
| Slide deck | Conversational, evidence-based — written to be spoken, not read |
| Newsletter / outreach | Personal, topical; quarterly cadence |
| Cards / stationery | Warm, specific to recipient; no boilerplate |
| Email | Direct, responsive, human |

---

## 7. Website

**Stack:** Astro 5, static site, GitHub Pages  
**Repo:** `github.com/katinalynn/2026-website` (public)  
**CSS:** `src/styles/global.css` | **Layout:** `src/layouts/BaseLayout.astro`  
**Pages:** index, about, services, writing, media, contact  
**Style direction (HANDOFF.md):** "crisp, modern scholarly" — not warm editorial, not template-looking  
**Font refresh (2026):** Source Serif 4 → Cormorant Garamond; Source Sans 3 → Libre Franklin

**Outstanding from HANDOFF.md:**
- About, Media, Contact pages need visual review after refresh
- Mobile responsiveness not tested post-refresh
- Orange accent (`#c4652a`) defined in CSS but not yet applied — pending decision

---

## 8. Stationery

**Notecards:** MOO Luxe Notecards — Mohawk Superfine 32pt double-thick, uncoated, FSC certified  
**Front:** Inkcap icon or full wordmark — navy on white/cream preferred; white on navy for dark stock  
**Inside:** Space for handwritten note — no brand overload  
**Envelope:** Teal seam preferred  
**Use:** Client thank-you notes, holiday cards, milestone acknowledgments  
**URL:** [moo.com/us/luxe-notecards](https://www.moo.com/us/luxe-notecards)  

**Design file:** "Inkcap Writing Faces" in Claude Design — not yet incorporated (403 error). Share file when accessible.

**Gift pairing:** Driftaway Coffee — BIPOC woman-led, Brooklyn, corporate gifting program  
**URL:** [driftaway.coffee/corporate-gifts](https://driftaway.coffee/corporate-gifts)

---

## 9. Document Templates

No locked template exists yet. Apply these specs when building:

**Header:** Inkcap icon or wordmark (navy or teal on white); client name and date in Libre Franklin 400 `#4a4a4a`; thin teal rule below  
**H1:** Cormorant Garamond 400, navy, 18pt  
**H2:** Cormorant Garamond 400, teal, 14pt  
**H3:** Libre Franklin 600, navy, 12pt  
**Body:** Libre Franklin 400, `#1a1a1a`, 11pt, line-height 1.5  
**Callouts:** Teal left-border box for key content; orange left-border box for action items  
**Tables:** Light gray borders (`#e8e8e8`); teal background on header row (`#e6f3f3`)  
**Margins:** 1–1.25 inch; white space is intentional  
**Footer:** Document type, date, page number; katina@inkcapconsulting.com | inkcapconsulting.com; Libre Franklin 300, `#4a4a4a`

---

## 10. Photography

*From 100Waters coaching notes, March 2026:*

- Warm colors, casual-but-considered backgrounds — professional warmth, not corporate formality
- Collect reference images of admired peers before the shoot; plan multiple outfits and backgrounds in one session
- Family photo in progress for holiday card (target: before September 2026)

**In slides and web:** `object-fit: cover`; image columns on the right side in split layouts; key content must be away from edges. Captions: Libre Franklin italic, `#4a4a4a`, ~11px.

---

## 11. Action Items

- [ ] **Resolve teal** — confirm `#06606d` (website) or `#006D6F` (slides) as canonical; update the other
- [ ] **Resolve orange** — choose among `#e05724` (slides), `#c4652a` (website CSS), `#CD5C0F` (SVG); update all contexts
- [ ] **Export transparent-background PNGs** from SVG for light-surface use
- [ ] **Set minimum logo size and clear-space rules**
- [x] **Notecard design incorporated** — front + 4 back variants fully documented (§8)
- [ ] **Build first document template** (proposal) — specs above are ready
- [ ] **Apply orange on live website** — decide where: CTAs, section accents, or other elements
- [ ] **Mobile responsiveness review** post-refresh (per HANDOFF.md)
- [ ] **Photography** — document preferred headshots and context once shoot is complete

---

*Inkcap Consulting | katina@inkcapconsulting.com | inkcapconsulting.com*

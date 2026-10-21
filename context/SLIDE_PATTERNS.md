# Inkcap Slides — Patterns & Corrections
*Updated October 2026. Supplements the inkcap-slides skill. Read this at the start of any session working on slide decks.*

---

## CSS corrections (apply to all future decks)

The base-template.html in the installed plugin has some stale values. Use these instead:

### `.slide-inner` height (add globally, after brand tokens)
```css
.slide-inner { width: 100%; height: var(--slide-height, 720px); box-sizing: border-box; }
```

### Flex centering on section/quote/closing layouts
```css
.layout-section .slide-inner { padding: 64px 80px; display: flex; flex-direction: column; justify-content: center; }
.layout-quote .slide-inner   { padding: 64px 96px; display: flex; flex-direction: column; justify-content: center; }
.layout-closing .slide-inner { padding: 64px 80px; display: flex; flex-direction: column; justify-content: center; align-items: center; }
```

### Corrected font sizes
```css
.layout-default-img p, .layout-default-img li { font-size: 0.76em; } /* not 0.66em */
.layout-two-col .col p, .layout-two-col .col li { font-size: 0.73em; } /* not 0.63em */
```

### Callout boxes — breathing room
```css
.highlight-box { padding: 0.75em 1em; line-height: 1.9; }
.orange-box    { padding: 0.75em 1em; line-height: 1.9; }
```

### Readability floor (Oct 2026, from the MSU workshop decks)
No slide text below **0.56em** (≈16px at the 28px base); no teal *text* on navy (decorative teal — bullets, rules, bars — is fine). `inkcap-keynote-template.html` in the talks folder has these values built in; when copying CSS from an older deck or the skill's `base-template.html`, add this block:
```css
.layout-title .eyebrow   { color: #ffffff; font-size: 0.56em; line-height: 1.7; }
.layout-title h1 em      { color: #ffffff; }
.layout-title .subtitle  { font-size: 0.64em; color: rgba(255,255,255,0.88); }
.layout-title .presenter { font-size: 0.8em;  color: rgba(255,255,255,0.92); }
.layout-section .section-desc { font-size: 0.7em; color: rgba(255,255,255,0.92); max-width: 78%; }
.layout-closing .tagline { font-size: 0.66em; color: rgba(255,255,255,0.88); }
.layout-closing .contact { font-size: 0.66em; color: rgba(255,255,255,0.85); }
.layout-closing a, .layout-discussion a { color: #ffffff; }
.highlight-box, .orange-box { font-size: 0.73em; }
.footnote, .caption, .layout-quote .attribution { font-size: 0.56em; }
```
A long eyebrow wraps at 0.56em — break it deliberately with `<br>` (e.g. event name / venue · date).

### Headings — one size for content slides
```css
.layout-default h2, .layout-default-img h2, .layout-two-col h2, .layout-callout h2 { font-size: 1.85em; }
```

### Bullet dots — centre on the first line
The old `top: 0.52em` sits the dot near the top of the line box (line-height 1.7). Use the `lh` unit:
```css
ul.custom-bullets li::before { width: 6px; height: 6px; top: calc(0.85em - 3px); top: calc(0.5lh - 3px); }
```

### Source line for citations
Use `.source-note` (not a highlight box) for image credits/citations inside a `.content-col`; `margin-top: auto` pins it to the bottom of the column.
```css
.source-note { font-family: var(--font-body); font-size: 0.56em; font-style: italic; color: var(--color-text-secondary); line-height: 1.5; margin-top: auto; padding-top: 0.6em; border-top: 1px solid var(--color-border-light); }
.source-note a { color: var(--color-primary-dark); }
```

### Don't put font-size on a `<ul>` or `<p>` inline
Inline `font-size` on a list multiplies with the `li` size (0.63em × 0.73em ≈ 0.46em). Set sizes on the layout's `p, li` rule only.

---

## Preferences

- **No fragment animations** — do not add `class="fragment"` to any element unless explicitly asked
- **No section-break slides** (`layout-section`) — omit by default, use content slides only
- **Speaker notes on every slide** — even a single sentence

---

## Full-bleed photo slide

Use `data-background-image` on the section tag. Do NOT use absolutely-positioned `<img>` tags inside sections — they don't render reliably in Reveal.js.

```html
<section data-background-image="images/filename.jpg"
         data-background-size="cover"
         data-background-position="center">
  <aside class="notes">Speaker notes.</aside>
</section>
```

---

## Two-image side-by-side slide

Use `.slide-inner` as the flex container (it has the explicit 720px height Reveal.js needs). For a portrait image next to a landscape image:
- Portrait side: `height:100%; width:auto` — fills top to bottom at natural aspect ratio, no cropping, no border
- Landscape/secondary side: `object-fit:contain` inside a flex container — no cropping, white background for empty space

```html
<section style="padding: 0 !important; background: #fff !important;">
  <div class="slide-inner" style="display:flex; padding:0; background:#fff; align-items:stretch;">
    <!-- Portrait image: natural height, auto width, no cropping, no border -->
    <img src="images/portrait.png" alt="Description"
         style="height:100%; width:auto; display:block; flex-shrink:0;">
    <!-- Secondary image: fills remaining space, no cropping, white background -->
    <div style="flex:1; display:flex; align-items:center; justify-content:center; background:#fff; overflow:hidden;">
      <img src="images/secondary.jpg" alt="Description"
           style="max-width:100%; max-height:100%; object-fit:contain; display:block;">
    </div>
  </div>
  <aside class="notes">Speaker notes.</aside>
</section>
```

---

## Footnote rules

- Always place `.footnote` **inside** `.slide-inner`, not after it
- For `layout-two-col`: after the closing `</div>` of `.col-grid`, still inside `.slide-inner`
- For `layout-default-img`: after the closing `</div>` of `.img-col`, still inside `.slide-inner`
- To scope the footnote border to just the text column (not extending under the image), override `right`:
  ```html
  <div class="footnote" style="right: 42%;">...</div>
  ```
- When content is dense and a box would overflow the slide, convert it to a `.footnote` rather than keeping it as an accent box

---

## Stockholm deck state (June 2026)

`archive/stockholm.html` — 13 slides:

| # | Title | Layout |
|---|-------|--------|
| 1 | Title | layout-title |
| 2 | Why unexpected flourishing? | layout-default-img |
| 3 | The rotting log | layout-default-img |
| 4 | A moment of acute precarity | layout-default-img |
| 5 | Woodland restoration (full-bleed) | data-background-image |
| 6 | Blasted landscapes (Tsing) | layout-two-col |
| 7 | Mycorenewal | layout-default-img |
| 8 | Book cover + TOC (two-image) | custom flex |
| 9 | A Different Value Structure | layout-two-col |
| 10 | The art of noticing | layout-default-img |
| 11 | Fungi collage (full-bleed) | data-background-image |
| 12 | Toward abundance | layout-default-img |
| 13 | Closing | layout-closing |

Images live in the shared `images/` folder; since Stockholm is archived, its deck references them as `../images/`.

---

## Austin-era patterns (Nov 2026; carried into `syracuse.html`)

When combining older decks with `ut-austin.html`, Austin's CSS is the baseline. Changes from the MSU decks:

- **`layout-findings`**: a numbered list with a full-height logo panel whose gradient matches `doctoral-futures.png`. Use it for "What the research tells us" instead of the `layout-callout` stat cards. The Doctoral Futures intro goes in that slide's notes, with no section-break slide before it.
- **`layout-feature-img`**: a heading, one large image, an optional `.feature-quote` card laid over the image, and a `.source-note`. Used for the fractal/"Start small" slide (nautilus shell, adrienne maree brown quote), which replaces "Celebrating smallness."
- **Image credits** go in `.source-note`, never a `.highlight-box`. The MSU mycelium slide had `<div class="highlight-box"; align=right>`, which is invalid markup.
- **Live-caption status text** is `#ffffff`, not `#5fbfc1` (no teal text on navy).
- **Optional slides**: to keep a slide in the file but skip it when presenting, add `data-visibility="hidden"` to its `<section>`. Reveal removes it at load, and the slide count adjusts.
- Don't reuse a photo within one deck. `amanita_muscaria.jpg` appears on "Some of this is not that hard," so "Moving toward joy" uses `amanita_line.jpeg`.

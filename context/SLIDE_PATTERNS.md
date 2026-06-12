# Inkcap Slides — Patterns & Corrections
*Updated June 2026. Supplements the inkcap-slides skill. Read this at the start of any session working on slide decks.*

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

`stockholm.html` — 13 slides:

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

Images live in `images/` folder alongside `stockholm.html`.

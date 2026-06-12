# Inkcap Keynote Template — Editing Cheat Sheet

## Setup

1. Open `inkcap-keynote-template.html` in **VS Code** (recommended) or any plain-text editor
2. Open the same file in your browser (File → Open, or drag it into Chrome/Safari)
3. Edit in VS Code → Save → Refresh the browser to see changes

---

## How the file is structured

```
<style> block       ← Brand colors, fonts, layouts — don't touch
...
<div class="slides">
  <section> ... </section>   ← Slide 1
  <section> ... </section>   ← Slide 2
  ...
</div>
<script> block      ← Reveal.js settings — don't touch
```

Each `<section>` block is one slide. Everything between the `<!-- SLIDE X -->` comments is yours to edit.

---

## Changing text

Just replace what's between the tags — leave the tags themselves alone.

| What you see in the file | What it does |
|---|---|
| `<h1>Title here</h1>` | Large heading (title slides) |
| `<h2>Heading here</h2>` | Slide heading |
| `<h3>Subheading</h3>` | Column or section subheading |
| `<p>Paragraph text.</p>` | Body paragraph |
| `<li>Bullet point</li>` | One bullet item |
| `<em>italic text</em>` | Italic — used for emphasis or teal/ghost color on dark slides |
| `<strong>bold text</strong>` | Bold — use sparingly |
| `<a href="https://...">link text</a>` | Hyperlink |

---

## Slide layouts — the eight types

Change the layout by changing the `class` on the `<section>` tag.

| Class | Background | Use for |
|---|---|---|
| `layout-title` | Navy (#051A42) | Opening slide — split text left, image right |
| `layout-section` | Teal (#006D6F) | Major section breaks |
| `layout-default` | White | Content slides without an image |
| `layout-default-img` | White | Content slides with a full-bleed image column on the right |
| `layout-quote` | Warm off-white | Pull quotes |
| `layout-two-col` | White | Side-by-side comparisons (no image column) |
| `layout-callout` | Light gray | Data / stat grids |
| `layout-discussion` | Navy (#051A42) | Audience reflection prompts and activities |
| `layout-closing` | Navy (#051A42) | Final slide, Q&A, contact |

**Example — switching a white content slide to a split image slide:**
```html
<!-- Before -->
<section class="layout-default">
  <div class="slide-inner">
    <h2>Heading</h2>
    <ul class="custom-bullets">...</ul>
  </div>
</section>

<!-- After -->
<section class="layout-default-img">
  <div class="slide-inner">
    <div class="content-col">
      <h2>Heading</h2>
      <ul class="custom-bullets">...</ul>
    </div>
    <div class="img-col">
      <div class="img-placeholder">[ Replace with img tag ]</div>
    </div>
  </div>
</section>
```

Note that `layout-default-img` requires the content to be wrapped in `<div class="content-col">` and an `<div class="img-col">` added alongside it. See the template for a complete example.

---

## Adding a new slide

1. Find a slide with the layout you want
2. Select the entire block — from `<section` to its closing `</section>`
3. Copy and paste it below another slide
4. Edit the text inside it

---

## Reordering slides

Cut an entire `<section>...</section>` block and paste it in the new position. Keep the opening and closing tags together.

---

## Highlight boxes

Two accent box styles are available — drop either inside any content slide:

**Teal box** — for key framing points:
```html
<div class="highlight-box">
  Your key insight or framing statement here.
</div>
```

**Orange box** — for urgent or actionable claims:
```html
<div class="orange-box">
  The sentence you most want the audience to remember.
</div>
```

---

## Footnotes / citations

Add a footnote as a flowing element at the bottom of your slide content:
```html
<div class="slide-inner">
  <h2>Your heading</h2>
  <p>Content...</p>
  <div class="footnote">
    Author, <em>Title</em>, Year — Publisher · URL
  </div>
</div>
```

**Important:** Put the footnote *inside* `.slide-inner`, not outside it. Do NOT add `style="position: relative;"` to the `<section>` tag — this causes layout issues with the current Reveal.js configuration.

---

## Bullet lists

The template uses custom teal dot bullets. The structure is:

```html
<ul class="custom-bullets">
  <li>First bullet point</li>
  <li>Second bullet point</li>
  <li>Third bullet point</li>
</ul>
```

**To make bullets appear one at a time** (on click), add `class="fragment"` to each `<li>`:
```html
<li class="fragment">This appears on first click</li>
<li class="fragment">This appears on second click</li>
```

**To make all bullets appear at once**, leave out `class="fragment"` — or if you're removing it from an existing slide, use VS Code's Find & Replace:
- Find: `<li class="fragment">`
- Replace: `<li>`

The same applies to highlight boxes and orange boxes that use `class="fragment"`.

---

## Stat cards (layout-callout slides)

Each card has a number and a label:
```html
<div class="stat-card">
  <div class="num"><span class="hi">72</span>%</div>
  <div class="label">What this number means</div>
</div>
```

The `<span class="hi">` makes that portion orange. Wrap whichever part of the number you want to accent.

---

## Images

### In a split layout (layout-default-img or layout-title)

Replace the `img-placeholder` div inside the `.img-col` with a real image tag:

```html
<!-- Remove this: -->
<div class="img-placeholder">[ Replace with img tag ]</div>

<!-- Add this: -->
<img src="your-image-filename.jpg" alt="Describe the image here" style="width:100%; height:100%; object-fit:cover;">
```

The `object-fit: cover` makes the image fill the column at any aspect ratio. Put your image file in the same folder as the HTML file and use just the filename (not a full path).

### In a regular layout (layout-default, layout-two-col)

For a standalone image within slide content:
```html
<img src="your-image-filename.jpg" alt="Describe the image here" style="width: 100%; border-radius: 3px;">
```

---

## Presenter notes

Reveal.js supports speaker notes — they appear in presenter view but not on the main screen. Add them inside any slide:

```html
<section class="layout-default">
  <div class="slide-inner">
    <h2>Your slide heading</h2>
    <p>Slide content here.</p>
  </div>
  <aside class="notes">
    Your private speaking notes go here. The audience won't see these.
  </aside>
</section>
```

---

## Presenting

- **Open the HTML file in Chrome or Safari** — fullscreen with F11 (Windows) or Ctrl+Cmd+F (Mac)
- **Navigate:** Arrow keys or spacebar
- **Overview:** Press `Esc` to see all slides as a grid
- **Pause/black screen:** Press `B`

**Presenter view** (notes + timer): Requires a local server — opening directly from your desktop won't work. In Terminal:
```bash
cd ~/path/to/your/slides/folder
python3 -m http.server 8000
```
Then open `http://localhost:8000/your-filename.html` in Chrome and press `S`. A second window with notes and a timer will open. Press `Ctrl+C` in Terminal to stop the server when done.

**PDF export:** Add `?print-pdf` to the URL while running via local server (e.g. `http://localhost:8000/filename.html?print-pdf`), then File → Print → Save as PDF with margins set to None and background graphics on.

**Venue computers:** Bring the HTML file plus any image files on a USB drive. Fonts (Google Fonts) and Reveal.js require an internet connection — if presenting offline, ask for help bundling these inline.

---

## Things not to touch

- The `<style>` block at the top (brand tokens and layout CSS)
- The `<script>` block at the bottom (Reveal.js configuration)
- The `class="slide-inner"` div inside each section (it controls padding)
- The `<link>` tags in the `<head>` (Google Fonts and Reveal.js)
- The `center: true` setting in the Reveal config — changing this to `false` requires also updating how `.slide-inner` is sized

---

## Working with Claude in a new chat session

To continue working on these slides in a new chat, share the following at the start:

1. **Link to the handoff document** in Google Drive (Research > Talks etc > 2026 > "Inkcap Slides — Handoff Document") — Claude can read it directly from Drive. It contains all project context, source document IDs, image file names, and pending work.
2. **Upload the current HTML file(s)** you want to work on — Claude cannot access your local files directly.
3. **State clearly** which slides you want changed and which to preserve (e.g. "do not change slides 1–8").

When asking Claude to edit a slide, pasting the exact text you want is more reliable than describing it. If the content comes from another document, share the Google Drive link or paste the text directly.

**What Claude can do with these files:**
- Edit slide content (text, headings, bullets, boxes)
- Add, remove, or reorder slides
- Switch a slide to a different layout
- Add image placeholders or swap in real image references
- Fix CSS or layout issues
- Draft new slide content from source documents

**What Claude cannot do:** open the file in a browser to see how it renders, or directly edit files on your local machine. Always download the output file and check it in your browser before your next session.

---

## Quick reference: brand colors

| Name | Hex | Used for |
|---|---|---|
| Primary teal | `#006D6F` | Headings, bullets, rules, section slides |
| Primary light | `#e6f3f3` | Teal highlight boxes, subtle fills |
| Accent navy | `#051A42` | Title/closing/discussion slides, dark emphasis |
| Accent orange | `#e05724` | Orange boxes, stat highlights, closing rule |
| Text | `#1a1a1a` | Body copy |
| Text secondary | `#4a4a4a` | Captions, footnotes, attributions |

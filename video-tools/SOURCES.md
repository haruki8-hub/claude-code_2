# Video tools: sources

Third-party skills vendored into this repo (all MIT, LICENSE kept in each folder). Snapshot taken 2026-11-26.

| Where | Source | Commit |
|---|---|---|
| `.claude/skills/threejs-*` (13) | https://github.com/CloudAI-X/threejs-skills | 0e18186 |
| `.claude/skills/` ad-creative-video, launch-video, testimonial-video | https://github.com/iart-ai/ad-video-skills | cc80716 |
| `.claude/skills/` talking-head-b-roll | https://github.com/iart-ai/b-roll-skills | bcd5674 |
| `.claude/skills/` animated-infographic, chart-animation, presentation-video | https://github.com/iart-ai/data-animation-skills | 6570c0c |
| `.claude/skills/` photo-slideshow, product-demo-video, promo-video | https://github.com/iart-ai/ecommerce-video-skills | a430fbb |
| `.claude/skills/` diagram-animation, explainer-video, isometric-animation, whiteboard-animation, wrapped-video | https://github.com/iart-ai/explainer-video-skills | 3c13a1b |
| `.claude/skills/` brand-motion-guidelines, client-revisions, creative-brief, motion-pricing, video-delivery-specs | https://github.com/iart-ai/freelance-motion-skills | 9f294eb |
| `.claude/skills/` generative-illustration | https://github.com/iart-ai/generative-illustration-skills | e7d6243 |
| `.claude/skills/` javascript-animation, soundtrack | https://github.com/iart-ai/javascript-animation-skills | 060f746 |
| `.claude/skills/` kinetic-typography | https://github.com/iart-ai/kinetic-typography-skills | 2b79c81 |
| `.claude/skills/` lower-thirds | https://github.com/iart-ai/lower-thirds-skills | 58d3623 |
| `.claude/skills/` manim | https://github.com/iart-ai/manim-skills | 3e989cb |
| `.claude/skills/` map-animation | https://github.com/iart-ai/map-animation-skills | c8ef846 |
| `.claude/skills/` after-effects, animation-principles, beat-sync-editing, color-motion, logo-animation, motion-art-direction, motion-background, remotion-video, shot-composition | https://github.com/iart-ai/motion-design-skills | b85e50c |
| `.claude/skills/` talking-head | https://github.com/iart-ai/talking-head-skills | eac1f6b |
| `.claude/skills/` text-message-animation | https://github.com/iart-ai/text-message-video-skills | 10ae6bb |
| `.claude/skills/` caption-animation, countdown-video, lower-thirds, short-form-video | https://github.com/iart-ai/tiktok-video-skills | 88e7152 |
| `.claude/skills/` 60fps-animation, accessible-animation, ascii-animation, glassmorphism, gsap-web, lottie-animation, micro-interaction, page-transition-animation, svg-animation | https://github.com/iart-ai/web-animation-skills | ed3a045 |
| `.claude/skills/` particle-system, shader-glsl, threejs-animation | https://github.com/iart-ai/webgl-animation-skills | 0041933 |
| `.claude/skills/` audiogram, youtube-intro-outro | https://github.com/iart-ai/youtube-video-skills | 7838388 |
| `video-tools/shorts` (skill: /shorts) | https://github.com/AgriciDaniel/claude-shorts | a369fad |
| `video-tools/ghost-editor`, `.claude/agents/reel-helper.md` | https://github.com/kurbaitaev/ghost-editor | d71bdb6 |

Notes
- tiktok-video-skills also ships a `lower-thirds` skill; the standalone lower-thirds-skills version is used.
- Each iart skill has the packs' shared verify helpers copied into its own `scripts/`.
- `shorts` and `ghost-editor` hardcode `~/.claude/skills/<name>`, so `.claude/hooks/setup-video-tools.sh` symlinks them there at session start (cloud sessions) and installs yt-dlp.
- Heavy deps install on first use: `bash ~/.claude/skills/shorts/setup.sh`, `bash ~/.claude/skills/ghost-editor/scripts/doctor.sh`.
- ghost-editor's README showcase media (docs/media) was left out.

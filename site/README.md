# Service Due — brochure website

Static four-page site for Service Due (mobile vehicle servicing, Hobart & Southern Tasmania).

- `index.html`, `about.html`, `services.html`, `contact.html`, shared `styles.css`
- `images/` — photos taken from the business's Facebook page (low resolution; swap for originals before launch)
- `Service-Due-Website-Mockup.pdf` — all four pages for client sign-off

No build step: upload the folder to any static host (Netlify, Vercel, cPanel, etc.) and point service-due.com.au at it.
The contact form opens the visitor's email app addressed to bkelly@service-due.com.au.

## SEO & AI search files
- `robots.txt` (allows search and AI crawlers), `sitemap.xml`, `llms.txt` (plain-language summary for AI assistants)
- `index.html` contains AutoRepair + FAQPage JSON-LD structured data

## Photo credits (Unsplash licence: free for commercial use)
`images/stock-*.jpg` are from Unsplash: Kate Ibragimova (mechanic-engine), Christian Buehner (wrench-hands), Toby Hall (brake-rotor), Karen Chew (hobart), Panagiotis Falcos (customer-phone), Alex Gorin (battery), Philipp Katzenberger (aircon), Kenny Perez (ute), Tim Mossholder (oil). All other photos are the client's own.

## Before launch
- Connect the quote/enquiry forms to a form service (e.g. Formspree or Web3Forms) so enquiries are emailed automatically; the demo uses a mailto fallback.
- Confirm suburbs, FAQ answers and copy with the client; swap in the real logo.

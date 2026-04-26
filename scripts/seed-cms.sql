-- canvascraft-site CMS seed data
-- Run in Supabase SQL Editor (idempotent — safe to re-run)

-- Hero
INSERT INTO cms_pages (slug, product_id, title, content, version, published)
VALUES (
  'hero',
  'canvascraft-site',
  'Hero',
  '{
    "type": "landing-hero",
    "version": 1,
    "data": {
      "badges": [{ "label": "v0.1.0 — Windows · macOS · Linux" }],
      "title": "Your terminals, on an infinite canvas",
      "description": "Drag, resize, and group terminal sessions spatially. Monitor everything from your phone. Built for developers who juggle.",
      "ctas": [
        {
          "label": "Get TermCanvas — $19",
          "href": "https://revkster.gumroad.com/l/termcanvas",
          "variant": "primary"
        },
        {
          "label": "View Source",
          "href": "https://github.com/voidcraft-dev/termcanvas-site",
          "variant": "outline"
        }
      ]
    }
  }'::jsonb,
  1,
  true
)
ON CONFLICT (slug, product_id) DO UPDATE SET
  content = EXCLUDED.content,
  version = EXCLUDED.version,
  updated_at = now();

-- Features
INSERT INTO cms_pages (slug, product_id, title, content, version, published)
VALUES (
  'features',
  'canvascraft-site',
  'Features',
  '{
    "type": "landing-features",
    "version": 1,
    "data": {
      "headline": "All in the $19",
      "subheadline": "No upsells, no paid tiers. One purchase unlocks everything.",
      "layout": "grid-3",
      "items": [
        {
          "icon": "🖥️",
          "title": "Infinite Canvas",
          "description": "Zoomable, pannable surface. No tabs, no rigid splits — just drag and place terminals anywhere."
        },
        {
          "icon": "📁",
          "title": "Region Groups",
          "description": "Group terminals into named regions — one per project. Frontend, backend, DB, visually organized."
        },
        {
          "icon": "📱",
          "title": "Mobile Remote",
          "description": "Scan a QR code. Monitor or type into any session from your phone — real-time over LAN."
        },
        {
          "icon": "⌨️",
          "title": "Multi-Shell",
          "description": "PowerShell, CMD, WSL, Bash, Git Bash, Zsh, Fish — auto-detected. Mix freely in one workspace."
        },
        {
          "icon": "💾",
          "title": "Persistent Workspaces",
          "description": "Save entire layouts. Switch between projects instantly. Your arrangement always waiting."
        },
        {
          "icon": "📐",
          "title": "Smart Resize",
          "description": "Terminals auto-fit when resized. Interactive minimap for navigating large workspaces."
        }
      ]
    }
  }'::jsonb,
  1,
  true
)
ON CONFLICT (slug, product_id) DO UPDATE SET
  content = EXCLUDED.content,
  version = EXCLUDED.version,
  updated_at = now();

-- Pricing
INSERT INTO cms_pages (slug, product_id, title, content, version, published)
VALUES (
  'pricing',
  'canvascraft-site',
  'Pricing',
  '{
    "type": "landing-pricing",
    "version": 1,
    "data": {
      "headline": "Simple, fair pricing",
      "subheadline": "Pay once. Use forever. No subscriptions, no tricks.",
      "plans": [
        {
          "id": "lifetime",
          "name": "Lifetime License",
          "price": "$19",
          "highlight": true,
          "features": [
            "Unlimited terminals & regions",
            "Mobile remote control",
            "All current & future shells",
            "Windows, macOS & Linux",
            "Priority support & updates"
          ],
          "cta": {
            "label": "Get TermCanvas Now",
            "href": "https://revkster.gumroad.com/l/termcanvas"
          }
        }
      ]
    }
  }'::jsonb,
  1,
  true
)
ON CONFLICT (slug, product_id) DO UPDATE SET
  content = EXCLUDED.content,
  version = EXCLUDED.version,
  updated_at = now();

-- FAQ
INSERT INTO cms_pages (slug, product_id, title, content, version, published)
VALUES (
  'faq',
  'canvascraft-site',
  'FAQ',
  '{
    "type": "landing-faq",
    "version": 1,
    "data": {
      "headline": "Common questions",
      "items": [
        {
          "question": "Is this a subscription or one-time purchase?",
          "answer": "One-time purchase. Pay $19 once — you own it forever, including all future updates. No subscription, no hidden fees."
        },
        {
          "question": "What operating systems are supported?",
          "answer": "Windows 10/11, macOS 12+, and major Linux distributions (Ubuntu, Fedora, Arch). Native installers for all three platforms included."
        },
        {
          "question": "How does the mobile remote work?",
          "answer": "TermCanvas runs a local WebSocket server on your machine. Scan the QR code with your phone browser (same LAN). Token-based auth. Your data never leaves your network."
        },
        {
          "question": "Does it phone home or require internet?",
          "answer": "Fully offline after activation. Zero network requests, no telemetry, no analytics. Your terminals stay on your machine."
        },
        {
          "question": "What''s your refund policy?",
          "answer": "14-day no-questions-asked refund. If TermCanvas doesn''t work for you within two weeks, email us and we''ll refund immediately."
        }
      ]
    }
  }'::jsonb,
  1,
  true
)
ON CONFLICT (slug, product_id) DO UPDATE SET
  content = EXCLUDED.content,
  version = EXCLUDED.version,
  updated_at = now();

-- CTA
INSERT INTO cms_pages (slug, product_id, title, content, version, published)
VALUES (
  'cta',
  'canvascraft-site',
  'CTA',
  '{
    "type": "landing-cta",
    "version": 1,
    "data": {
      "headline": "Ready to stop tab-switching forever?",
      "subheadline": "Join developers who manage their terminals spatially.",
      "ctas": [
        {
          "label": "Get TermCanvas — $19",
          "href": "https://revkster.gumroad.com/l/termcanvas",
          "variant": "primary"
        }
      ]
    }
  }'::jsonb,
  1,
  true
)
ON CONFLICT (slug, product_id) DO UPDATE SET
  content = EXCLUDED.content,
  version = EXCLUDED.version,
  updated_at = now();

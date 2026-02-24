---
description: Repository Information Overview
alwaysApply: true
---

# Portfolio Website Information

## Summary
A personal portfolio website showcasing projects, skills, and professional information. Built with vanilla HTML, CSS, and JavaScript with Firebase hosting integration and GitHub Actions CI/CD pipeline.

## Structure
- **Root Directory**: Main HTML files and core assets
- **src/**: Media assets organized by type (png, webp, svg, ico, mp3, pdf, videos)
- **public/**: Firebase hosting public directory
- **projectsnap/**: Project screenshot assets
- **icons/**: Icon and image resources
- **.github/workflows/**: GitHub Actions CI/CD configuration
- **Formatted code/**: Minified/formatted versions of CSS and JS files

## Language & Runtime
**Language**: JavaScript, HTML5, CSS3  
**Build System**: Firebase CLI  
**Package Manager**: npm  
**CSS Framework**: Tailwind CSS (v3.4.4)

## Dependencies
**Development Dependencies**:
- tailwindcss: ^3.4.4

**External Libraries**:
- AOS (Animate On Scroll) - CDN integration
- Google Fonts (Passions Conflict, Orbitron, Fira Code, Six Caps)

## Build & Installation
```bash
npm install
# For Tailwind CSS compilation (if needed)
npx tailwindcss -i ./src/input.css -o ./style.css --watch

# Firebase deployment
firebase deploy
```

**GitHub Actions Build**:
```bash
npm ci && npm run build
```

## Hosting & Deployment

**Firebase Hosting Configuration**:
- **Public Directory**: `public`
- **Deployment**: Automated via GitHub Actions on main branch push
- **Project ID**: portfolio-a2db7
- **Rewrites**: All routes serve `index.html` (SPA behavior)

**GitHub Actions**:
- **Trigger**: Push to main branch
- **Workflow**: Build and deploy to Firebase Hosting
- **Environment**: ubuntu-latest

## Main Files & Resources

**Entry Points**:
- `index.html` - Main portfolio page (35KB)
- `public/index.html` - Firebase hosting entry point

**Core Assets**:
- `style.css` - Main stylesheet (26KB, minified version)
- `main.js` - Interactive functionality (3.7KB, minified)
- `mystyle.css` - Additional custom styles (31KB)

**Configuration**:
- `tailwind.config.js` - Tailwind CSS configuration
- `firebase.json` - Firebase hosting settings
- `.firebaserc` - Firebase project configuration

## Project Features

**Interactive Elements**:
- Animated scrolling effects (AOS library)
- Light/dark mode toggle
- Sound controls
- Mobile responsive hamburger menu
- Preloader animation
- Back-to-top functionality

**Content Sections**:
- Mini intro with animated elements
- About me section
- Skills showcase
- Projects portfolio
- Contact information

**SEO & Analytics**:
- Google Site Verification integrated
- Meta tags for social media sharing
- Sitemap.xml for search engines
- Robots.txt for crawler instructions
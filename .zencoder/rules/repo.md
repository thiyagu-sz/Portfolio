---
description: Repository Information Overview
alwaysApply: true
---

# Portfolio Website Information

## Summary
A personal portfolio website showcasing professional skills, projects, and animations. Built with a focus on interactive design using vanilla HTML, CSS, and JavaScript, integrated with Firebase Hosting and automated deployment via GitHub Actions.

## Structure
- **Root Directory**: Contains core application files (`index.html`, `main.js`, `style.css`).
- **src/**: Asset directory containing subfolders for media (mp3, pdf, png, svg, webp, videos).
- **public/**: Firebase hosting target directory (currently contains a template `index.html`).
- **projectsnap/**: Screenshots used for project showcases in the portfolio.
- **icons/**: Branding and interface icons.
- **Formatted code/**: Human-readable versions of minified core assets.
- **.github/workflows/**: CI/CD configuration for automated Firebase deployment.

## Language & Runtime
**Language**: HTML5, CSS3, JavaScript (ES6+)  
**Version**: Web Standard  
**Build System**: Tailwind CSS (v3.4.4)  
**Package Manager**: npm  

## Dependencies
**Development Dependencies**:
- `tailwindcss`: ^3.4.4 (Utility-first CSS framework)

**External Resources (CDN)**:
- `AOS` (Animate On Scroll)
- `Google Fonts`: Passions Conflict, Orbitron, Fira Code, Six Caps
- `Firebase SDK`: Web v11.9.1 (Auth, Analytics, Firestore)

## Build & Installation
```bash
# Install development dependencies
npm install

# Build Tailwind CSS (manual command)
npx tailwindcss -i ./src/input.css -o ./style.css --watch

# Local preview using Firebase
firebase serve

# Manual deployment
firebase deploy
```

**Note**: The GitHub Actions workflow (`firebase-hosting-merge.yml`) attempts to run `npm run build`, but no build script is defined in `package.json`.

## Hosting & Deployment
**Firebase Hosting**:
- **Public Directory**: `public`
- **Project ID**: `portfolio-a2db7`
- **Rewrites**: Configured for Single Page Application (SPA) behavior, routing all traffic to `/index.html`.

**GitHub Actions**:
- **Trigger**: Push to `main` branch.
- **Action**: Builds and deploys to Firebase Hosting live channel.

## Main Files & Resources
**Entry Points**:
- `index.html`: Primary portfolio structure and content (36.9 KB).
- `main.js`: Core interactivity and animation logic (minified).
- `style.css`: Primary compiled stylesheet (minified).

**Configuration**:
- `firebase.json`: Hosting rules and public directory settings.
- `tailwind.config.js`: Tailwind content paths and theme extensions.
- `.firebaserc`: Mapping to Firebase project IDs.

**Scripts**:
- `fix_paragraph.ps1`: PowerShell script for updating specific content blocks in `index.html`.

## Project Features
- **Animations**: AOS library for scroll-triggered transitions and custom cursor tracking.
- **Themes**: Light/Dark mode toggle implementation.
- **Multimedia**: Integrated audio player and resume download functionality.
- **SEO**: Custom `sitemap.xml`, `robots.txt`, and meta tags for social sharing.

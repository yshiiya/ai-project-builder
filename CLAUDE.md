# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

AI Project Builder is a static web application that helps users create structured instructions for AI assistants (Claude, ChatGPT, Gemini, etc.) in Japanese. It's a single-page application with no build process required.

## Key Commands

### Development
```bash
# Install dependencies (only needed for deployment scripts)
npm install

# Run local development server (Docker推奨)
docker run -d --rm --name ai-project-builder -p 8000:80 -v "$(pwd)":/usr/share/nginx/html:ro nginx:alpine
# or
npm run serve
# or
python -m http.server 8000
# or
npx http-server

# Format code
npm run format

# Validate HTML
npm run validate
```

### Deployment
```bash
# Deploy to Vercel (production)
npm run deploy:vercel

# Deploy to Netlify
npm run deploy:netlify

# Deploy to GitHub Pages
git push origin main  # Automatic deployment configured
```

### Testing
No automated testing framework is implemented. Test manually by:
1. Opening index.html in a browser (http://localhost:8000/)
2. Testing all UI interactions
3. Verifying import/export functionality
4. Testing responsive design on mobile

### Local Development with Docker
When testing features locally, always use Docker:
```bash
# Start server
docker run -d --rm --name ai-project-builder -p 8000:80 -v "$(pwd)":/usr/share/nginx/html:ro nginx:alpine

# Stop server
docker stop ai-project-builder
```

## Architecture

### Technology Stack
- **Frontend**: Vanilla JavaScript + HTML5
- **CSS**: Tailwind CSS (CDN)
- **Data Storage**: LocalStorage
- **Deployment**: Static hosting (Vercel primary)
- **No build process**: Direct HTML/JS files

### File Structure
```
/
├── index.html          # Main application (single-page)
├── landing.html        # Landing page
├── vercel.json         # Vercel deployment config
├── netlify.toml        # Netlify deployment config
├── package.json        # npm scripts for deployment
├── robots.txt          # SEO configuration
├── sitemap.xml         # SEO sitemap
└── archive/            # Backup files and history
```

### Key Application Components (in index.html)

1. **AI Provider Selection**: Tab-based interface for Claude/ChatGPT/Gemini/Perplexity
2. **Expert Team Builder**: 40+ expert templates with customizable roles
3. **Personal Advisors**: Finance/Education/Health advisor configurations
4. **Output Settings**: Format, tone, detail level customization
5. **Multi-Agent Configuration**: Collaboration and feedback loop settings
6. **Import/Export**: Save/load configurations via JSON

### JavaScript Architecture
- All JavaScript is inline in index.html
- Event-driven architecture with direct DOM manipulation
- LocalStorage for data persistence
- No external dependencies (except Tailwind CSS via CDN)

## Important Conventions

1. **Language**: UI is entirely in Japanese
2. **No Framework**: Intentionally uses vanilla JS for simplicity
3. **Mobile-First**: Special considerations for mobile UI (sticky buttons, responsive design)
4. **Emojis**: Used throughout UI for visual clarity (🎯, 🔧, etc.)
5. **Modal Dialogs**: Used for import functionality
6. **Tab Navigation**: Primary navigation pattern

## Deployment Notes

- **Production URL**: https://ai-project-builder.ideandtity.com/
- **Auto-deployment**: Push to main branch triggers Vercel deployment
- **Security Headers**: Configured in vercel.json and netlify.toml
- **Clean URLs**: /landing routes to landing.html

## Common Tasks

### Adding New Expert Templates
1. Find the expert templates section in index.html
2. Add new option to the relevant select element
3. Update the generatePrompt() function if needed

### Modifying UI Components
1. All HTML is in index.html
2. Use Tailwind CSS classes for styling
3. Test responsive design on mobile

### Updating Deployment Configuration
1. Edit vercel.json for Vercel-specific settings
2. Update package.json scripts for new deployment targets
3. Test deployment with npm run deploy:* commands
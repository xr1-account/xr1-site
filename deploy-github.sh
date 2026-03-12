#!/bin/bash
# XR1 Site - Déploiement automatique vers GitHub Pages
# Usage: ./deploy-github.sh [username] [repo]
# Exemple: ./deploy-github.sh structurexr1 xr1-site

set -e

USERNAME=${1:-structurexr1}
REPO_NAME=${2:-xr1-site}
BRANCH="main"

SITE_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SITE_DIR"

echo "🚀 XR1 Site → GitHub Pages"
echo "==========================="
echo "Repo: $USERNAME/$REPO_NAME"
echo ""

# Check git
if [ ! -d .git ]; then
    echo "📦 Initialisation git..."
    git init
    git checkout -b $BRANCH
fi

# Check remote
if ! git remote get-url origin &>/dev/null; then
    echo "🔗 Ajout remote..."
    git remote add origin https://github.com/$USERNAME/$REPO_NAME.git
fi

# Check for uncommitted changes
if git diff --quiet && git diff --cached --quiet; then
    echo "⚠️  Aucun changement à déployer"
    exit 0
fi

# Add and commit
echo "📝 Commit des changements..."
git add -A
COMMIT_MSG="deploy: $(date '+%Y-%m-%d %H:%M')"
git commit -m "$COMMIT_MSG"

# Push
echo "📤 Push vers GitHub..."
git push -u origin $BRANCH

echo ""
echo "✅ Déployé!"
echo ""
echo "→ Activer GitHub Pages:"
echo "  https://github.com/$USERNAME/$REPO_NAME/settings/pages"
echo "  Source: GitHub Actions"
echo ""
echo "→ Accéder au site (après ~2min):"
echo "  https://$USERNAME.github.io/$REPO_NAME/"

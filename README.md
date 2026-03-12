# XR1 Showcase - Site Statique

Site vitrine statique de STRUCTURE XR1 pour GitHub Pages.

## 🌐 URL de test (une fois déployé)
https://votre-username.github.io/xr1-site/

## 🚀 Déploiement rapide

### Méthode 1: Commandes manuelles

```bash
# 1. Créer le repo sur GitHub d'abord (sans README)
# https://github.com/new → Repository name: xr1-site → Public

# 2. Dans ce dossier, configurer le remote
git remote add origin https://github.com/VOTRE_USERNAME/xr1-site.git
git branch -M main
git push -u origin main

# 3. Activer GitHub Pages:
# https://github.com/VOTRE_USERNAME/xr1-site/settings/pages
# → Source: GitHub Actions

# 4. Attendre 2-3 minutes et visiter:
# https://VOTRE_USERNAME.github.io/xr1-site/
```

### Méthode 2: Script assisté

```bash
./deploy.sh VOTRE_USERNAME
```

Puis suivre les instructions affichées.

## ✅ Vérification du déploiement

1. Push effectué sur GitHub
2. Workflow exécuté (onglet "Actions" du repo)
3. GitHub Pages activé dans Settings → Pages → GitHub Actions
4. Site accessible après 2-3 minutes

## 📁 Structure du site

```
xr1-site/
├── index.html          # Page principale (showcase) - 608 lignes
├── .github/
│   └── workflows/
│       └── deploy.yml  # Workflow auto-deploy
├── .gitignore
├── README.md
└── deploy.sh           # Script d'aide au déploiement
```

## 🎨 Design System

- **Theme**: Esport Dark/Red (inspiré FaZe/TeamLiquid)
- **Couleurs**:
  - Rouge primaire: #E60000
  - Fond: #050505
  - Panel: #0a0a0a
  - Texte: #f0f0f0
  - Muted: #666
  - Or: #C5A028
  - Vert: #00FF41
  - Bleu: #06B6D4
- **Typographie**: 
  - Titres: Inter (300, 400, 600, 700, 900)
  - Code/Stats: JetBrains Mono
- **Animations**: 
  - Particules canvas connectées (fond subtil)
  - Scroll reveal (opacity + translateY)
  - Compteurs animés (0 → valeur)
  - Hover effects sur cards

## 📱 Sections du site

| Section | Contenu | Features |
|---------|---------|----------|
| **Hero** | Titre XR1, badge "Système Opérationnel", stats animées | Particules canvas, compteurs, CTA |
| **Features** | 6 cartes capacités | Grid responsive, hover effects |
| **Agents** | 7 agents avec avatars | Cards colorées par agent, mode badges |
| **Stack** | 8 technologies | Chips avec dots colorés |
| **Providers** | 15+ providers IA | Status badges (active/down/gated) |
| **Footer** | Version, copyright, lien GitHub | - |

## 🔧 Modifications

Le site est **entièrement statique** (HTML/CSS/JS inline), aucune dépendance externe sauf Google Fonts.

Pour modifier:
1. Éditer `index.html`
2. `git add . && git commit -m "feat: description"`
3. `git push`
4. Le site se met à jour automatiquement (Actions → deploy)

### Points d'attention

- **Version**: Modifiée manuellement dans le footer (v3.3.0)
- **Stats**: Hardcodées dans data-count attributes
- **Providers**: Status à mettre à jour manuellement
- **Agents**: Modes à vérifier régulièrement

## 📊 Performance

- **Size**: ~24KB (HTML inline)
- **Load**: < 1s (pas d'images externes)
- **Fonts**: Google Fonts CDN
- **Mobile**: Responsive (breakpoint 768px)
- **SEO**: Meta tags Open Graph présents

## 🔗 Liens utiles

- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [Actions Workflow](https://github.com/features/actions)
- [XR1 Framework](https://github.com/structurexr1/xr1-framework)

## 📄 License

© 2026 STRUCTURE XR1

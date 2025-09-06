# 🚀 Flutter BaseApp

**BaseApp** est un projet Flutter modulaire, structuré selon les principes du **Domain-Driven Design (DDD)**, intégrant **FVM**, **flutter_gen**, ainsi qu’une organisation rigoureuse du code basée sur `lib/src`.

Le projet est conçu pour servir de base solide aux applications mobiles et multiplateformes en Flutter, avec un focus sur la maintenabilité, la lisibilité et les bonnes pratiques.

## 🧱 Architecture DDD

Le projet suit l’architecture **Clean + DDD**, avec une séparation claire en 4 couches :

```
lib/
└── src/
    ├── application/      # Cas d’usage (UseCases, state management)
    ├── domain/           # Entités, Value Objects, interfaces
    ├── infrastructure/   # Implémentations concrètes, accès aux APIs, DB
    └── presentation/     # UI, pages
```

Chaque couche a un rôle précis, ce qui permet une forte découplage, un test unitaire facilité et une évolutivité assurée.

---

## 🧪 Tests

- **Tests unitaires** sur les cas d’usage et entités du domaine (dossier `test/unit/`).
- **Tests de widgets** pour la UI (dossier `test/widget/`).
- **Tests d’intégration** pour valider le comportement global (dossier `test/integration/`).

```bash
flutter test
```

---

## ⚙️ Fonctionnalités techniques

- ✔️ **FVM** pour gérer les versions Flutter de manière isolée
- 🎯 **flutter_gen** pour la génération automatique des assets et fonts
- 🔁 **freezed** + **json_serializable** pour les modèles immuables et le parsing JSON
- 🔗 **get_it** pour l’injection de dépendances
- 🌐 **dio** pour la communication réseau
- 📦 Architecture prête à l’emploi pour Firebase, REST, ou GraphQL
- 🧩 **scripts/** pour automatiser les tâches courantes
- 📝 **docs/** pour la documentation technique et les guides
- 🧪 **samples/** pour des exemples de widgets/pages
- 🔒 Gestion des secrets via `.env` (voir exemple dans `docs/`)
- 🎨 Structure extensible pour la gestion des thèmes
- 🛡️ CI/CD prêt à l’emploi (`.github/workflows/flutter_ci.yml`)

---

## 🛠️ Installation & Setup

1. **Cloner le projet**
```bash
git clone https://github.com/sylvere36/flutter.baseapp.git
cd flutter.baseapp
```

2. **Installer Flutter via FVM**
```bash
fvm install
fvm use
fvm flutter pub get
```

3. **Générer les fichiers**
```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Lancer le projet**
```bash
fvm flutter run
```

---

## 📁 Organisation du code

| Dossier             | Rôle |
|---------------------|------|
| `application/`      | Cas d’usage, orchestrateurs |
| `domain/`           | Entités, Value Objects, Interfaces |
| `infrastructure/`   | Implémentations concrètes (API, local, remote) |
| `presentation/`     | UI, pages, gestion d’état |
| `test/unit/`        | Tests unitaires |
| `test/widget/`      | Tests de widgets |
| `test/integration/` | Tests d’intégration |
| `docs/`             | Documentation technique |
| `scripts/`          | Scripts utilitaires |
| `samples/`          | Exemples de widgets/pages |

---

## 📄 Licence

MIT – libre d’usage et d’adaptation.

---

> Développé avec ❤️ par [@sylvere36](https://github.com/sylvere36)
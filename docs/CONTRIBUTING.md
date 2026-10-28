# Contribuer au projet

Ce dépôt suit un workflow par branches et Pull Requests. La branche `main` est protégée : aucun push direct n'est possible.

## Nommage des branches

Format : `préfixe/description-courte-en-minuscules`

| Préfixe | Usage | Exemple |
|---|---|---|
| `feat/` | Nouvelle fonctionnalité ou nouveau traitement | `feat/ingestion-bronze-listings` |
| `fix/` | Correction d'un bug | `fix/dedoublonnage-reviews` |
| `docs/` | Documentation uniquement | `docs/contributing` |
| `chore/` | Maintenance, configuration, outillage | `chore/init-repo` |
| `refactor/` | Réorganisation du code sans changer son comportement | `refactor/fonctions-nettoyage-silver` |
| `test/` | Ajout ou modification de tests | `test/qualite-table-silver-listings` |

## Types de commits

Format : `type: description à l'impératif, en minuscules`

| Type | Quand l'utiliser | Exemple |
|---|---|---|
| `feat` | Ajout d'une fonctionnalité | `feat: ajoute l'ingestion bronze des annonces` |
| `fix` | Correction d'un bug | `fix: corrige le typage de la colonne price` |
| `docs` | Documentation | `docs: ajoute le guide de contribution` |
| `chore` | Maintenance, configuration | `chore: complète le gitignore` |
| `refactor` | Réorganisation sans changement de comportement | `refactor: extrait la fonction de nettoyage des dates` |
| `test` | Tests | `test: vérifie l'unicité des identifiants d'annonces` |
| `ci` | Intégration continue | `ci: ajoute le lint sur les Pull Requests` |

Règles :

- un commit = un changement logique ;
- la description dit ce que fait le commit, sans point final ;
- relire le message avant de valider (pas de texte temporaire ni de placeholder).

## Workflow d'une contribution

1. Se placer sur `main` à jour : `git switch main` puis `git pull`.
2. Créer une branche : `git switch -c feat/ma-fonctionnalite`.
3. Travailler et commiter par petits changements, avec des messages conformes.
4. Vérifier avant de pousser : `git status` et `git log --oneline`.
5. Pousser la branche : `git push -u origin feat/ma-fonctionnalite`.
6. Ouvrir une Pull Request sur GitHub avec un titre clair.
7. Fusionner la Pull Request sur GitHub.
8. Mettre à jour `main` : `git switch main` puis `git pull`.
9. Supprimer la branche locale : `git branch -d feat/ma-fonctionnalite`.

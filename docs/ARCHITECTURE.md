# Architecture du projet

Pipeline de données sur Databricks à partir des données publiques Inside Airbnb (Paris) : annonces (`listings`), avis (`reviews`) et calendrier (`calendar`).

## Flux de données

```
Inside Airbnb (CSV)
        |
        v
Volume Unity Catalog (fichiers bruts)
        |  ingestion incrémentale (Auto Loader)
        v
BRONZE : données brutes + métadonnées d'ingestion
        |  nettoyage, typage, déduplication, qualité
        v
SILVER : données propres, avis enrichis par IA, quarantaine
        |  modélisation dimensionnelle, agrégats
        v
GOLD : faits, dimensions, KPIs
        |
        v
Dashboard
```

| Couche | Contenu | Règle |
|---|---|---|
| Bronze | Copie fidèle de la source, plus des colonnes techniques (date d'ingestion, fichier source) | Aucune transformation métier, rejouable |
| Silver | Données nettoyées, typées, dédupliquées | Les lignes invalides vont en quarantaine, jamais supprimées en silence |
| Gold | Tables prêtes pour l'analyse | Modèle en faits et dimensions, KPIs documentés |

## Rôle des dossiers

| Dossier | Rôle | Pourquoi ici |
|---|---|---|
| `src/` | Code réutilisable des transformations (Python, SQL) | Du code testable et versionné, séparé des notebooks |
| `notebooks/` | Exploration et analyses ponctuelles | Un notebook d'exploration n'est pas du code de production |
| `pipelines/` | Définition des pipelines Lakeflow (Bronze, Silver, Gold) | Isole la logique de pipeline du reste |
| `resources/` | Configuration des jobs et du déploiement (YAML) | Séparer le « quoi » (code) du « comment le lancer » (config) |
| `tests/` | Tests automatisés des fonctions de `src/` | Exécutés par la CI sur chaque Pull Request |
| `docs/` | Documentation du projet | Lisible par les humains, aucun outil ne la cherche |

À la racine : `README.md`, `LICENSE.txt`, `.gitignore`, `.gitattributes` (emplacements attendus par GitHub et Git) et, plus tard, `databricks.yml` (configuration du déploiement).

## Conventions de nommage Unity Catalog

Unity Catalog organise les objets sur trois niveaux : `catalogue.schéma.table`.

| Niveau | Convention | Exemple |
|---|---|---|
| Schéma | Nom de la couche, en minuscules | `bronze`, `silver`, `gold` |
| Table | `snake_case`, au pluriel pour les entités | `listings`, `reviews`, `calendar` |
| Table Gold | Préfixe `dim_` pour les dimensions, `fact_` pour les faits | `dim_listing`, `fact_review` |
| Volume | Fichiers bruts de la source | `raw` |
| Colonne | `snake_case`, sans accents ni espaces | `host_id`, `review_date` |
| Colonne technique | Préfixe `_` | `_ingested_at`, `_source_file` |

Le catalogue du projet est `airbnb`.

Exemple de nom complet : `airbnb.silver.reviews`.

## Décisions

- **Architecture médaillon** : chaque couche a une responsabilité unique, ce qui permet de rejouer et de corriger une couche sans toucher aux autres.
- **Code dans `src/`, pas dans les notebooks** : le code testable et versionné vit dans `src/`, les notebooks servent à explorer.
- **Configuration séparée du code** : `resources/` décrit comment exécuter le code, pour déployer le même code en dev et en prod.

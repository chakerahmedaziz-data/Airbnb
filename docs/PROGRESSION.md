# Suivi de projet : Airbnb Paris – Pipeline Lakehouse sur Databricks

- **Outil** : Databricks (Free Edition)
- **Niveau déclaré** : SQL avancé · Python intermédiaire · Git débutant (projet visé : avancé)
- **Dépôt** : https://github.com/chakerahmedaziz-data/Airbnb
- **Jeu de données** : Inside Airbnb – Paris (listings, reviews, calendar) – https://insideairbnb.com → « Get the Data »
- **Rythme** : 3 h/jour, 5 jours/semaine
- **Dernière mise à jour** : 2026-10-28

## Plan et avancement

| # | Phase | Tâche | IA | Statut | Verdict | Notes |
|---|---|---|---|---|---|---|
| 1 | Git | Créer le dépôt GitHub (README, .gitignore, licence) | | ✅ validée | Validée avec réserves | PR #1 fusionnée, MIT, .gitignore enrichi. Réserves : commit avec placeholder « <ta licence> », branche distante à supprimer |
| 2 | Git | Protéger `main` et définir la stratégie de branches / commits | | ⏳ en cours | | |
| 3 | Git | Concevoir la structure du projet | | ⬜ à faire | | |
| 4 | Environnement | Configurer le workspace, Unity Catalog et connecter Git | | ⬜ à faire | | |
| 5 | Bronze | Récupérer et décrire les données brutes | | ⬜ à faire | | |
| 6 | Bronze | Ingestion Bronze rejouable avec métadonnées | | ⬜ à faire | | |
| 7 | Bronze | Ingestion incrémentale (Auto Loader) | | ⬜ à faire | | |
| 8 | Bronze | Profilage assisté par IA | 🤖 | ⬜ à faire | | |
| 9 | Silver | Nettoyage et typage | | ⬜ à faire | | |
| 10 | Silver | Déduplication, clés et quarantaine | | ⬜ à faire | | |
| 11 | Silver | Règles de qualité générées par IA puis implémentées | 🤖 | ⬜ à faire | | |
| 12 | Silver | Pipeline déclaratif (Lakeflow) avec expectations | | ⬜ à faire | | |
| 13 | Silver | Enrichissement des avis par IA (langue, sentiment, thèmes) | 🤖 | ⬜ à faire | | |
| 14 | Gold | Modélisation dimensionnelle | | ⬜ à faire | | |
| 15 | Gold | KPIs et optimisation Delta | | ⬜ à faire | | |
| 16 | Gold | Documentation du catalogue assistée par IA | 🤖 | ⬜ à faire | | |
| 17 | Gold | Exposition (dashboard) | | ⬜ à faire | | |
| 18 | Industrialisation | Orchestration avec Workflows | | ⬜ à faire | | |
| 19 | Industrialisation | CI : lint et tests sur chaque PR | | ⬜ à faire | | |
| 20 | Industrialisation | Déploiement dev/prod avec Databricks Asset Bundles | | ⬜ à faire | | |
| 21 | Industrialisation | Monitoring et alertes | | ⬜ à faire | | |
| 22 | Livraison | README final, schéma d'architecture, catalogue | | ⬜ à faire | | |
| 23 | Livraison | Revue finale et bilan | | ⬜ à faire | | |

Statuts : ⬜ à faire · ⏳ en cours · ✅ validée · 🔁 à retravailler · ⏭ passée sans rendu

## Points à retravailler
- Tâche 1 : messages de commit anciens non conventionnels (« ajout Test », « Type: Description des Tables », « Ajout du fichier gitignore ») et placeholder oublié dans « chore: ajoute la licence <ta licence> » → vigilance : relire le message avant chaque commit
- Tâche 1 : .gitignore initialement repris de l'exemple ; compris et complété ensuite

## Décisions techniques
- 2026-10-27 : GitHub choisi comme plateforme Git (écosystème le plus répandu, GitHub Actions pour la CI).
- 2026-10-28 : Licence MIT retenue (permissive, simple, adaptée à un projet de portfolio).
- 2026-10-27 : Jeu de données Inside Airbnb Paris retenu (texte libre multilingue, dimension temporelle, gros volume d'avis).

## Aides utilisées
- Tâche 1 : guidage pas à pas (niveau 3) demandé après 4 rendus incomplets ; blocage sur branche / PR / licence

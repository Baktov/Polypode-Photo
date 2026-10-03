# CLAUDE.md — Polypode Photo (Addon WoW)

Conventions communes et procédure de documentation de tous les modules Polypode (chargées
automatiquement, quel que soit le dossier ouvert) :

@../Polypode/MODULES.md

Addon compagnon de **Polypode** (dossier voisin `../Polypode`, dépôt séparé) : le mode photo,
sorti de Polypode 0.46.1 pour pouvoir être chargé ou non. Les conventions de Polypode
s'appliquent (voir `../Polypode/CLAUDE.md`) : commentaires en français, code en anglais, pas de
librairie externe, pas de `print()`, bloc `-- Polypode Photo: Fichier — rôle` en tête de fichier,
tout contenu de taille variable défile, Retail (120000) et WoW Forever (16001) avec tests
d'existence des API récentes.

## Architecture

| Fichier | Rôle |
|---|---|
| `Polypode_Photo.toc` | `## Dependencies: Polypode`, SavedVariables par personnage `PolypodePhotoDB` ; ordre `Backgrounds → Photo` |
| `Backgrounds.lua` | Données **générées** (`tools/gen_backgrounds.py`) : `ns.LOADING_SCREENS` = groupes par extension `{ name, items = { { nom, fichier [, u0, u1, v0, v1] } } }` (zone utile mesurée ; toute image s'affiche en 16:9). Ne pas éditer à la main |
| `Photo.lua` | Mode photo : `P.StartPhotoMode`, `P.StopPhotoMode`, `P.TogglePhotoOptions` (fonctions ajoutées à la table `Polypode`), cadre sans parent `P.ui.photoFrame`, options `P.ui.photoOptions` (`PolypodePhotoDB` : `hideUI`, `background`, `showName`, `showDetails`, `showPets`), aussi dans le panneau Options → AddOns (locale `BuildSettingsPanel`, à `PLAYER_LOGIN` + 1 image : sous-catégorie « Photo » de `P.optionsCategory` sinon catégorie « Polypode Photo » ; proxys `Settings.RegisterProxySetting` sur les mêmes champs, bouton « Choisir le fond » → `MenuUtil.CreateContextMenu` avec le même générateur `BuildBackgroundMenu`, bouton « Lancer le mode photo »). Cases communes décrites une fois dans `CHECK_OPTIONS` ; la fenêtre du clic droit relit les réglages à chaque ouverture. Intégration : bouton `P.ui.photoButton` par `P.AddTitleButton` (Polypode l'empile avec les autres boutons des compagnons) ; commande via `P.RegisterSlashCommand("photo", ...)` ; `PLAYER_REGEN_DISABLED` ferme le mode photo ; migration unique de `PolypodeCharDB.photo` |
| `tools/` | `loadingscreens.csv` (listfile filtré), `measure_backgrounds.py` → `measures.json`, `gen_backgrounds.py` → `../Backgrounds.lua` (noms français par extension) |

## Dépendances vers Polypode (API publique utilisée)

`P.AddTitleButton`, `P.optionsCategory` (parent du panneau d'options),
`P.RegisterSlashCommand`, `P.ColorClicks` (si présente, Polypode 0.60.0 : descriptions des options), `P.SkinFrame`, `P.SkinDropdown`, `P.SkinCheckBox` (si présents), `P.SkinButton`, `P.UnitNameParts`, `P.JoinSurname`,
`P.GetCharacterStatus`, `P.db.roster`. Toute évolution de ces fonctions dans Polypode doit
rester compatible, ou ce fichier doit suivre.

## Après chaque modification

Appliquer la procédure de `../Polypode/MODULES.md` (« Après chaque modification d'un module »),
sans attendre qu'on le demande : version du `.toc` et du commit, ligne en tête de la section
« Version » du `README.md` et sections d'utilisation, ce fichier (architecture, dépendances),
Polypode si le périmètre change, puis commit et push sur `origin` (https://github.com/Baktov/Polypode-Photo).

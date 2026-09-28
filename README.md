# Polypode Photo

Module **mode photo** de [Polypode](https://github.com/Baktov/polypode), sous forme d'addon
séparé : il se charge ou non comme n'importe quel addon (liste des AddOns de WoW, par
personnage). Désactivé, Polypode fonctionne normalement, sans bouton « Photo » ni commande
`/poly photo`.

---

## Installation

1. Installer d'abord **Polypode** (dépendance obligatoire).
2. Placer le dossier `Polypode_Photo` dans `World of Warcraft/_retail_/Interface/AddOns/`
   (et, pour **WoW Forever**, dans `World of Warcraft/_classic_beta_/Interface/AddOns/`, par
   exemple par une jonction `mklink /J`).
3. Cocher « Polypode Photo » dans la liste des AddOns.

---

## Utilisation

Le bouton **Photo** (barre de titre de la fenêtre Polypode, à gauche de la croix) ou
`/poly photo` affiche **en pied, côte à côte**, chaque membre du groupe (vous compris, 10 modèles
au plus).

- La **molette** sur un personnage le zoome ou le dézoome, et un **clic gauche maintenu** le
  déplace sur l'écran (son nom et ses détails suivent) ; il garde sa place au relâchement. Chaque
  personnage se règle séparément ; tout est remis en place à chaque ouverture.
- **Échap** revient au jeu ; **Impr. écran** fait une capture comme d'habitude.
- Hors combat seulement : le mode photo se ferme de lui-même à l'entrée en combat. WoW n'affiche
  le modèle d'un membre que s'il est à proximité (sinon « hors de vue »).

Les options (mémorisées pour chaque personnage) se règlent à deux endroits, qui montrent les
mêmes valeurs :

- **clic droit** sur le bouton « Photo » : petite fenêtre (Échap ou la croix pour fermer) ;
- **Options → AddOns → Polypode → Photo** (ou « Polypode Photo » si le panneau de Polypode est
  absent) : les mêmes cases, un bouton **Choisir le fond** qui ouvre le même menu de fonds (le
  choix actuel y est coché) et un bouton **Lancer le mode photo**.

Options :

- **Masquer l'interface** (oui par défaut) ;
- **Fond** : voile sombre en dégradé (par défaut), l'un des **168 écrans de chargement** de WoW
  (zones, donjons, raids, champs de bataille, arènes, domaines de classe...), rangés par
  extension de Midnight aux continents, plus un groupe **WoW Forever** (en tête sur ce client),
  ou l'**illustration d'un donjon ou d'un raid** du guide de l'aventurier, rangés par extension
  puis « Donjons » / « Raids » (liste lue dans le guide, donc toujours à jour ; les gouffres n'y
  figurent pas). Toute image remplit l'écran sans être déformée (les bords en trop sont coupés
  au centre) ; les illustrations du guide, petites à l'origine, apparaissent un peu floues ;
- **Afficher le nom des personnages** (oui par défaut), en couleur de classe ;
- **Afficher classe, spé, niveau et niveau d'objet** (oui par défaut) sous le nom. La spé et le
  niveau d'objet des autres membres viennent de leur Polypode (absents sinon) ;
- **Afficher les familiers** (oui par défaut) : le familier présent de chaque membre (chasseur,
  démoniste, chevalier de la mort, mage...) apparaît juste après lui, avec son nom et « Familier
  de ... ».

Les réglages du mode photo de Polypode (versions 0.45 et 0.46, avant la séparation) sont repris
automatiquement au premier chargement.

---

## Écrans de chargement

Aucune API ne liste les écrans de chargement : leur liste (`Backgrounds.lua`) est **générée**
par les outils du dossier `tools/` :

1. `loadingscreens.csv` : lignes « fileID;chemin » du
   [listfile communautaire wowdev](https://github.com/wowdev/wow-listfile), filtrées sur
   `interface/glues/loadingscreens/` ;
2. `measure_backgrounds.py` télécharge chaque image depuis wago.tools et mesure sa zone utile
   (bandes noires retirées) dans `measures.json` (`pip install pillow numpy`) ;
3. `gen_backgrounds.py` écrit `Backgrounds.lua` à partir des mesures et des noms (en français,
   rangés par extension) listés dans le script.

Pour ajouter des écrans (nouvelle extension) : compléter le CSV, remesurer, ajouter les noms
dans `gen_backgrounds.py`, régénérer. Ne jamais deviner un recadrage.

---

## Version

`1.1.1` : bouton ajouté par `P.AddTitleButton` de Polypode 0.49.0 (empilé avec celui de Polypode Quêtes).
`1.1.0` : options aussi dans Options → AddOns → Polypode → Photo.
`1.0.0` : mode photo sorti de Polypode 0.46.1 (options, 168 écrans de chargement, illustrations
du guide, familiers, zoom et déplacement des modèles).

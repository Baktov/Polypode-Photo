-- Polypode Photo: Locales/enUS — textes anglais (clé = texte français du code), repli de toute
-- langue sans traduction propre. Voir Polypode/Locale.lua et MODULES.md (« Langues »).

local _, ns = ...
local P = Polypode
if not P.AddTranslations then
	return
end

P.AddTranslations(ns.L, "enUS", {
	-- Photo.lua
	["Extension %d"] = "Expansion %d",
	["niv. %s"] = "lvl %s",
	["ilvl %s"] = "ilvl %s",
	["Mode photo — clic gauche maintenu : tourner, clic droit maintenu : déplacer, molette : zoomer, Échap pour revenir au jeu, Impr. écran pour une capture"] = "Photo mode — hold left-click: rotate, hold right-click: move, mouse wheel: zoom, Escape to return to the game, Print Screen for a screenshot",
	["(hors de vue)"] = "(out of sight)",
	["Familier de %s"] = "Pet of %s",
	["Mode photo impossible en combat."] = "Photo mode is not possible in combat.",
	["Masquer l'interface"] = "Hide the interface",
	["Masque toute l'interface pendant le mode photo (comme Alt + Z)."] = "Hides the whole interface during photo mode (like Alt + Z).",
	["Afficher le nom des personnages"] = "Show character names",
	["Nom de chaque personnage sous son modèle, en couleur de classe."] = "Name of each character under its model, in class color.",
	["Afficher classe, spé, niveau et niveau d'objet"] = "Show class, spec, level and item level",
	["Ligne de détails sous le nom. La spé et le niveau d'objet des autres membres viennent de leur Polypode."] = "Detail line under the name. The spec and item level of the other members come from their Polypode.",
	["Afficher les familiers (chasseur, démoniste...)"] = "Show pets (hunter, warlock...)",
	["Familier présent de chaque membre, juste après lui, avec « Familier de ... »."] = "Current pet of each member, right after it, with \"Pet of ...\".",
	["Voile sombre (sans image)"] = "Dark veil (no image)",
	["Écrans de chargement"] = "Loading screens",
	["Donjons"] = "Dungeons",
	["Raids"] = "Raids",
	["Options du mode photo"] = "Photo mode options",
	["Fond :"] = "Background:",
	["Photo"] = "Photo",
	["Polypode Photo"] = "Polypode Photo",
	["Fond du mode photo"] = "Photo mode background",
	["Choisir le fond"] = "Choose the background",
	["Voile sombre, écran de chargement (par extension) ou illustration d'un donjon ou d'un raid du guide de l'aventurier. Le choix est coché dans le menu."] = "Dark veil, loading screen (by expansion) or artwork of a dungeon or raid from the Adventure Guide. The choice is checked in the menu.",
	["Mode photo"] = "Photo mode",
	["Lancer le mode photo"] = "Start photo mode",
	["Membres du groupe en pied, côte à côte. Échap pour revenir au jeu."] = "Group members full-length, side by side. Escape to return to the game.",
	["Clic gauche : affiche en pied, côte à côte, chaque membre du groupe (interface masquée selon les options). Échap pour revenir au jeu. Hors combat seulement."] = "Left-click: shows each group member full-length, side by side (interface hidden depending on the options). Escape to return to the game. Out of combat only.",
	["Clic droit : options (interface, fond, nom, détails, familiers)"] = "Right-click: options (interface, background, name, details, pets)",
	["mode photo (membres du groupe en pied, Échap pour revenir)"] = "photo mode (group members full-length, Escape to return)",
})

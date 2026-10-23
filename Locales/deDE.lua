-- Polypode Photo: Locales/deDE — textes en allemand (clé = texte français du code). Voir
-- Polypode/Locale.lua et MODULES.md (« Langues »).

local _, ns = ...
local P = Polypode
if not P.AddTranslations then
	return
end

P.AddTranslations(ns.L, "deDE", {
	-- Photo.lua
	["Extension %d"] = "Erweiterung %d",
	["niv. %s"] = "St. %s",
	["ilvl %s"] = "GS %s",
	["Mode photo — clic gauche maintenu : tourner, clic droit maintenu : déplacer, molette : zoomer, Échap pour revenir au jeu, Impr. écran pour une capture"] = "Fotomodus — linke Maustaste gedrückt: drehen, rechte Maustaste gedrückt: verschieben, Mausrad: zoomen, Esc: zurück zum Spiel, Druck: Screenshot",
	["(hors de vue)"] = "(außer Sicht)",
	["Familier de %s"] = "Begleiter von %s",
	["Mode photo impossible en combat."] = "Fotomodus im Kampf nicht möglich.",
	["Masquer l'interface"] = "Oberfläche ausblenden",
	["Masque toute l'interface pendant le mode photo (comme Alt + Z)."] = "Blendet die gesamte Oberfläche während des Fotomodus aus (wie Alt + Z).",
	["Afficher le nom des personnages"] = "Namen der Charaktere anzeigen",
	["Nom de chaque personnage sous son modèle, en couleur de classe."] = "Name jedes Charakters unter seinem Modell, in Klassenfarbe.",
	["Afficher classe, spé, niveau et niveau d'objet"] = "Klasse, Spezialisierung, Stufe und Gegenstandsstufe anzeigen",
	["Ligne de détails sous le nom. La spé et le niveau d'objet des autres membres viennent de leur Polypode."] = "Detailzeile unter dem Namen. Spezialisierung und Gegenstandsstufe der anderen Mitglieder kommen von ihrem Polypode.",
	["Afficher les familiers (chasseur, démoniste...)"] = "Begleiter anzeigen (Jäger, Hexenmeister...)",
	["Familier présent de chaque membre, juste après lui, avec « Familier de ... »."] = "Aktueller Begleiter jedes Mitglieds, direkt nach ihm, mit »Begleiter von ...«.",
	["Voile sombre (sans image)"] = "Dunkler Schleier (ohne Bild)",
	["Écrans de chargement"] = "Ladebildschirme",
	["Donjons"] = "Dungeons",
	["Raids"] = "Schlachtzüge",
	["Options du mode photo"] = "Optionen des Fotomodus",
	["Fond :"] = "Hintergrund:",
	["Photo"] = "Foto",
	["Polypode Photo"] = "Polypode Foto",
	["Fond du mode photo"] = "Hintergrund des Fotomodus",
	["Choisir le fond"] = "Hintergrund wählen",
	["Voile sombre, écran de chargement (par extension) ou illustration d'un donjon ou d'un raid du guide de l'aventurier. Le choix est coché dans le menu."] = "Dunkler Schleier, Ladebildschirm (nach Erweiterung) oder Illustration eines Dungeons oder Schlachtzugs aus dem Abenteuerführer. Die Auswahl ist im Menü markiert.",
	["Mode photo"] = "Fotomodus",
	["Lancer le mode photo"] = "Fotomodus starten",
	["Membres du groupe en pied, côte à côte. Échap pour revenir au jeu."] = "Gruppenmitglieder in voller Größe, nebeneinander. Esc: zurück zum Spiel.",
	["Clic gauche : affiche en pied, côte à côte, chaque membre du groupe (interface masquée selon les options). Échap pour revenir au jeu. Hors combat seulement."] = "Linksklick: zeigt jedes Gruppenmitglied in voller Größe nebeneinander (Oberfläche je nach Optionen ausgeblendet). Esc: zurück zum Spiel. Nur außerhalb des Kampfes.",
	["Clic droit : options (interface, fond, nom, détails, familiers)"] = "Rechtsklick: Optionen (Oberfläche, Hintergrund, Name, Details, Begleiter)",
	["mode photo (membres du groupe en pied, Échap pour revenir)"] = "Fotomodus (Gruppenmitglieder in voller Größe, Esc: zurück)",
})

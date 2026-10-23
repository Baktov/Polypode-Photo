-- Polypode Photo: Locales/itIT — textes en italien (clé = texte français du code). Voir
-- Polypode/Locale.lua et MODULES.md (« Langues »).

local _, ns = ...
local P = Polypode
if not P.AddTranslations then
	return
end

P.AddTranslations(ns.L, "itIT", {
	-- Photo.lua
	["Extension %d"] = "Espansione %d",
	["niv. %s"] = "liv. %s",
	["ilvl %s"] = "liv. ogg. %s",
	["Mode photo — clic gauche maintenu : tourner, clic droit maintenu : déplacer, molette : zoomer, Échap pour revenir au jeu, Impr. écran pour une capture"] = "Modalità foto — clic sinistro tenuto premuto: ruota, clic destro tenuto premuto: sposta, rotellina: zoom, Esc per tornare al gioco, Stamp per uno screenshot",
	["(hors de vue)"] = "(fuori vista)",
	["Familier de %s"] = "Famiglio di %s",
	["Mode photo impossible en combat."] = "Modalità foto impossibile in combattimento.",
	["Masquer l'interface"] = "Nascondi l'interfaccia",
	["Masque toute l'interface pendant le mode photo (comme Alt + Z)."] = "Nasconde tutta l'interfaccia durante la modalità foto (come Alt + Z).",
	["Afficher le nom des personnages"] = "Mostra il nome dei personaggi",
	["Nom de chaque personnage sous son modèle, en couleur de classe."] = "Nome di ogni personaggio sotto il suo modello, nel colore della classe.",
	["Afficher classe, spé, niveau et niveau d'objet"] = "Mostra classe, specializzazione, livello e livello oggetto",
	["Ligne de détails sous le nom. La spé et le niveau d'objet des autres membres viennent de leur Polypode."] = "Riga di dettagli sotto il nome. La specializzazione e il livello oggetto degli altri membri arrivano dal loro Polypode.",
	["Afficher les familiers (chasseur, démoniste...)"] = "Mostra i famigli (cacciatore, stregone...)",
	["Familier présent de chaque membre, juste après lui, avec « Familier de ... »."] = "Famiglio attuale di ogni membro, subito dopo di lui, con «Famiglio di ...».",
	["Voile sombre (sans image)"] = "Velo scuro (senza immagine)",
	["Écrans de chargement"] = "Schermate di caricamento",
	["Donjons"] = "Spedizioni",
	["Raids"] = "Incursioni",
	["Options du mode photo"] = "Opzioni della modalità foto",
	["Fond :"] = "Sfondo:",
	["Photo"] = "Foto",
	["Polypode Photo"] = "Polypode Foto",
	["Fond du mode photo"] = "Sfondo della modalità foto",
	["Choisir le fond"] = "Scegli lo sfondo",
	["Voile sombre, écran de chargement (par extension) ou illustration d'un donjon ou d'un raid du guide de l'aventurier. Le choix est coché dans le menu."] = "Velo scuro, schermata di caricamento (per espansione) o illustrazione di una spedizione o di un'incursione della guida dell'avventuriero. La scelta è spuntata nel menu.",
	["Mode photo"] = "Modalità foto",
	["Lancer le mode photo"] = "Avvia la modalità foto",
	["Membres du groupe en pied, côte à côte. Échap pour revenir au jeu."] = "Membri del gruppo a figura intera, fianco a fianco. Esc per tornare al gioco.",
	["Clic gauche : affiche en pied, côte à côte, chaque membre du groupe (interface masquée selon les options). Échap pour revenir au jeu. Hors combat seulement."] = "Clic sinistro: mostra ogni membro del gruppo a figura intera, fianco a fianco (interfaccia nascosta secondo le opzioni). Esc per tornare al gioco. Solo fuori dal combattimento.",
	["Clic droit : options (interface, fond, nom, détails, familiers)"] = "Clic destro: opzioni (interfaccia, sfondo, nome, dettagli, famigli)",
	["mode photo (membres du groupe en pied, Échap pour revenir)"] = "modalità foto (membri del gruppo a figura intera, Esc per tornare)",
})

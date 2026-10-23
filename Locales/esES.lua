-- Polypode Photo: Locales/esES — textes en espagnol (clé = texte français du code). Voir
-- Polypode/Locale.lua et MODULES.md (« Langues »).

local _, ns = ...
local P = Polypode
if not P.AddTranslations then
	return
end

P.AddTranslations(ns.L, "esES", {
	-- Photo.lua
	["Extension %d"] = "Expansión %d",
	["niv. %s"] = "niv. %s",
	["ilvl %s"] = "nvo %s",
	["Mode photo — clic gauche maintenu : tourner, clic droit maintenu : déplacer, molette : zoomer, Échap pour revenir au jeu, Impr. écran pour une capture"] = "Modo foto — clic izquierdo mantenido: girar, clic derecho mantenido: mover, rueda: zoom, Esc para volver al juego, Impr Pant para una captura",
	["(hors de vue)"] = "(fuera de la vista)",
	["Familier de %s"] = "Mascota de %s",
	["Mode photo impossible en combat."] = "Modo foto imposible en combate.",
	["Masquer l'interface"] = "Ocultar la interfaz",
	["Masque toute l'interface pendant le mode photo (comme Alt + Z)."] = "Oculta toda la interfaz durante el modo foto (como Alt + Z).",
	["Afficher le nom des personnages"] = "Mostrar el nombre de los personajes",
	["Nom de chaque personnage sous son modèle, en couleur de classe."] = "Nombre de cada personaje bajo su modelo, en color de clase.",
	["Afficher classe, spé, niveau et niveau d'objet"] = "Mostrar clase, especialización, nivel y nivel de objeto",
	["Ligne de détails sous le nom. La spé et le niveau d'objet des autres membres viennent de leur Polypode."] = "Línea de detalles bajo el nombre. La especialización y el nivel de objeto de los demás miembros vienen de su Polypode.",
	["Afficher les familiers (chasseur, démoniste...)"] = "Mostrar las mascotas (cazador, brujo...)",
	["Familier présent de chaque membre, juste après lui, avec « Familier de ... »."] = "Mascota actual de cada miembro, justo después de él, con «Mascota de ...».",
	["Voile sombre (sans image)"] = "Velo oscuro (sin imagen)",
	["Écrans de chargement"] = "Pantallas de carga",
	["Donjons"] = "Mazmorras",
	["Raids"] = "Bandas",
	["Options du mode photo"] = "Opciones del modo foto",
	["Fond :"] = "Fondo:",
	["Photo"] = "Foto",
	["Polypode Photo"] = "Polypode Foto",
	["Fond du mode photo"] = "Fondo del modo foto",
	["Choisir le fond"] = "Elegir el fondo",
	["Voile sombre, écran de chargement (par extension) ou illustration d'un donjon ou d'un raid du guide de l'aventurier. Le choix est coché dans le menu."] = "Velo oscuro, pantalla de carga (por expansión) o ilustración de una mazmorra o una banda de la guía de aventura. La elección aparece marcada en el menú.",
	["Mode photo"] = "Modo foto",
	["Lancer le mode photo"] = "Iniciar el modo foto",
	["Membres du groupe en pied, côte à côte. Échap pour revenir au jeu."] = "Miembros del grupo de cuerpo entero, uno al lado del otro. Esc para volver al juego.",
	["Clic gauche : affiche en pied, côte à côte, chaque membre du groupe (interface masquée selon les options). Échap pour revenir au jeu. Hors combat seulement."] = "Clic izquierdo: muestra a cada miembro del grupo de cuerpo entero, uno al lado del otro (interfaz oculta según las opciones). Esc para volver al juego. Solo fuera de combate.",
	["Clic droit : options (interface, fond, nom, détails, familiers)"] = "Clic derecho: opciones (interfaz, fondo, nombre, detalles, mascotas)",
	["mode photo (membres du groupe en pied, Échap pour revenir)"] = "modo foto (miembros del grupo de cuerpo entero, Esc para volver)",
})

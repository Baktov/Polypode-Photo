-- Polypode Photo: Locales/ptBR — textes en portugais du Brésil (clé = texte français du code). Voir
-- Polypode/Locale.lua et MODULES.md (« Langues »).

local _, ns = ...
local P = Polypode
if not P.AddTranslations then
	return
end

P.AddTranslations(ns.L, "ptBR", {
	-- Photo.lua
	["Extension %d"] = "Expansão %d",
	["niv. %s"] = "nív. %s",
	["ilvl %s"] = "nív. item %s",
	["Mode photo — clic gauche maintenu : tourner, clic droit maintenu : déplacer, molette : zoomer, Échap pour revenir au jeu, Impr. écran pour une capture"] = "Modo foto — botão esquerdo pressionado: girar, botão direito pressionado: mover, roda do mouse: zoom, Esc para voltar ao jogo, Print Screen para uma captura",
	["(hors de vue)"] = "(fora de vista)",
	["Familier de %s"] = "Ajudante de %s",
	["Mode photo impossible en combat."] = "Modo foto impossível em combate.",
	["Masquer l'interface"] = "Ocultar a interface",
	["Masque toute l'interface pendant le mode photo (comme Alt + Z)."] = "Oculta toda a interface durante o modo foto (como Alt + Z).",
	["Afficher le nom des personnages"] = "Mostrar o nome dos personagens",
	["Nom de chaque personnage sous son modèle, en couleur de classe."] = "Nome de cada personagem embaixo do modelo, na cor da classe.",
	["Afficher classe, spé, niveau et niveau d'objet"] = "Mostrar classe, especialização, nível e nível de item",
	["Ligne de détails sous le nom. La spé et le niveau d'objet des autres membres viennent de leur Polypode."] = "Linha de detalhes embaixo do nome. A especialização e o nível de item dos outros membros vêm do Polypode deles.",
	["Afficher les familiers (chasseur, démoniste...)"] = "Mostrar os ajudantes (caçador, bruxo...)",
	["Familier présent de chaque membre, juste après lui, avec « Familier de ... »."] = "Ajudante atual de cada membro, logo depois dele, com \"Ajudante de ...\".",
	["Voile sombre (sans image)"] = "Véu escuro (sem imagem)",
	["Écrans de chargement"] = "Telas de carregamento",
	["Donjons"] = "Masmorras",
	["Raids"] = "Raides",
	["Options du mode photo"] = "Opções do modo foto",
	["Fond :"] = "Fundo:",
	["Photo"] = "Foto",
	["Polypode Photo"] = "Polypode Foto",
	["Fond du mode photo"] = "Fundo do modo foto",
	["Choisir le fond"] = "Escolher o fundo",
	["Voile sombre, écran de chargement (par extension) ou illustration d'un donjon ou d'un raid du guide de l'aventurier. Le choix est coché dans le menu."] = "Véu escuro, tela de carregamento (por expansão) ou ilustração de uma masmorra ou raide do guia de aventura. A escolha fica marcada no menu.",
	["Mode photo"] = "Modo foto",
	["Lancer le mode photo"] = "Iniciar o modo foto",
	["Membres du groupe en pied, côte à côte. Échap pour revenir au jeu."] = "Membros do grupo de corpo inteiro, lado a lado. Esc para voltar ao jogo.",
	["Clic gauche : affiche en pied, côte à côte, chaque membre du groupe (interface masquée selon les options). Échap pour revenir au jeu. Hors combat seulement."] = "Clique esquerdo: mostra cada membro do grupo de corpo inteiro, lado a lado (interface oculta conforme as opções). Esc para voltar ao jogo. Somente fora de combate.",
	["Clic droit : options (interface, fond, nom, détails, familiers)"] = "Clique direito: opções (interface, fundo, nome, detalhes, ajudantes)",
	["mode photo (membres du groupe en pied, Échap pour revenir)"] = "modo foto (membros do grupo de corpo inteiro, Esc para voltar)",
})

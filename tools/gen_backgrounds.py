# Génère ../Backgrounds.lua à partir des mesures (measures.json) et des noms ci-dessous.
import json, os

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, '..', 'Backgrounds.lua')
measures = {m['id']: m for m in json.load(open(os.path.join(HERE, 'measures.json'))) if 'error' not in m}

GROUPS = [
    ("Midnight", [
        (7578182, "Assaut sur Quel'Danas"), (7266211, "Flèche de Coursevent"),
        (7439363, "Terrasse des Magistères"), (7266209, "Rangée du Meurtre"),
        (7266210, "Épreuve de valeur"), (7322720, "Collines de Maisara"),
        (7354407, "Floraison lumineuse"), (7551421, "Pylône du Vide"),
        (7956025, "Autel des Crocs"), (7266212, "Arcantina"), (7385003, "Harandar"),
        (7488404, "Zul'Aman"), (8195041, "Zul'Aman (2)"), (7507883, "Tempête du Vide"),
        (7488403, "Flèche du Vide (raid)"), (7454099, "Puits noir (raid)"),
        (7551422, "Faille d'Aln (raid)"), (8039537, "Ulatek (raid)"),
        (8269724, "Kithix (raid)"), (7864815, "Fongariens (raid)"),
        (8122708, "Grotte liée"), (7488402, "Champ de bataille de la Tempête du Vide"),
        (7439364, "Arène de la Balafre du Vide"), (7765534, "Site rituel : Trône brisé"),
        (7765536, "Site rituel : Pointe de l'Échine-Dague"),
        (7765537, "Site rituel : Floraison aveuglante"),
        (7816620, "Portail du Vide : Naigtal"), (7816621, "Portail du Vide : Val"),
    ]),
    ("The War Within", [
        (5899485, "Khaz Algar"), (5932344, "Sainte-Chute"), (6225617, "Île des Sirènes"),
        (6392587, "Terremine"), (6918681, "K'aresh"), (5763550, "La Colonie"),
        (5779652, "Le Brise-Aube"), (5794590, "Faille de Sombreflamme"),
        (5795799, "La Voûte de pierre"), (5863045, "Hydromellerie de Brassecendre"),
        (5874076, "Prieuré de la Flamme sacrée"), (5887871, "Cité des Fils"),
        (5898878, "Ara-Kara, la cité des Échos"), (6392586, "Opération : Vanne"),
        (6921876, "Écodôme Al'dani"), (5791579, "Palais de Nerub-ar (raid)"),
        (6404488, "Libération de Terremine (raid)"), (6996937, "Manaforge Oméga (raid)"),
        (6647403, "Arène de Terremine"), (5828239, "Champ de bataille des Terrestres"),
        (6860204, "Promenade dans les récits"), (7367528, "Logis (intérieur)"),
        (7377860, "Logis : forêt d'Elwynn"), (7490877, "Logis : Orgrimmar"),
    ]),
    ("Dragonflight", [
        (4669853, "Îles aux Dragons"), (5344997, "Rêve d'émeraude"),
        (4550300, "Bassins de vie rubis"), (4550301, "Académie d'Algeth'ar"),
        (4566643, "Caveau d'Azur"), (4566644, "Uldaman : l'héritage de Tyr"),
        (4661969, "Salles de l'Imprégnation"), (4684456, "L'Offensive nokhud"),
        (4691725, "Neltharus"), (4697004, "Creux des Fougerobes"),
        (5211661, "Aube de l'Infini"), (4663453, "Caveau des Incarnations (raid)"),
        (5140749, "Aberrus, le Creuset d'ombre (raid)"),
        (5409944, "Amirdrassil, l'Espoir du Rêve (raid)"), (4731628, "Arène des centaures"),
    ]),
    ("Shadowlands", [
        (3807424, "Ombreterre"), (4370748, "Zereth Mortis"), (3760516, "Tourment"),
        (3565435, "Profondeurs Sanguines"), (3602023, "Malepeste"),
        (3615757, "Sillage nécrotique"), (3621966, "Flèches de l'Ascension"),
        (3638598, "L'Autre côté"), (3642564, "Brumes de Tirna Scithe"),
        (3685314, "Théâtre de la Souffrance"), (3721473, "Salles de l'Expiation"),
        (4179243, "Tazavesh, le marché dissimulé"), (3582016, "Château Nathria (raid)"),
        (4178070, "Sanctum de Domination (raid)"),
        (4391868, "Sépulcre des Fondateurs (raid)"), (3622958, "Arène du Bastion"),
        (4370747, "Colisée de Maldraxxus"), (4391867, "Arène de l'Énigme"),
        (3683676, "Île des Exilés"), (3635651, "Citadelle de Sombremaul"),
    ]),
    ("Battle for Azeroth", [
        (2142255, "Kul Tiras : rade de Tiragarde"), (1968998, "Dazar'alor (extérieur)"),
        (2000399, "Dazar'alor (intérieur)"), (3008537, "Nazjatar"), (3005251, "Mécagone"),
        (2991615, "Mécagone (ville)"), (1969119, "Tol Dagor"), (1984118, "Manoir Malvoie"),
        (2016712, "Le Filon"), (2103733, "Sanctuaire des Tempêtes"),
        (2175832, "Les Tréfonds Putrides"), (2061464, "Tunnels serpentins"),
        (2530069, "Bataille de Dazar'alor (raid)"), (2494959, "Creuset des Tempêtes (raid)"),
        (3006757, "Palais Éternel (raid)"), (3170732, "Ny'alotha (raid)"),
        (3195545, "Visions de N'Zoth"), (2103696, "Front de guerre d'Arathi"),
        (1780110, "Victoire désespérée (Lordaeron)"), (1865666, "Rivage bouillonnant"),
        (2820825, "Bassin Arathi"), (2827086, "Goulet des Chanteguerres"),
        (2033044, "Arène de l'Alliance"), (2999376, "Arène de Mécagone"),
    ]),
    ("Legion", [
        (1446595, "Îles Brisées"), (1719332, "Krokuun"), (1719502, "Mac'Aree"),
        (1303234, "Mardum"), (1389449, "Caveau des Gardiennes"),
        (1389212, "Fourré Sombrecœur"), (1391080, "Gueule des Âmes"),
        (1399464, "Bastion du Freux"), (1445178, "Repaire de Neltharion"),
        (1454826, "Salles des Valeureux"), (1496467, "Fort Pourpre"),
        (1395129, "Catacombes de Suramar"), (1616802, "Cathédrale de la Nuit éternelle"),
        (1717768, "Siège du Triumvirat"), (1394867, "Cauchemar d'émeraude (raid)"),
        (1615560, "Tombe de Sargeras (raid)"), (1717773, "Antorus, le Trône ardent (raid)"),
        (1476725, "Voie du Rêve d'émeraude"), (1454533, "Chapelle de l'Espoir de Lumière"),
        (1672553, "Scénario de Chromie"), (1395043, "Niskara"),
        (1375895, "Domaine de classe : moine"), (1379024, "Domaine de classe : chasseur"),
        (1382383, "Domaine de classe : chevalier de la mort"),
        (1414064, "Domaine de classe : chevalier de la mort (2)"),
        (1389211, "Domaine de classe : chasseur de démons"),
        (1394926, "Domaine de classe : démoniste"), (1412500, "Domaine de classe : prêtre"),
        (1417745, "Domaine de classe : druide"), (1389214, "Artefact : chasseur de démons"),
        (1405662, "Artefact : chaman"), (1451468, "Arène du Bastion du Freux"),
        (1472862, "Arène de Val'sharah"), (1536931, "Arène de Nagrand"),
        (1568178, "Arène des Tranchantes"),
    ]),
    ("Warlords of Draenor", [(1035009, "Draenor")]),
    ("Mists of Pandaria", [(651994, "Pandarie")]),
    ("Continents", [
        (343001, "Royaumes de l'Est"), (447132, "Royaumes de l'Est (2)"),
        (1035011, "Royaumes de l'Est (3)"), (1498773, "Royaumes de l'Est (4)"),
        (343002, "Kalimdor"), (447133, "Kalimdor (2)"), (1035013, "Kalimdor (3)"),
        (1498775, "Kalimdor (4)"), (343004, "Outreterre"), (447135, "Outreterre (2)"),
        (343003, "Norfendre"), (447134, "Norfendre (2)"),
    ]),
    ("WoW Forever", [
        (7963776, "Royaumes de l'Est"), (7963779, "Kalimdor"), (7963775, "Dalaran"),
        (7963781, "Ancienne Forgefer"), (7963782, "Ruines de Lordaeron"),
        (7963777, "Fouilles"), (7950679, "Île de Zephra"), (8423398, "Îles Sombrelance"),
    ]),
]

def lua_str(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"') + '"'

lines = [
    "-- Polypode Photo: Backgrounds — écrans de chargement proposés en fond du mode photo",
    "",
    "local _, ns = ...",
    "",
    "-- Données générées par tools/gen_backgrounds.py (voir README) : aucune API ne liste les écrans de",
    "-- chargement. Identifiants de fichier tirés du listfile communautaire wowdev (dossier",
    "-- Interface/Glues/LoadingScreens), zone utile mesurée sur chaque image (bandes noires retirées).",
    "-- Chaque écran s'affiche en 16:9 quel que soit le format de sa texture.",
    "-- ns.LOADING_SCREENS = { { name = extension, items = { { nom, fichier [, u0, u1, v0, v1] } } } }",
    "ns.LOADING_SCREENS = {",
]
count = 0
for name, items in GROUPS:
    lines.append("\t{")
    lines.append(f"\t\tname = {lua_str(name)},")
    lines.append("\t\titems = {")
    for fid, label in items:
        m = measures.get(fid)
        if not m:
            raise SystemExit(f"pas de mesure pour {fid}")
        crop = (m['u0'], m['u1'], m['v0'], m['v1'])
        extra = "" if crop == (0, 1, 0, 1) else ", " + ", ".join(str(c) for c in crop)
        lines.append(f"\t\t\t{{ {lua_str(label)}, {fid}{extra} }},")
        count += 1
    lines.append("\t\t},")
    lines.append("\t},")
lines.append("}")
open(OUT, 'w', encoding='utf-8', newline='\n').write("\n".join(lines) + "\n")
print(count, "écrans écrits")

# Polypode Photo

*Version française : [README.md](README.md)*

**Photo mode** module of [Polypode](https://github.com/Baktov/polypode), as a separate addon: it is
enabled or not like any addon (WoW AddOns list, per character). When disabled, Polypode works
normally, with no "Photo" button or `/poly photo` command.

> **Languages**: French, English, German, Spanish, Italian and Brazilian Portuguese, following the
> language chosen in Polypode (option "Langue / Language"). The translations were made with the help
> of Claude, Anthropic's AI: feedback from native speakers is very welcome
> ([GitHub issue](https://github.com/Baktov/Polypode-Photo/issues)).

---

## Installation

1. Install **Polypode** first (required dependency).
2. Put the `Polypode_Photo` folder in `World of Warcraft/_retail_/Interface/AddOns/`
   (and, for **WoW Forever**, in `World of Warcraft/_forever_/Interface/AddOns/`).
3. Enable "Polypode Photo" in the AddOns list.

---

## Usage

The **Photo** button (title bar of the Polypode window, left of the close button) or `/poly photo`
shows **full length, side by side**, each group member (you included, 10 models at most).

- Characters show at **75%** of their full-length size, facing you.
- On a character: the **mouse wheel** zooms in or out, **holding the left button** turns them
  around (dragging left or right), **holding the right button** moves them anywhere on the screen
  (their name and details follow). They keep their place and facing on release. Each character is
  set separately; everything is reset at each opening.
- **Escape** goes back to the game; **Print Screen** takes a screenshot as usual.
- Out of combat only: photo mode closes by itself when entering combat. WoW only shows a member's
  model if they are nearby (otherwise "(out of sight)").

The options (remembered for each character) are set in two places, which show the same values:

- **right-click** on the "Photo" button: small window (Escape or the close button to close it);
- **Options > AddOns > Polypode > Photo** (or "Polypode Photo" if the Polypode panel is missing):
  the same boxes, a **Choose the background** button that opens the same background menu (the
  current choice is checked) and a **Start photo mode** button.

Options:

- **Hide the interface** (yes by default);
- **Background**: dark gradient veil (default), one of WoW's **168 loading screens** (zones,
  dungeons, raids, battlegrounds, arenas, class halls...), filed by expansion from Midnight to the
  continents, plus a **WoW Forever** group (first on that client), or the **artwork of a dungeon or
  raid** from the Adventure Guide, filed by expansion then "Dungeons" / "Raids" (list read from the
  guide, so always up to date; delves are not in it). Every image fills the screen without being
  distorted (extra edges are cut, centered); the guide artworks, small to begin with, look a bit
  blurry. In languages other than French, loading screens show their English names;
- **Show character names** (yes by default), in class color;
- **Show class, spec, level and item level** (yes by default) under the name. The spec and item
  level of the other members come from their Polypode (missing otherwise);
- **Show pets (hunter, warlock...)** (yes by default): each member's current pet (hunter, warlock,
  death knight, mage...) appears right after them, with its name and "Pet of ...".

---

## Loading screens

No API lists the loading screens: their list (`Backgrounds.lua`) is **generated** by the tools in
the `tools/` folder:

1. `loadingscreens.csv`: "fileID;path" lines of the
   [wowdev community listfile](https://github.com/wowdev/wow-listfile), filtered on
   `interface/glues/loadingscreens/`;
2. `measure_backgrounds.py` downloads each image from wago.tools and measures its useful area
   (black bars removed) into `measures.json` (`pip install pillow numpy`);
3. `gen_backgrounds.py` writes `Backgrounds.lua` from the measures and the names (in French, filed
   by expansion) listed in the script.

To add screens (new expansion): complete the CSV, measure again, add the names in
`gen_backgrounds.py` (and their English names in `BackgroundNames.lua`), generate again. Never
guess a crop.

---

## Languages

Polypode Photo follows the language chosen in Polypode ("Langue / Language" option,
`/poly language`), by default the game's: French, English, German, Spanish, Italian or Brazilian
Portuguese (English for any other language). Choosing the language requires Polypode 2.9; with an
older Polypode, the module stays in French. The `/poly photo` command keeps its name.

---

## Versions

The full version history is in the [French README](README.md#version).

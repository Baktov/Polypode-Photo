# Mesure la zone utile (sans bandes noires) des écrans de chargement retenus.
# Entrée : loadingscreens.csv (lignes « fileID;chemin » du listfile communautaire wowdev,
# filtrées sur interface/glues/loadingscreens/). Sortie : measures.json.
# Dépendances : pip install pillow numpy. Images téléchargées depuis wago.tools, non gardées.
import csv, io, json, os, re, sys, urllib.request
from concurrent.futures import ThreadPoolExecutor
from PIL import Image
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
rows = []
for line in open(os.path.join(HERE, 'loadingscreens.csv'), encoding='utf-8'):
    fid, path = line.strip().split(';', 1)
    rel = path[len('interface/glues/loadingscreens/'):]
    if not rel.endswith('.blp'):
        continue
    if 'logo' in rel or 'dynamicelements' in rel or rel.startswith('skins/'):
        continue
    folder = rel.split('/')[0] if '/' in rel else ''
    if folder == '' and 'wide' not in rel:
        continue  # anciens écrans 4:3 : doublons des versions larges
    rows.append((int(fid), rel, folder))

def measure(item):
    fid, rel, folder = item
    try:
        req = urllib.request.Request(f'https://wago.tools/api/casc/{fid}', headers={'User-Agent': 'curl/8.4.0'})
        data = urllib.request.urlopen(req, timeout=120).read()
        im = Image.open(io.BytesIO(data)).convert('RGB')
    except Exception as e:
        return {'id': fid, 'file': rel, 'folder': folder, 'error': str(e)}
    w, h = im.size
    small = np.asarray(im.resize((256, max(1, round(256 * h / w)))), dtype=np.float32)
    lum = small.mean(axis=2)
    rows_ok = np.where(lum.mean(axis=1) > 10)[0]
    cols_ok = np.where(lum.mean(axis=0) > 10)[0]
    sh, sw = lum.shape
    if len(rows_ok) == 0 or len(cols_ok) == 0:
        return {'id': fid, 'file': rel, 'folder': folder, 'error': 'vide'}
    v0, v1 = rows_ok[0] / sh, (rows_ok[-1] + 1) / sh
    u0, u1 = cols_ok[0] / sw, (cols_ok[-1] + 1) / sw
    return {'id': fid, 'file': rel, 'folder': folder, 'w': w, 'h': h,
            'u0': round(u0, 4), 'u1': round(u1, 4), 'v0': round(v0, 4), 'v1': round(v1, 4),
            'cw': round((u1 - u0) * w), 'ch': round((v1 - v0) * h)}

with ThreadPoolExecutor(4) as pool:
    results = list(pool.map(measure, rows))
json.dump(results, open(os.path.join(HERE, 'measures.json'), 'w'), indent=1)
ok = [r for r in results if 'error' not in r]
print(len(rows), 'retenus,', len(ok), 'mesurés,', len(results) - len(ok), 'erreurs')
for r in results:
    if 'error' in r:
        print('ERREUR', r['id'], r['file'], r['error'])

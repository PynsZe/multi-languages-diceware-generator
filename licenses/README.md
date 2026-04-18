# License Texts

This directory contains (or should contain) the full text of every
license referenced in [`../NOTICES.md`](../NOTICES.md).

## Files in this directory

- **`Reinhold-EN.txt`** — Full notice for the English Diceware word list
  (reproduced verbatim from the original).

## Files you must download

Because this repository does not redistribute the full text of standard
copyleft licenses (and because those texts must match the canonical
versions exactly), please download the following files from their
official sources and place them in this directory:

### `GPL-3.0.txt` — GNU General Public License v3.0

- Canonical URL: https://www.gnu.org/licenses/gpl-3.0.txt
- Applies to: `wordlists/diceware_it.txt`

```sh
curl -L -o licenses/GPL-3.0.txt https://www.gnu.org/licenses/gpl-3.0.txt
```

### `GFDL-1.3.txt` — GNU Free Documentation License v1.3

- Canonical URL: https://www.gnu.org/licenses/fdl-1.3.txt
- Applies to: `wordlists/diceware_es.txt`
- Note: the Spanish list was originally released under GFDL 1.1 "or any
  later version," so GFDL 1.3 is an acceptable choice.

```sh
curl -L -o licenses/GFDL-1.3.txt https://www.gnu.org/licenses/fdl-1.3.txt
```

### `CC-BY-3.0.txt` — Creative Commons Attribution 3.0

- Canonical URL: https://creativecommons.org/licenses/by/3.0/legalcode.txt
- Applies to: `wordlists/diceware_fr.txt`

```sh
curl -L -o licenses/CC-BY-3.0.txt https://creativecommons.org/licenses/by/3.0/legalcode.txt
```

### `CC-BY-SA-4.0.txt` — Creative Commons Attribution-ShareAlike 4.0

- Canonical URL: https://creativecommons.org/licenses/by-sa/4.0/legalcode.txt
- Applies to: `wordlists/diceware_jp.txt`
- Note: the JMdict/EDRDG licence page states "Creative Commons
  Attribution-ShareAlike Licence (V4.0)"; see
  https://www.edrdg.org/edrdg/licence.html

```sh
curl -L -o licenses/CC-BY-SA-4.0.txt https://creativecommons.org/licenses/by-sa/4.0/legalcode.txt
```

## Quick one-liner to download all four

```sh
cd licenses && \
  curl -L -o GPL-3.0.txt       https://www.gnu.org/licenses/gpl-3.0.txt && \
  curl -L -o GFDL-1.3.txt      https://www.gnu.org/licenses/fdl-1.3.txt && \
  curl -L -o CC-BY-3.0.txt     https://creativecommons.org/licenses/by/3.0/legalcode.txt && \
  curl -L -o CC-BY-SA-4.0.txt  https://creativecommons.org/licenses/by-sa/4.0/legalcode.txt
```

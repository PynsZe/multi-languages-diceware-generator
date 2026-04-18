# Licensing

This project's own source code is licensed under **[your choice — e.g.,
MIT, GPL-3.0]**. See the `LICENSE` file.

The project **bundles third-party Diceware word lists** under various
licenses. Each list is loaded as a separate data file at runtime and
retains its original license. See [`NOTICES.md`](NOTICES.md) for full
attribution and per-list license details. The full text of every
referenced license is included in the [`licenses/`](licenses/) directory.

## Summary of bundled word list licenses

| Word list | License | Notes |
|-----------|---------|-------|
| Italian (`diceware_it.txt`) | GPL | Copyleft |
| English (`diceware_en.txt`) | Custom | **Non-commercial only** |
| French (`diceware_fr.txt`) | CC-BY-3.0 | Attribution required |
| Spanish (`diceware_es.txt`) | GFDL 1.1+ | Copyleft doc license |
| Japanese (`diceware_jp.txt`) | CC-BY-SA | Attribution + ShareAlike |

> ⚠️ **Important:** Because the bundled English word list (Reinhold)
> permits only **non-commercial** distribution, redistribution of this
> project as a whole — while it includes that file — is limited to
> non-commercial use. To release a commercially usable version, remove
> `wordlists/diceware_en.txt` from the distribution.

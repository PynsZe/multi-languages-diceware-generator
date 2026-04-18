# Multi-Language Diceware Generator

A collection of Diceware word lists in multiple languages, along with a utility to format raw word lists into the standard Diceware format.

## What is Diceware?

[Diceware](https://theworld.com/~reinhold/diceware.html) is a method for generating strong, memorable passphrases. You roll physical dice and look up the resulting number in a word list — each possible 5-dice roll (11111–66666) maps to a unique word. A passphrase of 5–6 words provides strong entropy while remaining easier to remember than a random string of characters.

This project provides pre-formatted Diceware word lists in 5 languages, ready to be used in any Diceware-compatible password generator.

## Supported Languages

| Language | File | License |
|----------|------|---------|
| English  | `wordlists/diceware_EN.txt` | Custom (non-commercial only) |
| French   | `wordlists/diceware_FR.txt` | CC-BY-3.0 |
| Italian  | `wordlists/diceware_IT.txt` | GPL-3.0 |
| Spanish  | `wordlists/diceware_SP.txt` | GFDL 1.1+ |
| Japanese | `wordlists/diceware_JP.txt` | CC-BY-SA 4.0 |

Each word list contains exactly 7,776 entries (6^5), one for each possible combination of five dice rolls.

## Word List Format

Each line in a word list file has the format:

```
DICEROLL<TAB>WORD
```

Example (English):
```
11111	a
11112	a&p
11113	a's
...
66666	@
```

The dice roll is a 5-digit number where each digit is between 1 and 6.

## Requirements

- **To use the word lists directly:** No requirements — the files in `wordlists/` are ready to use.
- **To run the formatter (`format.go`):** [Go](https://go.dev/dl/) 1.11 or later.

## How to Use

### Using the word lists

The word lists in the `wordlists/` directory can be used directly in any application or script:

```bash
# Count entries in a word list
wc -l wordlists/diceware_EN.txt

# Look up a word for dice roll 34256
grep '^34256' wordlists/diceware_EN.txt

# Pick a random word (simulating a dice roll)
shuf -n 1 wordlists/diceware_EN.txt
```

### Generating a passphrase manually

1. Roll 5 dice (or one die 5 times) to get a 5-digit number, e.g. `3`, `4`, `2`, `5`, `6` → `34256`.
2. Look up the number in your chosen word list.
3. Repeat 5–6 times to build your passphrase.

### Using the word list formatter

If you have a raw word list and want to convert it to Diceware format:

1. Place your raw word list data in `raw.txt`.
2. Edit the `language` variable at the top of `format.go` to set the target language code (e.g. `"FR"`, `"EN"`, `"IT"`).
3. Run the formatter:

```bash
go run format.go
```

The formatted output will be written to `wordlist/diceware_<LANGUAGE>.txt`.

**Raw input format expected by the formatter:**

```
ROLL1 WORD1 ROLL2 WORD2 ROLL3 WORD3 ...
```

Multiple entries per line, separated by spaces, alternating between dice roll and word.

## Project Structure

```
.
├── wordlists/           # Pre-formatted Diceware word list files
│   ├── diceware_EN.txt  # English
│   ├── diceware_FR.txt  # French
│   ├── diceware_IT.txt  # Italian
│   ├── diceware_JP.txt  # Japanese
│   └── diceware_SP.txt  # Spanish
├── licenses/            # License texts and attributions for bundled word lists
├── format.go            # Go utility to convert raw word lists to Diceware format
├── raw.txt              # Input file for the formatter (fill with raw data)
├── NOTICES.md           # Full third-party attribution details
└── README.md            # This file
```

## Licensing

This project's own source code is licensed under **[your choice — e.g., MIT, GPL-3.0]**. See the `LICENSE` file.

The project **bundles third-party Diceware word lists** under various licenses. Each list is kept as a separate data file and retains its original license. See [`NOTICES.md`](NOTICES.md) for full attribution and per-list license details. The full text of every referenced license is included in the [`licenses/`](licenses/) directory.

### Summary of bundled word list licenses

| Word list | License | Notes |
|-----------|---------|-------|
| Italian (`diceware_IT.txt`)  | GPL-3.0    | Copyleft |
| English (`diceware_EN.txt`)  | Custom     | **Non-commercial only** |
| French (`diceware_FR.txt`)   | CC-BY-3.0  | Attribution required |
| Spanish (`diceware_SP.txt`)  | GFDL 1.1+  | Copyleft doc license |
| Japanese (`diceware_JP.txt`) | CC-BY-SA 4.0 | Attribution + ShareAlike |

> **Important:** Because the bundled English word list (Reinhold) permits only **non-commercial** distribution, redistribution of this project as a whole — while it includes that file — is limited to non-commercial use. To release a commercially usable version, remove `wordlists/diceware_EN.txt` from the distribution.

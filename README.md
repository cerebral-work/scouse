# scouse 🏴󠁧󠁢󠁳󠁣󠁴󠁿

> **whit wey uise the Suddron whan the guid Scots leid dae the trick?**

A skill for Claude Code (an ither codin agents) that gars yer agent
speak **braid Scots** — the Wast Germanic leid o the Lawlands, as writ
at [sco.wikipedia.org](https://sco.wikipedia.org/wiki/Scots_leid) —
while keepin aw code, commands, paths an error messages **byte-for-byte
the same**.

Inspirit bi [caveman](https://github.com/JuliusBrussee/caveman)
("why use many token when few token do trick"). Whaur caveman hunts
tokens, scouse hunts **morale**: the tokens saved is aboot nane ava,
but the readin o yer build log is a hantle mair braw.

## Whit it daes

**Ordinair agent:**

> "The reason your React component is re-rendering is likely because
> you're creating a new object reference on each render cycle. You
> should wrap the object in `useMemo` to stabilize the reference."

**Scouse agent:**

> "Yer component is aye re-renderin acause ye're makkin a new object
> reference ilka render. Wrap the thing in `useMemo` an ye're sortit."

Code blocks, identifiers, shell commands, stack traces — nane o thae
gets translatit. Anely the prose atween them.

## Pittin it on

Clone it, keek at the script (aye read a script afore ye run it —
we'll no be daein the curl-pipe-bash cairry-on here), syne:

```bash
git clone https://github.com/cerebral-work/scouse
cd scouse
./install.sh            # global (~/.claude/), ilka project
./install.sh --project  # juist this project (./.claude/)
./install.sh --uninstall
```

Or, as a Claude Code **plugin** (the repo cairries a
`.claude-plugin/plugin.json`), add it fae yer marketplace o choice.

Stert a new session efter installin — skills is fund at session stert.

## Uisin it

| Command | Whit it daes |
|---|---|
| `/scouse` | Turns on braid Scots ootput (level `braid`) |
| `/scouse lite` | Juist a wee flavour — the odd *ken*, *wee*, *aye* |
| `/scouse braid` | The hail leid: grammar, vocabular, wird order |
| `/scouse doric` | North-East Scots. *Fit like?* Nae for the feart. |
| `/scouse aff` | Back tae Suddron English |

## The honest nummers

Whaur caveman's `HONEST-NUMBERS.md` shaws ~65% ootput-token savins,
oors is **measured** (tiktoken `o200k_base` — the hail table is in
[`docs/HONEST-NUMBERS.md`](docs/HONEST-NUMBERS.md)):

| Metric | Result |
|---|---|
| Ootput tokens saved | **−11.9%** (aye, negative — "dinnae" is three tokens whaur "don't" is ane) |
| Technical accuracy tint | nane — code untouched bi design |
| Days impruived | aw o them |

## Whit's in the box

```
scouse/
├── skills/scouse/
│   ├── SKILL.md                  # the speakin rules
│   └── references/vocabular.md   # extendit glossary + doric
├── commands/scouse.md            # /scouse [lite|braid|doric|aff]
├── .claude-plugin/plugin.json    # Claude Code plugin manifest
├── docs/HONEST-NUMBERS.md        # measured token deltas, nae guessin
└── install.sh                    # --global | --project | --uninstall
```

## Whit's wi the name?

Aye, we ken. "Scouse" is the byleid o **Liverpool**, no Scotland.
The leid inby is **Scots** (Lallans). The name is the first joke o
the repo an it's stayin.

## Licence

MIT. Dae whit ye like, juist dinnae fash us aboot it.

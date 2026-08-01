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

Copy the skill intae yer project or yer hame config:

```bash
# per-project
mkdir -p .claude/skills/scouse
cp skills/scouse/SKILL.md .claude/skills/scouse/

# ilka project (global)
mkdir -p ~/.claude/skills/scouse
cp skills/scouse/SKILL.md ~/.claude/skills/scouse/

# the slash command
mkdir -p ~/.claude/commands
cp commands/scouse.md ~/.claude/commands/
```

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
oor benchmark is this:

| Metric | Result |
|---|---|
| Ootput tokens saved | ~0% (whiles **negative** — "dinnae" is twa tokens whaur "don't" is ane) |
| Technical accuracy tint | nane — code untouched bi design |
| Days impruived | aw o them |

## Whit's wi the name?

Aye, we ken. "Scouse" is the byleid o **Liverpool**, no Scotland.
The leid inby is **Scots** (Lallans). The name is the first joke o
the repo an it's stayin.

## Licence

MIT. Dae whit ye like, juist dinnae fash us aboot it.

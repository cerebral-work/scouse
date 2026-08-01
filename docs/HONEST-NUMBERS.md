# The Honest Nummers

caveman's `HONEST-NUMBERS.md` reports ~65% output-token savings. In the
same speerit o honesty, here is oors — **measured, no guessed**
(tiktoken `o200k_base`, 2026-08-01):

| English | tokens | Scots | tokens | delta |
|---|---|---|---|---|
| don't | 1 | dinnae | 3 | **+200%** |
| can't | 1 | cannae | 3 | **+200%** |
| The tests are failing because the mock isn't registered before the handler runs. | 14 | Thir tests is failin acause the mock isnae registered afore the handler runs. | 18 | +29% |
| I found the bug. It's a race condition in the file watcher. | 14 | Fund the bug. It's a sleekit wee race condition in the file watcher. | 16 | +14% |
| Everything is fixed and the build is green. | 9 | Awthing's sortit an the build is green. | 11 | +22% |
| You don't need a microservice for this. | 9 | Ye dinnae need a microservice for this. | 10 | +11% |
| The reason your React component is re-rendering is likely because you're creating a new object reference on each render cycle. You should wrap the object in useMemo to stabilize the reference. | 36 | Yer component is aye re-renderin acause ye're makkin a new object reference ilka render. Wrap the thing in useMemo an ye're sortit. | 33 | **−8%** |
| **TOTAL** | **84** | | **94** | **+11.9%** |

## Whit thir nummers tells ye

1. **Scots costs mair tokens per wird.** Tokenizers is trained on
   English corpora; `dinnae` splits three ways whaur `don't` is ane.
   This is anti-caveman by construction.
2. **Except it disnae, whiles.** The last row wins because Scots
   engineering prose *tends terse* — "an ye're sortit" replaces a hail
   English paragraph o hedging. The register saves whit the spellin
   spends.
3. **Net: +11.9% ootput tokens** on this sample. We regret naething.

## The metrics that matters

| Metric | Result |
|---|---|
| Ootput tokens | +11.9% |
| Technical accuracy tint | 0% (code untouched by design) |
| Build logs ye actually *want* tae read | aw o them |
| Morale | muckle improvit |

Reproduce it: `python3` + `tiktoken`, encode the pairs abuin, coont.
If ye get different nummers wi a different encoder, file an issue —
we'll pit yer nummers in the table an aw.

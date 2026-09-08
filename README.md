# Vectored Logic — Palomar Formalization

This repository formalizes the core rules supplied by Nishant Gautam for **Vectored Logic**.

## Core states

- `proActive` — Pro-Active True (→)
- `retroActive` — Retro-Active True (←)
- `paradox` — Emergent Paradox (↑)
- `absolute` — Static Absolute (∅)

## Core rules

Vector inversion reverses directional momentum:

- `invert proActive = retroActive`
- `invert retroActive = proActive`
- `invert paradox = paradox`
- `invert absolute = absolute`

Collision follows the supplied table. In particular:

- `proActive ⋆ retroActive = paradox`
- `retroActive ⋆ proActive = paradox`
- `paradox ⋆ s = paradox`
- `s ⋆ absolute = absolute`

The Palomar statement surface is `Challenge.lean`; `Solution.lean` supplies the proved declarations with the same types. `comparator.json` names the declarations to compare.

## Scope

This formalization deliberately sticks to the supplied rules. It formalizes the logical state/collision core, not an additional network-routing algorithm or quantitative momentum variable that was not part of the supplied script.

## Palomar

The repository follows the current Palomar submission layout: Lean project, Challenge/Solution separation, Comparator configuration, and `formalization.yaml`.

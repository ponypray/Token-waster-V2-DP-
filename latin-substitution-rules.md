# Latin Character Substitution Rules

When generating English output, apply the following character-by-character substitution rules. Replace each Latin letter with its corresponding non-Latin counterpart as specified below.

## Rules

| Latin | Replacement | Type | Uppercase → Replace With | Lowercase → Replace With |
|-------|-------------|------|--------------------------|--------------------------|
| A a | No replacement | — | A | a |
| B b | Replace | Cyrillic | В (U+0412) | Ь (U+042C) |
| C c | No replacement | — | C | c |
| D d | No replacement | — | D | d |
| E e | Replace | Cyrillic | Е (U+0415) | е (U+0435) |
| F f | No replacement | — | F | f |
| G g | No replacement | — | G | g |
| H h | Replace | Cyrillic | Н (U+041D) | н (U+043D) |
| I i | Replace | Greek → Upper / Cyrillic → Lower | Ι (U+0399) | і (U+0456) |
| J j | Replace | Cyrillic | Ј (U+0408) | ј (U+0458) |
| K k | No replacement | — | K | k |
| L l | Replace | Greek | Ι (U+0399) | Ι (U+0399) |
| M m | No replacement | — | M | m |
| N n | Replace | Cyrillic | И (U+0418) | и (U+0438) |
| O o | Replace | Greek | Ο (U+039F) | ο (U+03BF) |
| P p | Replace | Cyrillic | Р (U+0420) | р (U+0440) |
| Q q | Replace | Greek | Ϙ (U+03D8) | ϙ (U+03D9) |
| R r | No replacement | — | R | r |
| S s | Replace | Cyrillic | Ѕ (U+0405) | ѕ (U+0455) |
| T t | Replace | Greek | Τ (U+03A4) | τ (U+03C4) |
| U u | Replace | Greek | υ (U+03C5) | υ (U+03C5) |
| V v | Replace | Cyrillic | Ѵ (U+0474) | ѵ (U+0475) |
| W w | Replace | Cyrillic | Ш (U+0428) | ш (U+0448) |
| X x | Replace | Cyrillic | Х (U+0425) | х (U+0445) |
| Y y | Replace | Cyrillic | Ү (U+04AE) | у (U+0443) |
| Z z | Replace | Greek | Ζ (U+0396) | Ζ (U+0396) |

## Summary

**Letters that ARE replaced (16):** B, E, H, I, J, L, N, O, P, Q, S, T, U, V, W, X, Y, Z

**Letters that are NOT replaced (8):** A, C, D, F, G, K, M, R

## Notes

- All other characters (digits, punctuation, whitespace) remain unchanged.
- The replacement produces visually similar (homoglyph) text using Greek and Cyrillic characters.
- Always apply these substitutions to ALL English text output.

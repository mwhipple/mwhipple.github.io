---
title: Interpolation
---

- [Up to Concepts](concepts)

Interpolation refers to expansion of expressions into another value.
I tend to use this and "expansion" somewhat interchangeably, but here
the thinking is that expansion is often the implicit result of evaluation
whereas interpolation is more specifically the expansion _within_ another
value (typically to produce a string).

## [Bash](bash)

Expansion in bash is generally done using `$` with specific variations
depending on the type of value. `$(...)` is used for subshell epansion
suitable for general [expressions](expression) and `${...}` is used
for variable expansion. For variable expansion the braces are typically
optional but I use them consistently.

In bash the interpolation syntax is necessary anytime the value of variable
is desired (likely as a consequence of its use as a shell).

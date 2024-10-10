---
title: Pragmas
---

- [Up to Concepts](concepts)

Pragmas refers to flags or directives which modify the behavior of
the language itself. These typically enable or disable some mode
or feature.

## Haskell

Pragmas are activated using the LANGUAGE directive in the form.

```haskell
{-# LANGUAGE pragma[,pragma]* #-}
```

Multiple pragmas may be enabled within a single directive
(but that should be a cohesive grouping of pragmas).

## Sub-Pages

- [Strict Mode](strict_mode)


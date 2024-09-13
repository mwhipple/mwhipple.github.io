---
title: Assignment
---

- [Up to Concepts](concepts)

Assignment is a [statement](statements) in most languages in which a
a value is associated with an identifier within the active
binding environment.

Such bindings may be immutable such that the value associated
with an identifier cannot be changed after initial assignment,
or as an extension some languages rely entirely upon nested
binding environments and corresponding argument passing
rather than standalone statements.

## Bash

Assignments in bash take the form

```bash
<IDENTIFIER>=<VALUE>
```

with the specific notes that there must not be any spaces to either
side of the `=`, and the value may be quoted or contain escapes
if it has spaces or other characters that may be otherwise parsed.

## Lilypond

Assignments in Lilypond conform to standard `=` syntax:

```lilypond
<identifier> = <expression>
```

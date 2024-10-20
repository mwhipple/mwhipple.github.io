---
title: Variable Declaration
---

- [Up to Concepts](concepts.md)

Variable declartion is used to indicate that a variable exists,
independently of giving it a value. This would typically reserve
space for the variable handle itself (either within static space
or as part of a stack frame) and could presumably also claim
some dynamic memory (though that seems more typically to be
part of initialization).

## JavaScript

### var

The original and least restrictive form of variable declartion
is using the `var` statement:

```
var <name>;
```

This would typically be done as part of initializing the value,
though some practices may prefer "hoisting" the declarations to
the top of the binding environment to clarify the actual execution
flow (in light of possibly ascending through environments).
I believe `var` has some scoping differences when compared to newer
alternatives, but within my personal taste any of those are likely
to be idiosyncracies that are best avoided (and `var` also would be
avoided for the more expressive newer alternatives.

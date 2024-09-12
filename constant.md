---
title: Constant
---

- [Up to Concepts](concepts)

A constant is a fixed value bound to an identifier.
These may aid readability and maintainability (i.e. avoiding magic literals)
and may also act as a means to provide an addressable flag
(i.e. defining a constant in support of [conditional declaration](conditional_declaration)).

Depending on the language constants may be expanded at compile time, such that
the resulting program text only includes the value rather than the identifier.
In other cases "constant" here would correspond to a statically adressable
immutable value (that could for instance be subsequently inlined).

This does not include immutable bindings that may vary across contexts
(i.e. any kind of "constant" tied to a given function invocation), nor
does it apply to references/pointers which are not conducive to inlining.
These are all valuable tools but are distinct concepts and conflating
them may intoduce runtime surprises due to the potentially different
times of expansion (i.e. linking against a previously compiled unit may
result in value dissonascence).

## C

The `#define` preprocessor directive can be used for constant definition
which will result in replacement in the source prior to compilation.

```c
#define CONSTANT_NAME <value>
```

## C++

The `#define` preprocessor directive can be used for constant definition
which will result in replacement in the source prior to compilation.

```c++
#define CONSTANT_NAME <value>
```

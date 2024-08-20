---
title: Conditional Declaration
---

- [Up to Concepts](concepts)

Conditional declaration refers to a practice where some behavior
may or may not be available depending on some parameter.

As with any conditions it should preferably be contained in a way
that prevents branching from littering a code base.

Declaration is used to indicate that the behavior that is applied as
early as possible such that the underlying logic conditionally
exits rather than being conditionally evaluated.

## C

The `#ifdef <CONSTANT>` preprocessor directive will ignore/remove
the contents through the complementary `#endif` if the indicated
constant is not defined. The constant itself can then be provided
as an argument or expanded into a template.

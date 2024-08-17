---
title: Record
---

- [Up to Concepts](concepts)

Record is used to describe a data structure with named attributes.

## C

In C, records can be defined as `struct`s, with the definition of the
form:

```c
struct <name> { [attributes];* };
```

I _think_ "tag" is the more precise term than "name", but I'll need to
re-read about that. Without a corresponding typedef, all references to
the defined struct should by qualified by the `struct` keyword.

In C the attributes within a struct instance will have a defined address offset
based on the definition and by default allowing for alignment optimizations.



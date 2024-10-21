---
title: Namespace
---

- [Up to Concepts](concepts)

Namespace is used to refer to a context within which names may be relatively defined;
the end result being that two names in different namespaces are distinct and a name
should be unambiguously resolved if it is referenced with a fully qualified path of
ancestor namespaces.

Systems may layer additional functionality on top of this to facilitate packaging
and modularity, but namespace is used to refer to the simple foundation.

## C++

The `namespace` keyword followed by the `::` delimited path of the namespace
is used to add definitions to the indicated namespace (which can subsequently
be accessed using their paths absolutely or byby using a relative namespace).

## Haskell

Namespaces are defined using modules for which declarations are added by enclosing
contents within a construct of the form:

```
module <name> where
```

where `where` provides latent declaration behavior analogous to its use elsewhere.

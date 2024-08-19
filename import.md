---
title: Import
---

- [Up to Concepts](concepts)

Import is used to refer to making code defined elsewhere
accessible for use.

## C

C provides a basic preprocessor facility which can be utilized with one of:

```c
#include "..." /* local path */
/* or */
#include <...> /* library path */
```

Include results in inserting of the contents of the referenced file, where
the common practice is include a "header" file of declarations against which
the code can be compiled and subsequently linked with implementations.

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

## C++

Similar to C with the extension that modules from the C++ standard library are
imported without a `.h` extension.

```c++
#include "..." /* local path */
/* or */
#include <...(.h)> /* library path */
/* or */
#include <...(no extenstion)> /* library path */
```

## Python

Python provides a flexible import mechanism (largely enabled by it exposing
code constructs as dictionaries).

```python
import <package>
```

can be used to import the indicated `<package>` such that members of that
package can be used with a qualified reference.

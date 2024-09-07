---
title: Export
---

- [Up to Concepts](concepts)

Exporting is the exposure of some constructs for use outside of a unit.
In some runtimes exporting is typically implicit and anything that
is not private is exposed, or there may be some combination depending
on the granularity involved.

What is exported reflects the exposed surface area/interface, and therefore
it may be a key enabler in defining an abstraction.

## JavaScript

### CommonJS

Exports can be assigned to the `exports` value of the `module` object:

```javascript
module.exports = ...
```

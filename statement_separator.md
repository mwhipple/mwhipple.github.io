---
title: Statement Separator
---

- [Up to Concepts](concepts)

While some languages rely on on a consistent
statement terminator, others provide a distinct
statement separator for situations in which
multiple statements are written in an area where
only one may otherwise be expected.

Typically these are languages which are typically
line-oriented and therefore a line break is the typical
statement terminator, but the separator allows for
multiple statements on the same line.

The distinction may get fuzzy in some cases such as
JavaScript where the automatic semicolon insertion
enables terminators that may be considered optional,
but the distinction made here is that separators are
not consistently appropriate or expected, but are
introduced for the reason described - to effectively
squeeze multiple statements in the place of one.

This is an informal concept based on convention, there
is not for example a hard expectation or grammar 
production that a separator _must_ be followed by another
statement but that would typically be the case based
on idiomatic language usage and separators would
not otherwise be used.

## [Bash](bash)

`;` is available as a statement separator and can also
be used as means to enable that would not otherwise be
valid. In typical use `;` would be omitted, likely largely
due to Bash's role as a shell.

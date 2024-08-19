---
title: Expression
---

- [Up to Concepts](concepts)

An expression is code that primarily acts to return a value.
This largely corresponds to the concept of an `rvalue` used
in some languages, where an expression is logic evaluated
within the code (stack) but which does not inherently have
an address that could be referenced (though the result could
be assigned or the expression could be the body of a
subroutine.

In my opinion, languages tend to fall along a spectrum where
some are more expression-oriented in that
arbitrarily complex logic can be assigned using expressions
which may lead to dense code but also avoids what may be
unnecessary assignments (which can be distracting), whereas
others tend to be more statement-oriented in that logic
is more likely to be broken across different statements
regardless of whether there is a logical motivation to do
so. Drawing on some of the oldest languages, Lisp and C lean
towards each end respectively.

I personally have a penchant for functional programming
practices which draws me toward more expression-oriented
practices, though I also work to stay within the idioms of
the language used.

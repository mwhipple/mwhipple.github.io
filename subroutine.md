---
title: Subroutine
---

- [Up to Software](software)

Subroutine is the provisional term I'll use for a chunk of
reused logic in programming. In most languages this will
consist of some kind of name and signature involving
parameters and return value or values, along with a body which
contains the implementation, though this term is also seems
general enough to cover reuse without that type of interface
(such as in assembly or Forth).

Potentially the most common name for such a construct is
	  "function", though I'm reluctant to use that too generally
	  due to the utility of the mathematical definition which
	  doesn't apply to "impure functions".
	</p>
	<p>
	  In object-oriented languages the term "method" may be used
	  which is appropriate when working with an instance but gets
	  stretched a bit when there's a desire to define functions that
	  then masquerade as "static methods" even if they don't
	  interact with their surrounding namespace (i.e. operating on
	  class-wide data)...but more of warts with overuse of
	  object-oriented programming will be covered separately.
	</p>
	<p>
	  Finally potentially on the opposite end of "function" would be
	  "procedure" which is not particularly in fashion but at least
	  seems to imply action/side effects which may not always be
	  appropriate.
	</p>
      </section>
      <section>
	
      </section>

    </article>
  </body>

## C

C supports definition of functions using the production:

```
<return type> <function name>(<parameters>) { <body> }
```

The definition itself can get fairly verbose given both
the types and compiler advice. At the moment I'm not
sure whether the braces are required for the body or
incidental to the expectation of a block, but I'd use
them consistently regardless.

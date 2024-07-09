---
title: Programming Languages
---

-   [Software](software)

# Programming Languages

Over the years I\'ve worked with a wide range of programming languages
professionally or for the sake of curiosity/enrichment.

A distinction which often seems neglected by practitioners is that
between application programming and systems programming. The boundary
between the two can sometimes get muddy, but I find the distinction
crucial in that from my perspective application programming should
remain very focused on delivery of novel value where the details of the
underlying system represent excessive accidental complexity.

For application programming I tend to view programming languages as
given out-sized attention to the point where they are often harmful -
sometimes breeding fetishistic preferences and generally introducing
waste associated with bridging different means of expressing \"how\"
(which is the nature of languages) isomorphic \"what\"s are represented,
none of which translates to the environmental impacts which are the net
value of the produced machine.

My practical approach to try to avoid some of this waste is to adopt
something like Lisp as my preferred application programming language.
I\'d been considering different options for a bit and was generally
strongly drawn to a language that offered some level of
[homoiconicity](https://en.wikipedia.org/wiki/Homoiconicity "Homoiconicity - Wikipedia"){atime="2024-04-06"}
(for basic desires such as more natural encoding of data structures and
declarative interfaces rather than more sophisticated meta-programming)
when I stumbled in to watching Rich Hickey\'s [Simple Made
Easy](https://www.youtube.com/watch?v=SxdOUGdseq4 "'Simple Made Easy' - Rich Hickey (2011) - YouTube"){atime="2024-04-04"}
talk which somewhat sealed the deal. I first acquired a fondness for
Lisp due to SICP (like many others) but more popular languages like
Python promised many of the same benefits (Python and some other
languages could be treated as sitting on top of dictionaries or objects
rather than lists), but the richer syntax of such languages raises
corresponding complexity. Stopping caring about syntax leads naturally
to wanting a language for which parsing is particularly easy, and Lisp
is a language which not only has flavors across many, many runtimes but
for which parsing can typically be thrown together with minimal effort.
Specifically I\'ll be looking to make use of a portable subset of Scheme
as Scheme pursues a small number of primitives which maps naturally to
the prospect of implementing such primitives wherever necessary and
leveraging the complementary simple means of combination and abstraction
common to Lisps (with the option of tabling some of the more
sophisticated metasyntactic extensibility). This aligns with a big
picture desire to be able to approach application programming by seeking
to adopt composable computational constructs which can be floated on top
of abstracted systems.

I\'m currently exploring the idea of largely using a combination of lisp
and YAML, resulting in the equivalent of the ability to embed sexps
inside of YAML documents.
[YAMLScript](https://github.com/yaml/yamlscript "GitHub - yaml/yamlscript: Programming in YAML"){atime\"2024-04-13\"=""}
seems to be exploring a similar space but I\'d be looking to make use of
a different format where rather than relying upon a special marker (an
extra colon) within the entry definition, I\'d be looking to have the
trigger for evaluation be the typical use of parentheses around the
expression - thereby falling back to the behavior where such values
would be parsed as strings and could therefore have latent expansion
applied. This also potentially feels comparable to the distinction
between LISP-1s and LISP-2s where keeping the evaluation in the
expression feels to be more in-line with a LISP-1 whereas the special
syntax feels more like a distinct LISP-2 namespace.

As a crucial distinction between the above idea and other lisps,
parentheses would be used to indicate evaluation only and therefore this
is likely to subsequently diverge from true lispiness where everything
also comes back to pairs/cons cells. The use of that construct is
certainly feasible but the syntactic elements are intended to more
clearly convey the semantics of the data independently of the
implementation (i.e. dictionaries may best be represented as alists but
the syntax doesn\'t care).

This approach could help to address both challenges related to the the
structure of logic and the data upon which it is acting, and also the
struggle to represent a wide range of data types and semantics over
portable formats such as
[YAML](https://yaml.org "The Official YAML Web Site"){atime="2024-04-17"}.

For systems programming I\'m currently gravitating towards
[Rust](https://en.wikipedia.org/wiki/Rust_(programming_language) "Rust (programming language) - Wikipedia"){atime="2024-04-17"}.
I first dabbled with Rust a few years ago and found the language
generally very appealing, but the Rust compiler is also relatively large
and so I instead wanted to bolster my low-level knowledge with tools I
could understand more completely and feasibly bootstrap. The confluence
of reading an article about [provable correctness with
SPARK](https://cacm.acm.org/research/co-developing-programs-and-their-proof-of-correctness/ "Co-Developing Programs and Their Proof of Correctness – Communications of the ACM"){atime="2024-04-14"},
(which mentions Rust), a general fondness for the declarative nature of
Rust\'s ownership model, the recognition that smaller compilers tend to
also result in less helpful feedback, and Rust popping up for a project
at work has pushed me into taking a deeper plunge regardless of the
size. I may still have an interest in alternatives such as Zig, but Rust
has popularity in its favor.

I do have some concerns around some of the recent supposed missteps over
[their intellectual
property](https://www.theregister.com/2023/04/17/rust_foundation_apologizes_trademark_policy "Rust Foundation apologizes for trademark policy confusion • The Register"){atime="2024-04-18"}
but for the time being I\'ll optimistically trust those to work out (and
be ready to pivot if they don\'t).

I\'ll also be more clearly defining my perceived boundary and
relationship between systems and application programming since I\'m
leaning towards more distinct roles than what are typically designated.

- [Perl](perl)

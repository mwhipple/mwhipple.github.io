---
title: Protocol Buffers
---

- [Up to API Management](api_management)

Protocol Buffers (protobufs)
are now a fairly common solution for serialization/deserialization of data.

They are probably used more widely than is warranted due to a typical combination
of being shiny and inviting scale envy, and there are several posts around the prospect
of them proving to be more trouble than they're worth at smaller scales. While I've
certainly been on that side in the past, at the moment I'm working on systems where
the volume of data justifies their adoption, and the promise of them providing a level
of provider-driven build-time guarantees is also very appealing.

## Some Elementary Concerns

### Distributed Type Coupling

A particular risk I see with protobufs (which seems to be related to a more
general swinging pendulum attached to microservices) is that the generated
code is likely tangle infrastructural and business concerns. Particularly in
Java (due to nominal typing) it's likely that the generated proto classes
will be referenced directly. In a distributed system this is particularly
unfortunate given that the logic in a consumer may acquire an incidental
dependency on a technical aspect of a producer; while there's always a
desire to keep dependencies inverted and concerns separated, the state in
which one system cannot define general logic without pulling in such a
dependency is particularly likely to expand coupling and cognitive
overhead (and undermine hexagonal architectures).

This is certainly _not_ inherent to protobufs but is rather a
result of treating the generated code as model objects rather than
being confined to DTO-style serialization concerns. This could
therefore be addressed through the use of mapping the data,
additional generation of wrappers, or making use of protoc hooks
to include interfaces such that the generated classes could be
used without incurring the type coupling.

As mentioned this is also particularly an issue in Java due to the
nature of the type system, and may be a concern in other similar
languages. I've honestly not spent significant time in other
languages but I'd think that Go interfaces allow a much more
natural solution to this concern.

It is also worth calling out that this concern may not be worth
attention for particularly small microservices which could be
defined as having the single responsibility of working with
the relevant protos (i.e. absent substantial business logic
and worth effectively treating as an infrastructural concern).

### Safety and Encoding

Protobufs _can_ enable decently good definition of data,
which can also be extended with additional checks such
as provided by Buf's protovalidate as used by
[Lyft](https://www.infoq.com/news/2024/09/lyft-protocol-buffers-design/?utm_source=email&utm_medium=architecture-design&utm_campaign=newsletter&utm_content=09172024 ""Lyft Promotes Best Practices for Collaborative Protocol Buffers Design - InfoQ"){atime="2024-09-30"}.
All of this is contingent on the way that protos are used, however.

One fairly ubuitious concern around anything that allows for
type definition is preference for concepts such as
sum types/discriminated unions that enable the defined types
to convey what is valid and disallow what is invalid, rather
than requiring additional logic (and assumptions) to derive
meaning from some kind of product type that devolves into an
increasingly incoherent bag of possible values.

Another related issue is trying to push generalized data
through protobufs such that field names or even nested
content may not be represented within the protos themselves.
While there may be scenarios in which this is worthwhile
it should be rare or it may be a signal an alternative
encoding technology should be preferred. This undermines
safety, complicates the code, and threatens any performance
benefit of using something like protos rather than
some form of dictionary-based compression.

## Tooling Concerns

While protobufs are widely supported and the utilitarian tools
provided perform wonderfully, there is virtually nothing provided
in terms of standard support for distribution and use of the
technlogy across a wider system (I'd imagine companies like Google
have largely plugged it into systems previously used for Stubby, etc.).
Concerns such as coordinating usage concerns aross a large number
have a fair amount of supporting tools in the ecosystem but not much
in terms of a framework that could guide usage in a way that discourages
inadvertent hole digging. Buf does seem to fill this niche and can
hopefully transition in some form or another into at least a de facto
standard.



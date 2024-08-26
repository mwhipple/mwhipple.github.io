---
title: API Management
---

- [Up to Software Architecture](software_architecture)

APIs define the interface/contracts of larger systems. While this may seem
redundant they are too often treated as by-products of the implementations
thereby disregarding the principle of designing to interfaces and not
implementations which in turn invites higher coupling and poorer user experience.
Most directly this can hamstring a system from being able to evolve as
what functionality is delivered is likely to be unnecessarily bound to
specific providers of that functionality.

## API Composition

A key enabler for well-managed APIs is support for API composition, tooling and
techniques for an API to defined as a first-class deliverable which may interact
with one or more origin services. This is important not only to provide a layer
of insulation, but also as a means by which concerns such as API conformance
can be addressed. I've been involved in conversations where API
standards were being advocated but conforming to those standards represented
a significant shift for an existing backend service, and asserting the
business value for the corresponding rework is tenuous at best. However, an API layer
that supports some level of mapping can contain those efforts such that the
exposed API can be conformant; purported benefits can be delivered to users of
the API and crucially what will be supported can more quickly be on track
for what is desired, establishing a path for the overall system to converge to
a desired state. Ideally such mapping should be fairly conventional, minimal,
and shrink over time so that logic is not scattered across layers,
but a small amount can go a long way.

This can often be done using fairly standard API Gateway offerings and some
supporting tooling (I led a team several years ago which built a simple and very effective
solution using OpenAPI and nginx). Tools such as GraphQL can provide a particularly
powerful approach and many of these themes are touched on in this
[whitepaper](https://www.apollographql.com/resources/e-book/design-a-resilient-api-strategy-with-graphql "Design a Resilient API Strategy with GraphQL"){atime="2024-08-26"},
though this should also be approached while considering Stan Lee's aphorism
that with great power comes great responsibility; GraphQL adoption should be
driven by weighing the complete picture rather than seeking to
[sprinkle it over some perceived gaps](technology_is_a_tool_not_a_solution).

## API Architecture

I recently read
[Mastering API Architecture](https://www.oreilly.com/library/view/mastering-api-architecture/9781492090625/ "Mastering API Architecture [Book]"){atime="2024-08-19"}
in the interest of refreshing my knowledge around API management approaches.
The book itself didn't address my needs, and overall I feel as though I mis-interpretted
the title. I'd read API Architecture as architecture related to APIs themselves
whereas the book's focus was more about the prospective application of APIs to
drive architectures. It was therefore a good succinct survey of a variety of
modern approaches to manage systems with an API undercurrent rather than giving
a deeper treatment to API-specific concerns. The one gripe that stands out for
me would be a fairly typical message of desingning modules with high cohesion and
low coupling but then advocating for a layered packaging by kind which encourages
the opposite qualities...for some reason or other engineers seem to gravitate
towards reasonable modularity and most levels of granularity but then succumb to
contrary patterns at the directory/package level.

For the particular project I was looking for insight into, it seems like another
area where the public industry has stalled a bit where gated source in larger
organizations likely already has mature solutions. I've proposed glue-y
in-house solution that I'll be proving out over the next month and may look
to open-source or present on depending on the organizational perspectives around that.


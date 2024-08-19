---
title: Software Arhcitecture
---

- [Up to Software](software)

Software Architecture is a notoriously nebulous concept, and in my
opinion what it is is in practice is largely dependent on the
organizations and people involved. A description I\'m fond of which I
first heard from Martin Fowler at the inaugural O\'Reilly Software
Architecture Conferences is that architecture are the pieces that are
hard to change and the role of a good architect was to destroy
architecture (i.e. enable easier change).

I have spent time in an organization with ivory tower architecture, but
I\'m certainly in the camp that considers this a terrible model and will
therefore not discuss that approach in any depth. Architecture should be
a collaborative process open to all of the owners of the system (and
certainly decisions should be made or approved by those who are expected
to live with the consequences). I have come to appreciate that there may
be a clear line between \"engineering\" and \"architecture\" where the
former may entail applying an \"engineering mind\" to crafting solutions
to provided goals whereas the latter is more concerned with working
through what some of those goals are and explaining (ideally
falsifiably) the rationale behind many of those decisions. Balancing
[trade-offs](https://www.infoq.com/articles/trade-offs-minimizing-unhappiness/ "Architectural Trade-Offs: the Art of Minimizing Unhappiness - InfoQ"){atime="2024-06-22"}
and architectural characteristics within different quanta are
architectural concerns whereas engineering is building and optimizing
systems within those parameters. Crucially however, these disciplines do
not necessitate different roles, are likely to be tightly interwoven,
and there can be massive benefits when they are both done by the same
people. I have come to appreciate the fact that they involve different
mindsets however and there are engineers who do not architect but those
that do should be empowered to do so (and per the earlier ownership
comment any archiecture without coordinated engineering buy-in is an
invitation for many types of issues).

Additionally, architecture involves preserving the \"conceptual
integrity\" (Brooks) of larger systems. In addition to needing to
mediate potential disagreements between different actors, having a clear
and coherent vision can chart a clearer course for the whole solution
and help combat complexity that could be introduced by wanton
divergence.

[ATAM](https://insights.sei.cmu.edu/documents/629/2000_005_001_13706.pdf "ATAM: Method for Architecture Evaluation"){atime="2024-07-01"}
provides an interesting framework to tease out desired
characteristics/qualities and calibrating the sensitivity of different
decisions based on stakeholder needs. It is something I\'ll likely look
to draw on a bit (I can likely benefit from more frameworks) in addition
to some more recent, lighter weight approaches.

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

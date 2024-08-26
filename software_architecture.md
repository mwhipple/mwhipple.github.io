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

## Sub-Pages

- [API Management](api_management)


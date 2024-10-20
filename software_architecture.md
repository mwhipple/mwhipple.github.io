---
title: Software Arhcitecture
---

- [Up to Software](software)

Software Architecture is a notoriously nebulous concept, and in my
opinion what it is is in practice is largely dependent on the
organizations and people involved; it may gain additional clarity
as one of the paths for
[staff+ engineers](https://www.infoq.com/articles/engineering-art-embracing-creativity/){atime="2024-09-08"}
which has recently gotten
renewed attention. A description I'm fond of which I
first heard from Martin Fowler at the inaugural O'Reilly Software
Architecture Conferences is that architecture are the pieces that are
hard to change and the role of a good architect was to destroy
architecture (i.e. enable easier change). Gregor Hohpe also has a
[nice talk](https://www.infoq.com/presentations/architect-lessons/ "Thinking Like an Architect - InfoQ"){atime="2024-09-12"}
on what can probably be distilled to the values which should be
provided by architects.

An architecture team I joined described the purpose of the team as
making sure that conversations happen, and the role of
communication for architects (and within software in general) is
[crucial](https://www.infoq.com/presentations/progress-communication-collaboration/ "Leveling up Your Architecture Game - InfoQ"){atime="2024-09-03"}.
I have spent time in an organization with ivory tower architecture, but
I'm certainly in the camp that considers this a terrible model and will
therefore not discuss that approach in any depth. Architecture should be
a collaborative process open to all of the owners of the system (and
certainly decisions should be made or approved by those who are expected
to live with the consequences). I have come to appreciate that there may
be a clear line between "engineering" and "architecture" where the
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

Additionally, architecture involves preserving the "conceptual
integrity" (Brooks) of larger systems. In addition to needing to
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

## Local vs. Replicated Traffic

One consideration for any large-scale deployment is the mixing of accessing
local data vs. distributing such data. Distributed data has the advantages
that it can bolster redundancy and can also aid in serving the data closer
to the point of access, whereas it can incur notable costs both financially
and in terms of latency and complexity. Strategies and technologies to address
this tradeoff should be
[explored](https://www.infoq.com/articles/minimize-latency-cost-distributed-systems/ "How to Minimize Latency and Cost in Distributed Systems - InfoQ"){atime="2024-10-02"},
but like so many similar considerations I'd advocate that the resulting
approaches are stratified (i.e. different data may benefit from different
guarantees) and subsequently driven by data. There are multiple axes that all
inform the conversation such the complexity associated with the containers
being discussed (availability zones vs. intra-cloud regions vs. inter-cloud),
the volume of data involved, and the target latencies. On top of these foundational
considerations there should also be insight into the interplay of some of
the considerations to assess when the configuration is delivering significant
value (pursuit of approaches in any direction should be driven by some quantifiable
net benefit that is then tracked for return on investment particularly compared
to alternatives which may include SLO adjustments).

## Sub-Pages

- [API Management](api_management)
- [Microservices](microservices)

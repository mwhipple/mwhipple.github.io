---
title: Observability
---

- [Up to Software](software)

Observability is a concern in which I've spent time very actively
engaged and also acted as a champion in organizations which have
neglected observability. Conceptually I'm a proponent of the "you
build it, you run it" mentality and that routine use of observability
is a core mechanism to make sure that your system is actually delivering
value (which is a function of running code, not writing it). I also seek
to streamline and specify observability concerns with the mentality that
making sense of data can be tricky, that the vast majority of needs
differ in terms of parameters/dimensions but fit within a small number
of kinds, and that the curse of knowledge can lead to an inside out
perspective which must be actively combatted (the structure should drive
discovery rather than just support presumed hypotheses).

At the moment I have the unfortunate perspective that observability
remains underserved. While observability has become more expected and
there has been a proliferation of relevant tools it feels as though
organizations tend to fall into a trap of tossing out increasingly
sophisticated tools as purported pillars of observability but it too
often seems to lead to states in which data is floating around but teams
still do not seem to have increased awareness of the internals of how
systems behave or how to efficiently go from questions to answers. This
may perhaps lead to a counter-productive quantity over quality where the
expectation that arbitrary data will be available leads to less
attention being paid to that data. In addition to the threat of overload
and noise this may also lead to eye-watering costs or anti-patterns that
arise from trying to mitigate those costs.

To a large extent it seems as though many of the standards such as
OpenTelemetry are lagging where it seems they should be. My conjecture
is that many of the SaaS offerings are appropriate for smaller
organizations, most of the larger mature organizations worked out their
observability stack long before the current standards, and more active
improvements would largely be done in-house with sporadic changes making
their way back upstream. This leaves much of the standard tooling in a
position in which it supports powerful approaches but realizing such
approaches requires a significant amount of wiring and configuration
which translates to effort and expertise rather than more immediate
value.

## Sub-Pages

- [Grafana](grafana)
- [OpenTelemetry](opentelemetry)

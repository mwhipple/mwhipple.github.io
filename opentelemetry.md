---
title: OpenTelemetry
---

- [Up to Observability](observability)

I've been lightly tracking OpenTelemetry roughly since its inception
(and using it off-and-on). I find the underlying architecture compelling,
but the overall solution seems to be taking too long to mature, at least
in those areas in which I'm interested.

My hypothesis is that adoption and consequent maturity is somewhat bogged down due to a mix of:

- mature companies already having in-house solutions
- unnatural migration away from the standards it superseeded
- premature offering of broad functionality
- the common deviation of providing a standard but require support across multiple places
- relatively higher impact on publishing code (compared to alternatives)

Additionally the practical return on investment of OpenTelemetry may be unclear -
there are clear _potential_ benefits in the substantial visibility that the overall
effort can provide but realizing those benefits requires that the produced data
leads to actions, and those in turn should be in some way relatively optimized if
being compared to alternatives. Beyond that there may be additional costs in some
of the richer data, or mitigations to reduce such costs which may hinder the ability
to make use of it - all of which lead into the underlying assertion that attention
needs to be paid to both the signal:noise ratio of the telemetry and the ultimate
impacts of the resulting signal.

All of these things can push the breakeven point of adoption out when compared to
pre-existing solutions. To be clear I'm not suggesting this is not worthwhile
(particularly given the prospective benefits of using a standard for instrumentation),
but that use should be given deeper attention rather.
Specifically any notion that OpenTelemetry should deliver implict value should be
viewed very skeptically and the underlying magic should be leveraged but unpacked.

OpenTelemetry now also supports
[continuous profiling](https://www.infoq.com/news/2024/08/otel-continuousprofiling-elastic "OpenTelemetry Adopts Continuous Profiling; Elastic Donates Their Agent - InfoQ"){atime="2024-09-12"},
which promises an increasingly unified view of runtime behavior and reduction in
necessary tooling footprint.

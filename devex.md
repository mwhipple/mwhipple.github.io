---
title: DevEx
---

- [Up to Software](software)

## DevEx

Developer Experience (DevEx) is an incredibly important factor in cultural scability (and security) within an organization,
but tends to be pursued with what I consider to be questionable approaches. Perhaps most glaringly
successful initiatives involve working
[closely with developers](https://www.infoq.com/articles/virtual-panel-developer-experience-platform-engineering "Delivering Great Developer Experiences with Platform Engineering - InfoQ"){atime="2024-07-04"}
but many efforts seem to craft solutions which seem to be driven more by external blog posts rather
than engaging with concrete problems and stakeholders equipped to help drive solutions. I'd also
strongly argue that rolling out DevEx is best served by identifying light-touch glue tooling which
minimizes obscuring community solutions, seeking to shed undifferentiated lift, avoid potential obfuscation
of relevant knowledge, and facilitate future evolution which is crucial given the moving target of
industry standards. As is a common affliction across engineering efforts: building unnecessary bloat tends to produce
costly albatrosses and periodic large scale redesign efforts rather than being able to smoothly keep pace
with changes. By the time any additional tooling is released it should be demonstrably net positive when
compared to the prior state rather than simply promising such value in the future.
Information and utilities should account for
[different personas and skill sets](https://www.infoq.com/presentations/kubernetes-backstage/ "Demystifying Kubernetes Platforms with Backstage - InfoQ"){atime="2024-08-30"}
such that variable levels of assistance are provided within a framework that absorbs prospective
organizational complexity over time (helping some engineers with the basics and providing
relevant details to those with deeper knowledge).

At the moment, while Platform Engineering seems to be a distinct buzzword I consider a means to
deliver organization-wide DevEx and therefore I'm treating it as subordinate rather than as a
first-class concern (particularly given that the alternative perspective may suggest an
undesirable distance from users of what is being built...at least in a you build it, you run it
culture).

As is typical [agile](agile) guidance but particularly in light of some of the above such efforts
should also be incremental, calibrated to the size of the target environment, and driven by
defined performance indicators rather than assumptions. This can drive ongoing delivery of
functionality where it is most beneficial while blazing a reinforced trail
to a more comprehensive
[runtime](https://www.infoq.com/articles/platform-runtime-engineering/ "Platform as a Runtime - the Next Step in Platform Engineering - InfoQ"){atime="2024-06-28"}.



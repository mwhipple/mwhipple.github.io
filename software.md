---
title: Software
---

- [Up to Home](./)

## Software Selection

Perhaps the most fundamental task in dealing with computer software is deciding
which software to use. Often momentum narrows the field but in other
cases there may be a wide range of options without evident reasons to
favor some over others.

One helpful means to discover projects that are likely to have active community
engagement and wide support is to look at projects which have been accepted by
larger initiatives. For example graduated projects from the
[Cloud Native Computing Foundation](https://www.cncf.io/ "Cloud Native Computing Foundation"){data-atime="2024-06-04"}
are likely to be strong contenders when working in (unsurpisingly) cloud native environments.

## Selected and Grokked Software

- [nano](https://git.savannah.gnu.org/cgit/nano.git/log/ "nano.git - GNU nano"){data-atime="2024-06-11"}

## DevEx

Developer Experience is an incredibly important factor in cultural scability (and security) within an organization,
but tends to be pursued with what I consider to be questionable approaches. Perhaps most glaringly
successful initiatives involve working
[closely with developers](https://www.infoq.com/articles/virtual-panel-developer-experience-platform-engineering
"Delivering Great Developer Experiences with Platform Engineering - InfoQ"){atime="2024-07-04"}
but many efforts seem to craft solutions which seem to be driven more by external blog posts rather
than engaging with concrete problems and stakeholders equipped to help drive solutions. I'd also
strongly argue that rolling out DevEx is best served by identifying light-touch glue tooling which
minimizes obscuring community solutions, seeking to shed undifferentiated lift, avoid potential obfuscation
of relevant knowledge, and facilitate future evolution which is crucial given the moving target of
industry standards. As is a common affliction across engineering efforts: building unnecessary bloat tends to produce
costly albatrosses and periodic large scale redesign efforts rather than being able to smoothly keep pace
with changes.

As is typical [agile](agile) guidance but particularly in light of some of the above such efforts
should also be incremental, calibrated to the size of the target environment, and driven by
defined performance indicators rather than assumptions. This can drive ongoing delivery of
functionality where it is most beneficial while blazing a reinforced trail
to a more comprehensive
[runtime](https://www.infoq.com/articles/platform-runtime-engineering/ "Platform as a Runtime - the Next Step in Platform Engineering - InfoQ"){atime="2025-06-28"}.

## FinOps

[Million Dollar Lines of Code](https://www.infoq.com/articles/cost-optimization-engineering-perspective/
"Million Dollar Lines of Code - an Engineering Perspective on Cloud Cost Optimization - InfoQ")
{data-time="2024-06-17"} provides some decent war stories around
lack of cost management and lands on the useful formula of tracking what cost efficiency rather than
blindly seeking cost reduction. It seems somewhat appropriate as an introduction to the concerns but
seems to leave some gaps as it focuses on fairly discrete examples and then jumps to a metric
without providing strong guidance around more consistent principles and monitoring (there's a
related concept I need to extract that draws on things like Murphy's Law, Safety II, and Release It!).
The latter also seems notable in that the [premature optimization](premature_optimization)
quote is mentioned (attributed to Hoare) but without an actionable less "evil" alternative.</p>

## Sub-Pages

- [Bash Standard Library](bash_std)
- [Coding Style](coding_style)
- [Computer Security](computer_security)
- [Digital Video](digital_video)
- [Docker](docker)
- [GitHub SSH](github_ssh)
- [iptables](iptables)
- [linux](linux)
- [Observability](observability)
- [Programming Languages](programming_languages)
- [Software Architecture](software_architecture)
- [Solid](solid)

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
industry standards.

As is a common affliction across engineering efforts: building unnecessary bloat tends to produce
costly albatrosses and periodic large scale redesign efforts rather than being able to smoothly keep pace
with changes. By the time any additional tooling is released it should be demonstrably net positive when
compared to the prior state rather than simply promising such value in the future. An additional
consideration is that change is inevitable and should be accepted, and therefore I'd posit that the
essential means for coherence is to design for such change; lack of appropriate shepherding is likely
to lead to potentially undesirable fragmentation over time, but so is pursuit of rigid consistency.
What is desired is likely to change over time, systems may exist at various states, and the most
valuable systems are those that differentiate offerings in ways which are novel - all of these
considerations suggest that any model which espouses a fixed state rather than continuous
evolution is likely to yield a lot of churn and (contrary to likely intent) inconsistency over
time. _insert xkcd standards comic here_.

Massive benefits can be delivered through providing appropriate carrots. In my experience
preference torwards sticks tend to reflect unrealized promises: "thou shalt use only these
tools because that confers some benefits which we are not actually tracking and it allows us
to build more powerful tooling...someday". Additionally (per the previous section) there should
always be an expectation and allowance for variances to allow for pragamatic assessment of
approaches. If clear value is delivered rather than simply promised, most uses would be clearly
motivated to leverage that value and the breakeven point for variances could be pushed further
out, which can result in an organizational culture which is likely to
[incidentally evolve towards consistency rather than seek to mandate it](https://www.infoq.com/presentations/kafka-cloudflare/ "Tales of Kafka @Cloudflare: Lessons Learnt on the Way to 1 Trillion Messages - InfoQ"){atime="2024-09-01"}.

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



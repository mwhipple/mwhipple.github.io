---
title: Technical Debt
---

- [Up to Software](software)

Technical Debt is unfortunately a terribly abused metaphor.
Somewhat ironically it was coined to use business/accounting concepts
to make technical considerations more accessible but it is those
concepts that seem to be either ignored or misunderstood such that
Technical Debt is often treated as "anything technical that we wish
didn't exist" rather than things which should be able to be treated
as _debt_.

I also disagree with some of the use of the term in regards to
shipping things such as minimum viable products or architectures
as it is used
[here](https://www.infoq.com/articles/technical-debt-your-friend/ "How to Make Technical Debt Your Friend - InfoQ"){atime-"2024-09-30"}.
While much of the advice in the article is sound, it seems like
further dilution of the metaphor: not building what you think you may
need in the future but don't right now is not debt, that's being
empirical and agile. Metaphorically this is analogous to making a smaller
purchase than may be desired (but may not be needed) but there's no
indication that it isn't paid for and therefore would incur a liablity.
While the idea that it is something that needs to
be managed and may not need repayment (particularly given the prospect
of what amounts to feature bankruptcy) is all valid, it is important
not to conflate the state of solutions that expected to be "good enough"
for the time being from those that are not but for which those
time to market takes precenence over some clear non-blocking issues.

Years ago I had a more lax perspective and bought into the quadrant
model mentioned by Fowler, but I then witnessed a culture where that
led to mismanagement of such debt; without differentiating accrual of
debt from any undesirable expenses it can be easy to stumble your
way into insolvency which in technical terms can translate to thoughts
such as "it doesn't matter if we cut all of these corners for this
new system since we'll just add that to the backlog along with
sunsetting our legacy systems".

There's also a somewhat related concept of
[civilization debt](https://www.infoq.com/news/2023/11/good-companies-civilization-debt/ "How Good Companies Can Leverage Agile to Fight Civilizational Debt - InfoQ"){atime="2024-09-01"}.
While this certainly has different underlying motivations, those motivations
appeal to me and I'd also aver (without particular support) that many of
the debt management strategies would overlap.

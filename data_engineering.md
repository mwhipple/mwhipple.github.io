---
title: Data Engineering
---

Data engineering is something I stumbled into likely similar to
many engineers. Many of underlying concerns are fairly ubiquitous and
In addition to fairly typical business intelligence reporting asks
I had fairly early experience designing a data warehouse solution
and some supporting transformation logic as an effort to enable
very different operational and analytical needs to vary more independently.
I was subsequently briefly on a team that owned analytics and therefore
helped design a more complete extract-transform-load (ETL) system which
populated a warehouse style database along with a supporting visualization
layer.

I've since spent a fair amount of time in more of a supporting/consulting
role, helping to verify the work of teams more actively involved in crafting
solutions and assist in working through integrations with operational data
stores and challenges that may arise.

[Fundamentals of Data Engineering](https://learning.oreilly.com/library/view/fundamentals-of-data/9781098108298/ "Fundamentals of Data Engineering"){atime="2024-07-09"}
provides a high-level survey of the data engineering space. In my opinion
it remained too high level and general (and some of the details or
implications seemed suspsect) without really carving out a distinct
discipline and therefore it seems like it would be most valuable for
either an engineer very early on in their career, or someone such as an analyst
that does not have a software engineering background. For someone with
an engineering background the vast majority of the content is likely
to overlap with information which is better covered elsewhere and those
aspects that are unique to data engineering are not treated in-depth.
It arguably does firmly establish fundamentals but instead provides the
aforementioned high-level survey and therefore seems most poised to guide
readers to know where to look for further information rather than being
a primary source in and of itself (which is by no means a bad thing though
it likely could have been done more succinctly).

## Data Products

The current trend is around the definition of data products within a data mesh.
While many of the related threads may drift towards technical aspects, the single
most crucial aspect in my opinion is the notion that the teams which generate
the data have ownership over the semantics and additional contracts around the
data. Over the years I've certainly spent far too long on conversations and work
that were spawned by data teams both duplicating logic and breaking encapsulation,
and simply trying to reconstruct what _exactly_ a particular piece of data means
after a couple years of people interacting with it and seemingly driven more
by accident than intent.

Danilo Sato provides a nice introduction to current trends and their motivations
[here](https://www.infoq.com/presentations/data-products "Architecting for Data Products - InfoQ"){atime="2024-10--13"},
which provides a good backdrop for some of the conversations in which I currrently
am involved.

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

## FinOps

[Million Dollar Lines of Code](https://www.infoq.com/articles/cost-optimization-engineering-perspective/ "Million Dollar Lines of Code - an Engineering Perspective on Cloud Cost Optimization - InfoQ"){atime="2024-06-17"}
provides some decent war stories around
lack of cost management and lands on the useful formula of tracking what cost efficiency rather than
blindly seeking cost reduction. It seems somewhat appropriate as an introduction to the concerns but
seems to leave some gaps as it focuses on fairly discrete examples and then jumps to a metric
without providing strong guidance around more consistent principles and monitoring (there's a
related concept I need to extract that draws on things like Murphy's Law, Safety II, and Release It!).
The latter also seems notable in that the [premature optimization](premature_optimization)
quote is mentioned (attributed to Hoare) but without an actionable less "evil" alternative.

## Governance

I've been in organizations with different motivations to pursue governance, and operating within
an [architecture](software_architecture) role governance is often something which significantly
informs proposed designs and for which I often find myself acting as a mediator.
Governance like other hygiene-style concerns such as security must be
integrated into core work rather than perceived as bolted on friction, and the overarching
governance perspective should be
[complementarily agile](https://www.infoq.com/podcasts/governance-for-reducing-complexity/ "Governance for Reducing Complexity - InfoQ"){atime="2024-07-07"}
to core processes rather than introducing an impedence mismatch.

## Containers

(Among many other things) containers promise resource utilization optimization, but unfortunately
many organizations think such benefits can be realized without proper attention and
potentially making deeper discussions around tradeoffs. Among other issues
I've witnessed organizations that didn't understand the underlying concepts pursue
aggressive
[bin packing](https://www.infoq.com/articles/kubernetes-bin-packing/ "Optimizing Resource Utilization: the Benefits and Challenges of Bin Packing in Kubernetes - InfoQ"){atime="2024-09-08"}
which resulting in behaviors which not only negatively impacted performance but
was almost certainly counter-productive due to effectively starving nodes and
introducing spurious restart churn; in the most egregious case this was also
compounded by steady double digit CPU steal.

## Operational Excellence

"Operational Excellence" feels like a relatively new word for what should be
standard practice, but is too often neglected. Contrary to how many companies
seem to approach things, creating software is almost invariably solely a cost
and the value is delivered at the time the software is used or run. Operating
the resulting software is therefore the primary objective and development is
in service of that, and notions such as excellence should fall out of correcting
any related priority inversion in a healthy company that seeks a 
[culture of quality](https://www.infoq.com/news/2024/02/culture-quality-software-orgs/ "How to Develop a Culture of Quality in Software Organizations - InfoQ"){atime="2024-09-11"}.

A good laundy list of operational excellence concerns is provided
[here](https://dl.acm.org/doi/pdf/10.1145/3631176 "Software Managers’ Guide to Operational Excellence"){atime="2024-09-10"}.

## Sub-Pages

- [Coding Style](coding_style)
- [Computer Security](computer_security)
- [Concepts](concepts)
- [Content](content)
- [Data Engineering](data_engineering)
- [DevEx](devex)
- [Digital Video](digital_video)
- [Docker](docker)
- [Generative AI](generative_ai)
- [GitHub SSH](github_ssh)
- [HTTP](http)
- [Input Events](input_events)
- [Incident Log](incident_log)
- [iptables](iptables)
- [linux](linux)
- [Observability](observability)
- [Programming Languages](programming_languages)
- [Push Notificatons](push_notifications)
- [Software Architecture](software_architecture)
- [Software Libraries](software_libraries)
- [Software Toolbox](software_toolbox)
- [Solid](solid)
- [Technical Debt](technical_debt)
- [WebRTC](webrtc)

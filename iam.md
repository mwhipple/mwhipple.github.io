---
title: Identity and Access Managment
---

Identity and Access Management (IAM) seems to be one of the most common
traps for organizations. It is somewhat perversely one of the most
ubiquitous generic subdomains and one to which much attention has been
paid and for which many solutions exist, but which (anecdotally) seems
more often than not to be addressed using custom in-house approaches.

I certainly have hard-won opinions on how approaches should be built
when necessary along with the assertion that often perceived
deficiencies in available solutions are symptomatic of a lack of
understanding of best practices which can lead to the resulting in-house
solution becoming an albatross around the neck of the produced systems,
for now I will focus on trap avoidance.

## Context Mapping

One of the most naive but common reasons to forsake a standard IAM
solution is due to what amounts to not defining bounds to contexts.
Rather than recognizing IAM as a generic cross-cutting concern there is
an effort to define the functionality in terms of core business concepts
which leads to positions such as \"we can\'t use solution X because it
doesn\'t know about our MagicWidget resources\". This likely reflects a
fixed mindset (which can spell disaster in technology) and is
superficially wasteful given the massive overhead it is likely to
introduce, but can pose greater danger in that it leans into coupling
and leaves the door open for the tangling of enforcement and core
business logic which can push the costs of understanding, changing, and
verifying the functionality through the roof. Working through how to map
core domain concepts onto more general and standard IAM concepts can
yield significant benefits in both the short-term ability to leverage
established solutions and long-term decoupling and the ability to more
readily and safely apply knowledge and practices from the wider
community.

## Unbundling

There is often an attempt to apply a fairly monolithic solution to IAM
needs, but there can be massive advantages in identifying how many of
the different pieces fit together. From a functional perspective there
may be a lot of value in splitting out personas. Typically (in my
experience at least) there are core personas who are likely to represent
the majority of traffic, may have the most stringent service level
objectives, and have fairly basic (or at least consistent) security
requirements; there are then power and internal users who are likely to
have far more sophisticated or variable security needs. While it always
better to adopt single solutions where feasible, two relatively simple
solutions are often preferable to one that absorbs all of the complexity
particularly if that also leads to polluting simpler primary use cases
with logic to support those that may have different characteristics.

From a more technical perspective there is also a lot of value in
dissecting the broad set of IAM related functions into more focused
roles. Many organizations initially struggle with conflating
authentication and authorization, but in terms of a service that is
expected to scale while maintaining availability there are further
helpful delineations around management, deciding, and enforcement which
enable IAM to be a well-behaved part of a distributed system.

## Access Control Model and Use Cases

One of the unfortunate side effects of IAM being a mature domain is that
it can lead to feature-envy borrowing of approaches which are not backed
by any identified requirements. This can produce an over-engineered
system which is not only more difficult to understand, but (like many
things which deviate from actual needs) can introduce a fair amount of
friction. I've experienced symptoms of this in several organizations,
typically as a side effect of looking for technologies to solve
problems - but the most egregious was an in-house solution that sought
to provide granular access even though everything was modeled in terms
of roles which lead to a convoluted and fragile process where mappings
had to be (manually) coordinated across three different systems to
effectively allow for the expansion of roles into more verbose data
which was then still complemented by logic that acted on roles (as did
the business).

I've worked with and contributed to a variety of IAM solutions, and my
single biggest stance for permissions is that everything should be
framed within a consistent access control model. While I think there\'s
value in adopting the simplest model that makes sense (and evolving as
necessary), the most valuable but seemingly often neglected step is
making sure any such model exists rather than just providing teams a
bunch of building blocks and leaving them to enforce access in different
ways. Policies should then be able to be declared in terms of the
adopted model.

Very often role-based access control (RBAC) is not only sufficient,
but is how requirements are described. In misaligned solutions this
can lead to the business and users describing things in terms of
roles but having additional systems and owners which provide ongoing
mappings of roles to finer-grained logic; all of which is likely to
be wasteful churn. For more sophisticated needs
[attribute-cased access control](https://curity.io/blog/strengthen-api-access-control-with-attribute-based-authorization/ "Strengthen API Access Control with Attribute-Based Authorization"){atime="2024-09-12"}
can be adopted, and RBAC cases can be modeled on top of ABAC.
In all cases there should be a coherent model rather than a
a swath of what amounts to bespoke logic.

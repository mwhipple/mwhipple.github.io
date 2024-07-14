---
title: Zero Trust Architecture
---

- [Up to Computer Security](computer_security)

Zero Trust Architecture is what the cool kids are doing now as it
becomes increasingly crucial as systems and the ways in which we interact
with them become less centralized. Currently many of the techniques
seem overly ambitious for supporting discrete security needs
(such as managing identity and access management for software-as-a-service
customers) and is more appropriate for intra-enterprise security, but
there are a large number of overlapping concerns and it is worthwhile
maintaining a unified (if not necessarily uniform) perspective on security
needs.

Though I'll use it herein since it seems to be the predominant phrasing,
I'm personally not a fan of the "Zero Trust" terminology as it is overly
extreme which anecdotally can lend itself to abuse (I've seen some
convoluted and insecure designs implemented in the name of Zero Trust). A
fundamental underpinning of security is establishing and managing trust and
in that light the moniker can lead to simplistic and/or neglectful
perspectives. Zero Trust eschews more implicit trust mechanisms,
particularly those stemming from (network) location or zone; presumably if "trust"
were designated to only refer to such incidental attributes rather than
those designed for more secure authentication the term is accurate, but
that deviates from common use and therefore does not seem conducive to
understanding. Per Rais, et al.. "Zero Trust" is granted to the "network" which
matches that narrow and confusion breeding designation (particularly given the
possible interpretations of what constitutes a network although the implied
meaning is clear within the full context).
Alternatives such as "deperimeterization" seem to be both
clearer and less prone to hype and misuse.

Deperimeterization is clearer in that it clearly positions itself as
opposed to many previous practices which amounted to expecting security
to be enforced at a perimeter, but similar to the trust argument perimeters
or boundaries continue to exist and their impact on the larger security
picture should be understood rather than seeking their annihilation.
Ultimately the approach can be distilled to the notion that each severable
component should be secured independently rather than expecting transitive
security.

[Zero Trust Networks](https://learning.oreilly.com/library/view/zero-trust-networks/9781492096580/ "Zero Trust Networks, 2nd Edition"){atime="2024-07-14"}
provides a good introduction to the space as a whole with a combination
of examples, practical guidance supported by case studies, and references
to some of the emerging standards and best practices.

Phil Vachon provides a nice metaphorical overview of the breaking down
of security perimeters in pragmatic terms in
[The Security Jawbreaker](https://queue.acm.org/detail.cfm?id=3631478 "The Security Jawbreaker - ACM Queue"){atime="2024-06-04"}

Unfortunately there's seemingly a dearth of actionable security standards
in general. The NIST is coordinating such an effort for
[zero trust](https://www.nccoe.nist.gov/projects/implementing-zero-trust-architecture "Implementing a Zero Trust Architecture | NCCoE"){atime="2024-06-10"}

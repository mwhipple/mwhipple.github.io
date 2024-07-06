---
title: Computer Security
---

- [Up to Software](software)

Computer security is not something that I've been
particularly drawn to, but is something that seems to keep
falling into my lap. Creating secure systems is a
responsibility shared by all engineers but I also tended to be
involved in the foundational and organization-wide solutions as
an engineer, and in my current architectural role security is
a constant consideration. While I've tended to intermittently
look in to security concerns I'm recently seeking to maintain a
decent level of expertise given that it has recurred so
frequently throughout my career.

While most companies now recognize the importance of
security and are likely to establish commensurate practices, in
my estimation many such efforts are likely to be either
ineffective due to attempting to blindly overlay policies or
technologies without appropriate means for validation which may
translate to little more than
[security theater](https://en.wikipedia.org/wiki/Security_theater "Security theater - Wikipedia"){atime="2024-06-04}
...or worse they can counter-productive through
effectively restricting the application of more stringent
controls. The former concern will be a a recurring theme and
will therefore be left alone for now, but the latter is worth a
brief speaking to. Often access to manage controls themselves
are restricted to a small set of operators and tools but the
ability to modify such controls is a crucial enabler for
granting
[least privilege](https://en.wikipedia.org/wiki/Principle_of_least_privilege "Principle of least privilege - Wikipedia"){atime "2024-06-04"}.
If the gates introduced
inhibit such flexible configuration (likely instead offering
coarser canned options) then it both undermines that principle
and is also likely a symptom of larger issues that may reflect
a false sense of security. This particular type of issue is
better addressed through an automated (continuous delivery)
workflow which preserves the flexibility without slowing
feedback cycles in lower environments nor overloading
infrastructure teams while still allowing for oversight and
restricted access to production environments.

Even in cases when practices lead to clear gross benefits,
net value is optimized when security is clearly an
[enabler rather than a perceived source of friction](https://cacm.acm.org/careers/security-mismatch/ "Security Mismatch – Communications of the ACM"){atime="2024-06-07"}.

[Bruce Schneier](https://en.wikipedia.org/wiki/Bruce_Schneier "Bruce Schneier - Wikipedia"){atime="2024-06-04"}
has been passing across my
radar very often recently (before I resolved (and was assigned)
digging more into security) and so I'll start working my way
through some of his material. I find it somewhat interesting
that Inrupt is not listed on his Wikipedia page but since I've
not yet gotten around to contributing to Wikipedia I'll just
note that here.

Internet of Things (IOT) systems have a particularly shaky
footing in terms of security which is of particular interest
to me given that it is a space in which I currently work. Often
this is somewhat complicated by the constraints imposed on
embedded systems but should always be given appropriate attention
particularly given the (typically) larger
[surface area](https://cacm.acm.org/opinion/the-perils-of-leveraging-evil-digital-twins-as-security-enhancing-enablers/ "The Perils of Leveraging Evil Digital Twins as Security-Enhancing Enablers – Communications of the ACM"){atime="2024-06-13"}.
There are also additional challenges around coordinating the
secure introductions needed to onboard devices along with prospectively
attesting their provenance which is a growing concern that
[transcends IoT](https://cacm.acm.org/practice/creating-the-first-confidential-gpus/ "Creating the First Confidential GPUs – Communications of the ACM"){atime="2024-06-17"}.

In domains such as
[health care](https://cacm.acm.org/opinion/protecting-life-saving-medical-devices-from-cyberattack/ "Protecting Life-Saving Medical Devices From Cyberattack – Communications of the ACM"){atime="2024-06-09"}
privacy is both clearly and legally paramount, but similar attention is
warranted in an expanding breadth of domains.

## Attack Vectors

There are limitless ways in which security can be compromised which
includes side-channel and
[fingerprinting](https://www.independent.co.uk/tech/security-hack-device-internet-safety-b2567896.html "Security loophole lets hackers spy on people and affects every device and internet connection | The Independent"){atime="2024-07-05"}
attacks that may only be countered through what amounts to convolution of
typical behaviors. It is therefore essential to drive security assessments
with threat models and pragmatism rather than being seduced
into attempting to address all prospective vulnerabilities. It is not only
unlikely to be worthwhile pursuing such an effort, some of the prospective
risks may involve aggressors that are far more sophisticated than most
organizations could guard against. This can often lead to muddied systems
and security that is ultimately weakened where more attention is paid to
phantoms than to more standard and significant security concerns at the cost
of the security of the overall system. The
vulnerabilities that warrant attention are certainly contingent on the
requirements of the system being designed, but in all cases should be driven
by a coherent and validatable model rather than a grab bag of anything
possible.

## Subpages

- [Identity and Access Management](iam)
- [Zero Trust Architecture](zta)

---
title: Policy as Code
---

- [Up to Computer Security](computer_security)

Policy as Code (PaC) is something that was not much on my
radar a year or so ago but has quickly presented itself as
beneficial for architectural needs. In a few cases the relevant
technologies have aligned with somewhat independently identified ideas,
where I'd drafted proposals for how certain functions should be
designed and then discovered that some of the PaC tooling readily
provides such behavior.

A potential challenge (as somewhat emphazied by the contents of
the PaC book), is that the focus of much of the materials remains
on infrastructural nees such that the tools can seemingly end up
as extensions to Kubernetes, but many of the principles and promises
also have use within more general application code. While they could
still be delivered through something like Kubernetes, the relationship
can feel unfortunately inverted.

The dominant player in the space currently seems to be
Open Policy Agent (OPA)/Rego, where some of the basics and potential
future is covered in this
[talk by Justin Cormack](https://www.infoq.com/presentations/policy-dealing-with/ "Programming Your Policies: Exploring Open Policy Agent and More - InfoQ"){atime="2024-08-31"}.
I have a project I'll be starting shortly that's expecting to use OPA and
could hopefully be opened at some point - his mention of in-toto may also
help with another design I have waiting in the wings.

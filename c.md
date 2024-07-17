---
title: C
---

The C programming language remains the most prevalant language
for systems code; while some newer alternatives may be starting
to displace it for new code, the is a massive amount to displace
for the scales to tip. It also has a clear impact on many languages
developed since.

In K&R, C is described as portable assembly language, which seems
like a fairly accurate description (while also saving the significant
amount of time shuffling words to and from registers and digging
through instruction set references). It is a language which provides
little inherent protection and instead trusts the programmer to do
the right thing. The directly provided support is minimal, and perhaps
one of the single biggest inherent issues likely inherited from its
origins is that it is very easy to inadvertently make use of behavior
which is officially undefined (in addition to that which may be unsafe).

The language itself is beautifully parsimonious, and the core language
could be learned fairly completely in a day or two but doing anything
useful also typically heavily relies on provided libraries
(such as glibc) and may also require more compiler specific behaviors
along with not being shielded from any platform specific quirks...
so somewhat the mess has just been pushed just outside the language
limits.

C can be a lot of fun to play around with but should likely be eyed
warily if building anything new that is non-trivial. While I enjoy
aspects of it I also tend to think that sane use in a larger project
is likely to involve a fair amount of conventions around details such
as interaction patterns and memory management along with some aids
for productivity all of which combine to the prospect that aside from
low level uses that involve a lot of bitwise manipulation it's a good
language to use to create another language.

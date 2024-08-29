---
title: Standard Streams
---

- [Up to Software](software)

When developing command line applications,
I rely heaily on the standard streams provided by POSIX-y operating systems,
defaulting to leveraging redirection rather than implementing alternative
file management logic. This typically allows for less and blissfully ignorant
code that is readily usable for scripting.

One caveat that pops up every so often (and which I just got dragged into
a discussion about) is some of the less obvious behaviors around the
buffers that enable that functionality, where a good overview is provided
[here](http://www.pixelbeat.org/programming/stdio_buffering/ "stdio buffering"){atime="2024-08-29"}.

Over the years this nuance has reminded me of itself over the years, typically as
behaviors that vary across execution environments.
One of the most common but easily addressed results (and the topic of the mentioned
conversation) is messages being output in an order that differs from when they
were putatively written. I've also encountered more interesting quirks such as
buffers being flushed in ways that data is broken in undesirable ways
(such as message seeming to be trucated with the next message starting with
the remainder), and programs hanging due to the underlying buffers being filled
and not properly consumed when passing a large message.

Ultimately being aware that such considerations exist should significantly facilitate
working through resulting issues, but many of the facilities are easy to take
for granted and therefore without some awareness it can be particularly
perplexing when some of the realities that
underlie the abstractions rear their heads (particularly if there are
differences due to environmental factors)

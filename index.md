---
title: Home
---

Welcome to my Web site.

My general sentiment towards this site is similar to that expressed by
Tim Berners-Lee in the
[W3C Design Issues Preface.](https://www.w3.org/DesignIssues/Preface.html "Preface - World Wide Web Design Issues"){atime="2024-04-17"}
Sections may also serve as somewhat of an unformal and disorganized
[lab notebook](https://queue.acm.org/detail.cfm?id=3631181 "Dear Diary - ACM Queue"){atime="2024-06-07"}.

## Sub Pages

- [About Me](about_me)
- [Agile](agile)
- [Automotive Technology](automotive_technology)
- [Cognition](cognition)
- [Ear Unclogging](ear_unclogging)
- [Food](food)
- [Headlong](book-headlong)
- [Health](health)
- [Linux Sound](linux_sound)
- [Literals](literals)
- [memex](memex)
- [Pinewood Derby](pinewood_derby)
- [Requirements Engineering](requirements_engineering)
- [Software](software)
- [Software Libraries](software_libraries)
- [Shebang](shebang.html)
- [Subroutine](subroutine.html)
- [Technology is a Tool, Not a Solution](technology_is_a_tool_not_a_solution)
- [Woodworking](woodworking)

## Miscellany

Around Sat Mar 30 05:30:23 AM EDT 2024 my laptop would not start in the
morning There was charge remaining and it went through GRUB and loading
hibernation but the screen threafter was blank.

The first bit of content will concern the construction of the site
itself, which can be viewed in the [Makefile](Makefile).

On January 25, 2024 this site seemed to be unresponsive starting at
\~07:30 ET. Requests would result in a 500 error. The traffic itself
seemed to not be reaching the application instances which to me suggests
an issue with either the load balancer or some of the Knative/Cloud Run
machinery (possibly related to cold starts). There was no obvious cause
for this change based on the logs nor was the application reporting an
issue. Restoring a previous revision and creating a new revision using
the same image both resolved the issue so it is optimistically going to
be ignored for the time being as a fluke. If it recurs further
investigation will be done and information recorded (determing where the
error itself is being thrown should indicate where there is undesirable
state\...presumably things getting stuck).

I also deploy my [site for music](https://music.mattwhipple.com) to GCP,
though that is currently using Hugo pushing to [Cloud
Storage](https://cloud.google.com/storage "Cloud Storage | Google Cloud"){date="2024-02-19"}.
When I initially set it up I configured it for global access, but have
since realized that costs me a small amount monthly\... at the moment
I\'m not expecting the site to be covering any expenses and I\'m not
delusional enough to expect to need global coverage so I\'ve gone back
to reconfigure it to reduce such costs. It\'s certainly still not
costly, but I\'d expect these sites to typically fit comfortably within
free\'ish tiers.

After the costs have continued it certainly appears as though the
readily supported combination of load balancers and object storage
preclude free tier use, so I\'ll likely adjust the site to use Cloud Run
similar to this one.

Replacing the load balancer with a regional configuration would
hopefully reduce the costs (I did knock the site offline for a brief
period but continuing from the above this was unlikely to have any
consequence for this site) but as of right now I\'m still getting dinged
for some lingering resources. I tracked down a static IP that needed to
be removed, and there were also some lingering forwarding rules. I\'ll
have to check the billing (or just wait a month to see if I\'m still
getting charged).


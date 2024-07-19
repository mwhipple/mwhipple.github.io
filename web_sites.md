---
title: Web Sites
---

- [Up to Home](./)

The first bit of content will concern the construction of the site
itself, which can be viewed in the [Makefile](Makefile).

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

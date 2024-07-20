---
title: Incident Log
---

- [Up to Home](./)

Around Sat Mar 30 05:30:23 AM EDT 2024 my laptop would not start in the
morning There was charge remaining and it went through GRUB and loading
hibernation but the screen threafter was blank.

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

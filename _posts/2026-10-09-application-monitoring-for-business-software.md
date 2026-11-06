---
title: "Application Monitoring for Business Software: What to Watch"
date: 2026-10-09 09:00:00 -0500
description: "You shouldn't learn your application is down from a customer. A practical guide to monitoring business applications: what to measure, who gets alerted, and how to avoid alert fatigue."
image: /assets/img/blog/application-monitoring-for-business-software.png
---

If the way you find out a critical application is down is a phone call from a customer, you don't have monitoring. You have customers doing your monitoring for you.

The good news: basic **application monitoring** is inexpensive and quick to set up. Here's what to watch, in order of value.

## 1. Uptime: is it reachable?

The simplest check: an external service requests your application every minute or so and alerts someone if it doesn't respond correctly.

- Check the pages and endpoints that matter, such as login, checkout, and the API, not just the home page
- Check from outside your network
- Confirm the response is *correct*, not just present, since an error page can still return a response

## 2. Errors: is it working correctly?

An application can be up and still be failing, such as a form that errors on submit or an integration silently rejecting data. Error tracking tools capture exceptions from the application and group them so you can see:

- New errors after a deployment
- Errors affecting many users
- Errors in critical workflows

## 3. Scheduled jobs: did it run?

Nightly imports, invoice generation, data syncs, and backups often fail silently. Use "heartbeat" monitoring: the job reports in when it finishes, and if the report doesn't arrive on time, someone is alerted.

## 4. Certificates and domains: is anything about to expire?

Expired SSL certificates and lapsed domain registrations cause sudden, total outages that are entirely preventable. Monitor expiration dates and alert weeks in advance.

## 5. Resources: is it running out of something?

Disk space, memory, database connections, and API rate limits. These problems build slowly and then fail abruptly. Alert when usage crosses a threshold well before the limit.

## 6. Integrations: are external services responding?

If your application depends on a payment processor, shipping provider, or partner API, monitor those calls too. When something breaks, you'll know whether it's you or them.

## Who gets the alert matters as much as the alert

Monitoring only works if a real person receives the alert and knows what to do:

- Route alerts to a named person or rotation, not a shared inbox nobody reads
- Define what's urgent, meaning wake someone up, versus what can wait until morning
- Link each alert type to a runbook (see [Runbooks: The Documentation That Actually Gets Used](/blog/runbooks-documentation-that-gets-used/))

## Avoid alert fatigue

Too many alerts are as bad as none, because people start ignoring them. Start with a small set of high-value checks, tune thresholds so alerts are actionable, and remove any alert nobody acts on.

## Start this week

At minimum, set up uptime checks on your most important application and certificate expiration alerts. Both take less than an hour.

Monitoring with a named engineer responding is a core part of [managed software services](/). It's also question 6 on the free [Software Estate Risk Scorecard](/assets/pdf/software-estate-risk-scorecard.pdf): would you know a critical system was down before a customer told you?

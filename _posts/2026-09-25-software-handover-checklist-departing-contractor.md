---
title: "Taking Over Software from a Departing Contractor: A Handover Checklist"
date: 2026-09-25 09:00:00 -0500
description: "A practical checklist for transferring ownership of custom software when a developer or contractor leaves: access, code, infrastructure, documentation, and knowledge."
---

The best time to plan a software handover is before anyone leaves. The second-best time is the moment you learn they're leaving. Either way, a structured handover saves weeks of reverse-engineering later.

Use this **software handover checklist** whenever a developer, contractor, or agency that built or maintains your software is stepping away.

## 1. Accounts and access

Make sure every account is owned by the company, not the individual.

- [ ] Domain registrar
- [ ] DNS provider
- [ ] Hosting and cloud accounts
- [ ] Code repository (organization ownership, not a personal account)
- [ ] Database and storage
- [ ] Third-party services: email delivery, payments, maps, analytics, authentication
- [ ] App store accounts, if applicable
- [ ] Monitoring, error tracking, and logging tools

For each: transfer ownership to a company account, store credentials in a shared password manager, and confirm at least two people can log in.

## 2. Code

- [ ] All source code is in a company-owned repository
- [ ] The repository contains what's actually running in production, with no "latest version on my laptop"
- [ ] Any private libraries or forks are included
- [ ] You have the right to use and modify the code (check your contract)

## 3. Infrastructure and deployment

- [ ] A list of every server, service, and environment (production, staging, and so on)
- [ ] How code is deployed, step by step
- [ ] Scheduled jobs and what they do
- [ ] Environment variables and configuration, stored securely
- [ ] SSL certificates and renewal process

## 4. Data and backups

- [ ] Where data lives
- [ ] How backups are taken, where they're stored, and how to restore them
- [ ] A test restore performed before the handover is complete

## 5. Documentation and knowledge

Ask the departing person to write, or record a walkthrough of:

- [ ] A one-page system overview
- [ ] How to deploy a change
- [ ] Known issues and workarounds
- [ ] Anything fragile or "don't touch this"
- [ ] Upcoming renewals, expirations, or deprecations they're aware of

A recorded screen-share walkthrough is often the most efficient way to capture this.

## 6. After they're gone

- [ ] Rotate passwords and API keys they had access to
- [ ] Remove their access from every system
- [ ] Verify everything still works after rotation
- [ ] Confirm alerts and renewal notices go to a company address

## If it's already too late

If the person is already gone and the handover didn't happen, don't panic. Start with access recovery: domain, hosting, and code repository first, since those are hardest to replace. Then work through the list as far as you can. Most systems can be recovered and documented, but it takes focused effort.

Taking over orphaned systems is exactly what we do with [managed software services](/). If you're facing a handover right now, [get in touch](/contact/).

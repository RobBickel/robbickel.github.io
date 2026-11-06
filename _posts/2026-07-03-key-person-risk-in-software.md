---
title: "Key-Person Risk in Software: What Happens When Your Developer Leaves"
date: 2026-07-03 09:00:00 -0500
description: "When one person is the only one who understands a critical system, their departure becomes a business risk. How to measure key-person risk in software and reduce it."
image: /assets/img/blog/key-person-risk-in-software.png
---

Here's a question worth asking in your next leadership meeting: *if one specific person left tomorrow, which of our systems would nobody be able to change?*

If the answer includes anything that touches revenue, customers, or compliance, you have **key-person risk** in your software.

## What key-person risk looks like

It's not always a full-time developer. Common versions include:

- A contractor who built your customer portal and still holds the hosting login
- An operations manager who wrote the spreadsheet macros that drive inventory
- An IT generalist who set up the integration between your CRM and accounting system
- A founder or early employee who built the original internal tools

The risk isn't that these people did anything wrong. Usually they did something valuable. The risk is that the knowledge, and often the access, lives with them rather than with the company.

## Why it's easy to miss

Key-person risk is invisible while the person is around. They answer questions, fix things quickly, and keep everything running. It only becomes visible at the worst possible moment: when they resign, get sick, change roles, or simply stop answering emails after a contract ends.

By then, recovering access and understanding can take weeks, sometimes longer.

## How to assess it

For each system your business depends on, ask:

1. **Who could safely make a change to this today?** If the answer is one person, that's a flag. If it's nobody, that's a bigger one.
2. **Who holds the credentials?** Hosting, domain registrar, code repository, third-party APIs, database.
3. **Is there documentation a competent engineer could use without help?** Not perfect documentation, just enough to deploy a fix.
4. **What would an outage cost per day?** This sets how urgently you need to act.

## How to reduce it

- **Move access to the company.** Accounts should belong to company email addresses and live in a shared password manager, with at least two people able to reach them.
- **Capture the knowledge.** A one-page overview per system: what it does, who uses it, what it connects to, how to deploy it.
- **Create a second set of hands.** Whether that's another employee or an outside partner, someone else should be able to operate the system.
- **Make ownership explicit.** Assign it formally rather than assuming it.

This is a core part of what we do with [managed software services](/): taking documented, accountable ownership so no single person is a point of failure, including anyone on our team.

Want a quick read on your exposure? Try the free [Software Estate Risk Scorecard](/assets/pdf/software-estate-risk-scorecard.pdf).

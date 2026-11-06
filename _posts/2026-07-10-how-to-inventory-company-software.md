---
title: "How to Inventory Your Company's Software: A Practical Guide"
date: 2026-07-10 09:00:00 -0500
description: "A step-by-step guide to building a software inventory: where to look, what to record, and how to turn the list into decisions."
image: /assets/img/blog/how-to-inventory-company-software.png
---

You can't manage, secure, or reduce what you can't see. A **software inventory** is the foundation for every other improvement, and it's simpler to build than most people expect.

Here's the process we use.

## Step 1: Start with the money

The fastest way to find software is to follow the spending. Pull the last 12 months of:

- Corporate card statements
- Accounts payable and vendor lists
- Cloud provider invoices (AWS, Azure, Google Cloud, hosting companies)
- Domain registrar and DNS renewals

Every recurring software charge goes on the list. You'll almost certainly find tools nobody remembers buying.

## Step 2: Ask the people who use it

Spending won't reveal free tools, internal scripts, or systems paid for years ago. So ask each department head one question:

> "What software would stop you from doing your job if it went down tomorrow?"

That question surfaces the systems that matter, including the spreadsheet with macros that runs half of operations.

## Step 3: Look at the technical footprint

If you have access, check:

- Code repositories (GitHub, GitLab, Bitbucket) and who owns them
- Scheduled jobs and automation tools (Zapier, Make, cron jobs, scheduled scripts)
- Integrations configured inside major platforms such as your CRM, ERP, and accounting system
- Servers and cloud accounts, including the ones nobody logs into anymore

## Step 4: Record the right fields

For each item, capture:

| Field | Why it matters |
|---|---|
| Name and purpose | What it actually does, not just what it was bought for |
| Business owner | Who decides what happens to it |
| Technical owner | Who maintains it, or "nobody" |
| Users | Who would notice if it disappeared |
| Annual cost | Licenses, hosting, and estimated staff time |
| Dependencies | What it connects to, upstream and downstream |
| Access | Where credentials live and who holds them |
| Criticality | Impact if it fails: high, medium, or low |

A spreadsheet is fine. The goal is clarity, not a new tool.

## Step 5: Turn the list into decisions

Once you have the inventory, sort each system into one of four buckets:

- **Keep:** it works and the business depends on it
- **Consolidate:** it overlaps with another tool
- **Rebuild:** it's critical but too fragile to maintain
- **Retire:** nobody will miss it, so export the data and shut it off

Then prioritize: anything high-criticality with no technical owner goes to the top.

## Keep it current

An inventory is only useful if it stays accurate. Review it quarterly, and add a simple rule: no new tool goes into use without being added to the list.

If you'd like help, a [Software Portfolio Audit](/portfolio-audit/) produces this inventory along with a dependency map, risk assessment, and prioritized plan.

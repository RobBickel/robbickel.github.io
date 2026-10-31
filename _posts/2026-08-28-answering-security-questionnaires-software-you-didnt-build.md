---
title: "How to Answer a Security Questionnaire About Software You Didn't Build"
date: 2026-08-28 09:00:00 -0500
description: "Customers, auditors, and insurers increasingly ask detailed security questions about your applications. How to prepare honest, confident answers, even for inherited software."
---

It usually arrives as a spreadsheet with dozens of rows. A large customer, a cyber insurer, or an auditor wants to know how your applications are secured. Who has access? How often are they patched? Where are credentials stored? How are backups tested?

If you built and actively maintain your software, these are straightforward. If the software was built by a contractor years ago and nobody's really owned it since, they're uncomfortable. "We're not sure" isn't an answer that wins contracts or lowers premiums.

Here's how to get to confident, honest answers.

## The questions that come up most

Whatever the format, most **security questionnaires** circle the same areas:

1. **Access control:** Who can access production systems and data? How is access granted and removed?
2. **Authentication:** Is multi-factor authentication enforced for administrative access?
3. **Patching:** How often are applications and their dependencies updated?
4. **Secrets management:** Where are passwords, API keys, and certificates stored?
5. **Backups and recovery:** Are backups taken, stored separately, and tested?
6. **Monitoring and incident response:** How would you detect and respond to an incident?
7. **Vendor management:** Which third parties process your data?
8. **Data protection:** Is data encrypted in transit and at rest?

## Step 1: Inventory what's in scope

You can't answer for systems you haven't identified. List every application that stores or processes customer data, and note where it's hosted and who maintains it.

## Step 2: Fix the quick wins first

Several common gaps can be closed in days, not months:

- Move administrative accounts to company-owned logins and enable multi-factor authentication
- Remove access for people who've left
- Put credentials in a password manager or secrets store, and rotate anything a departed person could reach
- Confirm backups are running, then test one restore

Each of these turns a "no" into a "yes" you can stand behind.

## Step 3: Address the harder gaps with a plan

Some gaps take longer, such as updating an outdated framework or adding proper logging. It's acceptable to answer "in progress, target completion by a specific date," as long as that's true and you're actually doing it. A credible remediation plan is far better than a vague answer.

## Step 4: Document as you go

Most questionnaires ask for evidence or policies. Keep short written records of:

- Your access review process
- Your patching schedule
- Your backup and restore procedure, including the date of the last test
- Your incident response contacts and steps

These documents make the *next* questionnaire take hours instead of weeks.

## Step 5: Never guess

The worst answer isn't "no." It's a confident "yes" that turns out to be false. Inaccurate answers can create contractual and insurance problems later. If you don't know, find out.

## Make it repeatable

Questionnaires aren't going away. They're becoming more common and more detailed. The sustainable solution is software that's actively owned: patched on a schedule, monitored, documented, and access-controlled. That's the core of [managed software services](/), and repository [security scanning](/services/security-scanning/) is often the fastest place to start.

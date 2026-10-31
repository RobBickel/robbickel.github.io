---
title: "Orphaned Software: The Business Risk Nobody Owns"
date: 2026-06-26 09:00:00 -0500
description: "Orphaned software is any system your business depends on that no one is accountable for maintaining. Here's how to spot it and what to do about it."
---

Every company I talk to has at least one system like this. It runs something important, billing, scheduling, order routing, customer onboarding, and it was built by someone who isn't around anymore. It mostly works. Nobody wants to touch it.

That's **orphaned software**: a system your business depends on with no one accountable for keeping it healthy.

## How software becomes orphaned

It rarely happens through neglect in the obvious sense. Usually it's a sequence of reasonable decisions:

1. A team needs a tool, so a contractor or a technical employee builds one.
2. It works, so people start depending on it.
3. The builder moves on: the contract ends, they change roles, they leave the company.
4. Nobody is formally handed ownership, because the system "just runs."

Years later, it's load-bearing infrastructure with no owner, minimal documentation, and credentials scattered across old inboxes.

## Signs you have orphaned software

- **Nobody can safely change it.** Small requests get deferred indefinitely because changes feel risky.
- **No one is watching it.** There's no monitoring, so outages are discovered by customers or staff.
- **The keys are scattered.** Hosting, domain, and repository logins belong to individuals, some of whom have left.
- **It still bills.** Hosting and licenses renew automatically whether anyone is using the system or not.
- **Security questions stall.** When a customer or insurer asks how it's patched and who has access, the honest answer is "we're not sure."

## Why it matters more than it seems

Orphaned software tends to fail in ways that are expensive rather than dramatic. A dependency goes years without updates and develops a known vulnerability. A cloud account tied to a former employee's email gets suspended. A server runs out of disk space at 2 a.m. and nobody gets an alert. A simple change takes three months because someone has to reverse-engineer the code first.

None of these are technology problems at their root. They're **ownership** problems.

## What to do about it

You don't need to rewrite anything to start. The first steps are mostly organizational:

1. **Find everything.** Build a list of the systems you depend on. Twelve months of card and accounts-payable statements is a good starting point.
2. **Name an owner for each.** Both a business owner who makes decisions and a technical owner who maintains it.
3. **Secure the keys.** Move accounts to company-owned logins and a shared password manager.
4. **Turn the lights on.** Add uptime monitoring and confirm backups can be restored.
5. **Write it down.** A one-page summary and a few runbooks per system.

I've written these up in more detail in [The Orphaned Software Playbook](/assets/pdf/orphaned-software-playbook.pdf), a free 10-page guide.

If you'd rather someone else take ownership, that's exactly what [managed software services](/) are for.

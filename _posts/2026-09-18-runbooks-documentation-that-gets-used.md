---
title: "Runbooks: The Documentation That Actually Gets Used"
date: 2026-09-18 09:00:00 -0500
description: "Most software documentation is never read. Runbooks are different: short, task-focused instructions for operating a system. How to write runbooks that turn tribal knowledge into company property."
---

Most companies that try to "document their systems" end up with one of two outcomes: nothing, or a long, ambitious document that was out of date the week after it was written.

There's a better starting point: **runbooks**. A runbook is a short, step-by-step guide for a specific operational task. It isn't a description of how a system works. It's instructions for doing something with it.

## Why runbooks work when other documentation doesn't

- **They're written for a moment of need.** Someone has to restart a service, restore a backup, or rotate a key, so they open the runbook.
- **They're short.** One task, one page.
- **They're testable.** Either following the steps works, or it doesn't.
- **They decay visibly.** When a step is wrong, the person following it notices and can fix it.

## The runbooks every critical system should have

Start with these, in roughly this order:

1. **System overview (one page):** what it does, who uses it, where it's hosted, what it connects to, and who owns it
2. **Access:** where credentials live and how to get access
3. **Deploying a change:** how code gets from the repository to production
4. **Restarting or recovering:** what to do when it's down
5. **Restoring from backup:** where backups are and step-by-step restore instructions
6. **Rotating credentials:** how to replace a password or API key without breaking things
7. **Common issues:** the three or four problems that come up repeatedly, and how to fix them

That's enough to remove most key-person risk from a system.

## How to write a good runbook

- **Title it as a task.** "Restore the customer database from backup," not "Database information."
- **State the prerequisites.** Access needed, tools required, and how long it takes.
- **Number the steps.** One action per step.
- **Include the exact commands or clicks.** Don't write "update the config"; say which file and which setting.
- **Say how to verify success.** "The dashboard loads and shows today's orders."
- **Say what to do if it fails,** including who to contact.
- **Date it.** Note when it was last tested.

## Where to keep them

Close to the work. A folder in the code repository, a shared wiki, or a documentation tool your team already uses. The best location is wherever someone will look during an incident, and somewhere that doesn't depend on the system being up.

## The test that matters

> Could a competent engineer who has never seen this system complete the task using only the runbook?

If yes, that knowledge now belongs to your company. If not, revise it and try again.

Keeping runbooks current, not ceremonial, is part of every [managed software services](/) engagement. For the broader process of regaining control over unowned systems, see [The Orphaned Software Playbook](/assets/pdf/orphaned-software-playbook.pdf).

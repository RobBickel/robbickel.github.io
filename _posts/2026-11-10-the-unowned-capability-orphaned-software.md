---
title: "The Unowned Capability: Orphaned Software Through an Architecture Lens"
date: 2026-11-10 09:00:00 -0600
description: "Orphaned software as an architecture problem: how capabilities lose their owners, how to find them, and how to restore ownership."
image: /assets/img/blog/the-unowned-capability-orphaned-software.png
---

Most established companies have at least one system that runs something important and that nobody is accountable for. Billing reconciliation, order routing, customer onboarding, field scheduling. It was built by someone who has moved on. It mostly works. People are reluctant to touch it.

The usual name for this is orphaned software. In the last issue I argued that ownership belongs at the level of the business capability rather than the individual application. Seen that way, orphaned software is more precisely described as an **unowned capability**: an ability the business depends on, realized by components that no one is accountable for keeping healthy, changing safely, or retiring on purpose.

The distinction is practical. An orphaned application sounds like a technical problem to be fixed. An unowned capability is a governance gap, and it is closed with governance: a named owner, a known lifecycle state, and a service level that matches its importance.

## How capabilities lose their owners

Capabilities rarely become unowned through neglect in the obvious sense. The pattern is a sequence of reasonable decisions:

1. A team needs a capability realized quickly, so someone builds a solution: a contractor, a technically minded employee, a vendor's professional services team, or increasingly an AI tool.
2. The solution works, and the business starts to depend on it.
3. The builder moves on. The contract ends, the employee changes role, the vendor engagement closes.
4. Ownership is never formally transferred, because the system appears to run on its own.

In TOGAF terms, the project completed its implementation but nothing carried the solution into implementation governance (Phase G) or architecture change management (Phase H). The transition architecture was delivered and never closed out. There was no equivalent of an architecture contract that named who would be accountable once the build team left.

AI has shortened every step of that sequence. A capable employee can now produce a working integration or an internal application in an afternoon, and an agent that automates a workflow in a week. The speed is valuable. It also means realizations are being created far faster than ownership is being assigned, which is exactly how unowned capabilities accumulate.

## Recognizing an unowned capability on the map

If you have even a rough capability map, unowned capabilities show up as patterns rather than anecdotes. The signals I look for:

- **No technical owner for one or more realizing components.** The business owner can describe what the capability does, but nobody can say who maintains the systems behind it.
- **No lifecycle state.** Nobody has decided whether the component is being invested in, tolerated, or phased out, so by default it is none of those.
- **Deferred change.** Requests touching the capability wait for months, because every change feels risky to the people available to make it.
- **Access held by individuals.** Hosting, domain, repository, and vendor accounts sit under personal logins rather than company custody.
- **Questions that cannot be answered.** When a customer's security review, an auditor, or an insurer asks how the system is patched and who has access, the honest answer is uncertain.

None of these require a crisis to find. They can all be surfaced in a working session with the business owner of each Level 2 capability.

## Why this is a governance problem, not a technology problem

It is tempting to treat an unowned capability as technical debt and schedule a rewrite. That usually makes things worse, because it creates a new realization without fixing the reason the old one lost its owner.

The real exposure is concentration. Knowledge of how the capability actually works, including business rules that exist only in code, sits with one person, one vendor, or no one. Access sits with individuals. Decisions about the capability's future are not being made at all. TOGAF describes architecture governance as the practice by which architectures are managed and controlled, including compliance and change. An unowned capability is simply one that has fallen outside that practice.

The consequences tend to be expensive rather than dramatic. A dependency goes years without updates. A cloud account tied to a former employee is suspended. A small change takes a quarter because someone must reverse-engineer the code first. Each is a symptom of the same gap.

## Restoring ownership

Ownership can be restored without rebuilding anything. The sequence I recommend:

1. **Place the capability on the map.** Identify which Level 2 capability the components realize and score its importance. This decides how much ownership it warrants.
2. **Name a business owner and a technical owner.** The business owner decides what the capability must do. The technical owner is accountable for every realizing component, whoever built it.
3. **Bring access into company custody.** Move accounts to company-owned identities, store credentials in a managed vault, and record who can do what.
4. **Baseline the realization.** Describe the components, their dependencies, and their data flows. A simple ArchiMate-style view of the capability, its application components, and its interfaces is enough.
5. **Set a service level proportional to importance.** Monitoring, tested recovery, and response targets for critical capabilities. Lighter treatment, chosen deliberately, for the rest.
6. **Assign a lifecycle state.** Decide whether each component is being invested in, tolerated, migrated, or eliminated. The next issues cover how to make that decision well.

After these steps the capability has an owner, a documented realization, and a future someone has chosen. That is the difference between a system that happens to run and one the business actually controls.

## When the failure comes first

Often the first sign of an unowned capability is not a review. It is an outage, a data error, or a change that cannot be made when the business needs it. The people who built the system are unavailable, and the team on hand does not know where to start.

That is a moment for senior judgment, not heroics. A good urgent engagement follows a disciplined order: stabilize the capability so the business can operate, diagnose the actual cause rather than the first symptom, make the smallest safe fix, and leave behind documentation and access in company custody. Done that way, the incident becomes the first step of restoring ownership rather than a story people retell.

My team takes on exactly this kind of break-fix and urgent consulting work. It is often the natural place for a relationship to start. Once the immediate issue is resolved, the natural next step is to carry that capability forward with after-build ownership, so the next problem is caught by monitoring instead of by a customer.

## The AI dimension

AI-built tools deserve specific attention, because they create realizations without the traditional checkpoints. There may be no repository a reviewer can see, no deployment pipeline, and no record of which model, prompt, or vendor API the tool depends on. When the model changes or the person who built the tool leaves, the capability can degrade quietly.

The NIST AI Risk Management Framework places accountability at the center of its Govern function: organizations are expected to know which AI systems they run and who is responsible for them. ISO/IEC 42001 builds a management system around the same expectation. For a mid-sized company, the practical version is straightforward. Every AI component goes on the capability map, gets a technical owner, and gets a lifecycle state, exactly like any other realization. Treated that way, AI experimentation can move quickly without producing the next generation of unowned capabilities.

## Where ownership lives over time

Restoring ownership once is not the same as keeping it. Capabilities lose owners gradually, through turnover, reorganization, and new realizations arriving faster than governance can absorb them. Keeping ownership intact is continuous work: changes assessed against the map, access kept in custody, documentation kept current, and lifecycle decisions carried through.

That ongoing work is what my agency does. We take after-build ownership of the applications behind a set of capabilities and own change management for them, so every change is governed and every component stays owned. When something needs attention urgently, the same team that knows the estate is the one that responds.

In the next issue, I will describe how a portfolio audit builds the capability map in the first place: the discovery methods, the analysis, and the decisions it should leave you ready to make.

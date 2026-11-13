---
title: "Building the Map: The Software Portfolio Audit as Baseline Capability Architecture"
date: 2026-11-11 09:00:00 -0600
description: "The software portfolio audit as baseline capability architecture: what it maps, what it produces, and how it sets up the next decisions."
image: /assets/img/blog/building-the-map-software-portfolio-audit.png
---

Most mid-sized companies do not have a software problem. They have a visibility problem. Somewhere between the third internal tool, the fifth "temporary" integration, and the first AI agent someone built over a weekend, the business lost track of what it actually owns and what each piece is for.

In enterprise architecture terms, what is missing is a **baseline architecture**: an accurate description of the current state, against which every future decision can be measured. TOGAF builds baseline descriptions into the Architecture Development Method for exactly this reason. Business, data, application, and technology baselines are developed so that gap analysis can show what must change to reach the target.

A software portfolio audit is how a mid-sized company produces that baseline without an architecture department. Done well, it delivers a capability map, an application portfolio, the relationships between them, and a ranked set of decisions. This issue describes what that looks like in practice.

## What the audit produces, in architecture terms

The audit's outputs correspond closely to artifacts TOGAF describes, scaled to a company of a few hundred people:

- **A baseline business capability map,** at Level 1 and Level 2, in business language and validated by the people who run each area.
- **An application portfolio catalog** listing every application, integration, automation, data store, and AI component, with purpose, users, cost, technical owner, and underlying technology.
- **A capability-to-application cross-reference** showing which components realize which capabilities. This is the single most useful view the audit produces.
- **An interface and dependency view** tracing how data moves between systems and where single points of failure sit.
- **A capability heat map** rating each Level 2 capability on strategic importance and on the performance of its current realization.
- **A gap analysis and recommendations,** covering what to keep, invest in, consolidate, migrate, rebuild, or retire, and the ownership model that should follow.

Everything produced belongs to the client. It is structured so that an internal team or any partner can act on it.

## Discovery: finding what actually runs

The most common mistake in software inventories is relying on what people remember. Discovery works better when it is triangulated from several independent sources:

- **Interviews organized by capability, not by system.** Asking the owner of Customer Onboarding to walk through how a new customer is set up surfaces the spreadsheet, the script, and the AI-assisted email workflow that a system-by-system interview would miss.
- **The financial trail.** Twelve months of accounts-payable and corporate card records reveal every subscription, hosting account, and API the business pays for, including the ones nobody mentions.
- **Identity and access records.** Single sign-on application lists and admin consoles show which tools people actually log into.
- **Code and infrastructure.** Repositories, cloud accounts, domains, and DNS records show what has been built and where it runs.
- **AI usage.** API keys on company accounts, automation platforms, and team-built assistants show where AI components have entered real workflows.

Where sources disagree is usually where the most important findings are.

## Analysis: dependencies, risk, and cost

With the inventory in place, analysis turns it into understanding. Dependency tracing follows each integration end to end, identifying shared credentials, scheduled jobs, and the downstream processes that rely on them. This is where the surprises tend to be, such as a nightly script that three departments depend on without knowing it exists.

Risk is assessed per component across several dimensions:

- **Key-person concentration:** how much of the knowledge needed to change the component sits with one person or one vendor.
- **Undocumented business logic:** rules that exist only in code or in someone's head.
- **Security posture:** access controls, credential handling, and how far behind current patch levels the component's dependencies are.
- **Recoverability:** whether backups exist and whether a restore has ever been tested.
- **Supportability:** whether the underlying frameworks, runtimes, and platforms are still supported by their vendors.

Cost is then allocated to capabilities rather than to systems. When three tools together realize one capability, the combined cost is what matters for decisions, and it is often a surprise.

The heat map brings this together. Capabilities that are highly important and poorly realized are where investment belongs. Capabilities that are low in importance and expensive to sustain are candidates for simplification. Redundancy, where several components realize the same capability, is usually where the fastest savings are.

## Synthesis: from findings to a target state

A list of problems is not a plan. The audit ends with a target state for the portfolio and a sequence of transitions to reach it, a lightweight version of TOGAF's opportunities and solutions and migration planning phases.

Each component receives a recommendation with a rationale, ranked by risk reduction and return. The recommendations are grouped into transitions that can be scoped and executed independently: consolidating two scheduling tools into one, bringing an unowned billing integration under ownership, retiring a portal nobody uses. Each transition comes with an ownership model for what remains.

A typical engagement runs about six weeks. Discovery takes the first two, analysis runs from weeks two through four, and synthesis from four through six, ending in a working session with leadership to walk through findings and agree on priorities. The audit is a fixed-scope engagement under a statement of work.

## An illustrative example

Consider a composite example, typical of what an audit finds in a regional distribution business of around three hundred people. Its Level 2 capability Order Fulfilment turns out to be realized by six components: the ERP's order module, a warehouse management product, a custom integration between them built by a contractor several years ago, a nightly script that reconciles shipment status, a shared spreadsheet the customer service team uses to track exceptions, and a recently added AI assistant that drafts delay notifications to customers.

Seen system by system, each of these looks reasonable. Seen against the capability, the picture changes. Order Fulfilment scores as one of the three most important capabilities in the business, yet two of its six components have no technical owner, the integration depends on a framework version its vendor no longer supports, and the exceptions spreadsheet is carrying business rules nobody has written down. The AI assistant works well, but it uses an API key on a personal account.

The recommendations follow directly. Bring the integration and the reconciliation script under ownership immediately and plan the framework upgrade as a governed change. Move the exception rules into the warehouse product, where they can be maintained, and retire the spreadsheet. Register the assistant, move its credentials into company custody, and give it an owner. None of these decisions needed a rewrite. All of them needed the map.

## The AI register

An audit today should include a register of AI components as a distinct section of the portfolio catalog. For each one it records the capability it serves, the models and vendors it depends on, the data it touches, its owner, and its lifecycle state.

This aligns with the Map function of the NIST AI Risk Management Framework, which centers on understanding the context in which each AI system operates. It also gives leadership a factual basis for AI decisions. Most companies discover they have more AI in production than they thought, much of it valuable, and nearly all of it without an owner.

## After the audit

The audit makes the next decisions obvious. What it does not do is carry them out. There are three common paths, and often a mix:

1. **Execute internally.** The documentation is structured for handoff, and some transitions are well suited to an internal team.
2. **Bring in a partner for the transitions.** Consolidations, migrations, and retirements are change management work. My team takes ownership of those changes under their own statements of work, governed against the capability map the audit produced.
3. **Hand over ongoing ownership.** For the components that remain, after-build ownership keeps them monitored, patched, recoverable, documented, and improving, at a service level matched to each capability's importance.

An audit can also start in the other direction. A company calls about an urgent failure in a critical system, my team stabilizes it as a break-fix engagement, and the obvious next question is what else looks like that. The audit answers it.

If you continue into ongoing services, the audit and every later engagement sit under the same enterprise service agreement, with separate statements of work, so there is no second procurement cycle.

In the next issue, I will take the capability map and heat map the audit produces and show how they drive lifecycle decisions: what to build, what to buy, what to tolerate, and what to retire.

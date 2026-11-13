---
title: "Own the Capability, Not the Application: Managed Software Services Through an Enterprise Architecture Lens"
date: 2026-11-09 09:00:00 -0600
description: "Managed software services seen through capability-based planning: why the application is the wrong unit of ownership, and what to own instead."
image: /assets/img/blog/own-the-capability-not-the-application.png
---

Large enterprises rarely ask "what applications do we run?" as their first question. They ask what the business needs to be able to do, and then which systems, people, and processes make that possible. Mid-sized companies usually start from the other end. They have a list of applications, a list of vendors, and a list of people who know how things work, and they try to manage software one system at a time.

The difference matters more every year. Software has become cheap to create and expensive to own. AI tools have made it faster than ever to stand up a portal, an integration, or an agent that automates a workflow. None of that changes who is accountable for the result five years from now. The enterprise discipline that answers that question is capability-based planning, and it is the right lens for understanding what managed software services are actually for.

## Why the application is the wrong unit of ownership

The TOGAF Standard defines a capability as an ability that an organization, person, or system possesses. In business architecture practice, a business capability describes *what* the business does, in business terms, independent of *how* it is done today: Quote to Order, Customer Onboarding, Field Scheduling, Revenue Recognition, Supplier Management.

Capabilities are stable. A distribution company will need to fulfil orders in ten years, even if the order management system, the warehouse integration, and the people running them all change. Applications are the opposite. They are realizations of capabilities, in ArchiMate terms, and they are replaced, extended, duplicated, and abandoned on a much shorter cycle.

When ownership is assigned to applications, three predictable things happen:

- **Gaps disappear from view.** A capability that is realized by a spreadsheet, a nightly script, and one person's memory has no application to put on the list, so it never gets an owner.
- **Redundancy looks like coverage.** Three tools that each partly support Customer Onboarding read as three healthy systems, rather than one capability with a fragmented realization and three times the cost.
- **Decisions get made at the wrong level.** Debates about upgrading or replacing a system happen without reference to how important the underlying capability is, or how well it performs today.

Assigning ownership to capabilities fixes all three, because the question changes from "who maintains this system?" to "who is accountable for this ability, and how well is it realized?"

## The capability map as an operating document

In TOGAF, the Business Capability Map is a core artifact of Business Architecture (Phase B of the Architecture Development Method), and the Application Portfolio Catalog and its cross-reference matrices belong to the Information Systems Architectures (Phase C). Enterprises produce these as part of formal architecture work. A mid-sized company needs the same artifacts, just at a scale that fits on a few pages and gets used every quarter.

A practical capability map for a company of a few hundred people usually has:

- **Level 1:** eight to twelve capabilities that describe the whole business, such as Sell, Deliver, Serve, Finance, People, and Comply
- **Level 2:** thirty to sixty capabilities beneath them, which is where most decisions happen
- **Level 3:** detail only where a capability is complex, critical, or contested

Each application, integration, automation, and data store is then mapped to the Level 2 capabilities it realizes. That single cross-reference does more for portfolio clarity than any amount of documentation about individual systems. It shows where several systems realize the same capability, which capabilities have no reliable realization at all, and which components carry a disproportionate share of the business.

The map becomes truly useful when it carries a heat map. Rate each Level 2 capability on two dimensions: strategic importance to the business, and the current performance of its realization. The capabilities that score high on importance and low on performance are where investment belongs. Those that score low on both are candidates for simplification or retirement, a judgment I will come back to in a later issue.

## What changes when capabilities have owners

Ownership at the capability level has a specific shape. In my experience it needs four things to be real:

1. **A named business owner** who decides what the capability needs to do and what good performance looks like.
2. **A named technical owner** accountable for every component that realizes it, regardless of who built or bought those components.
3. **A lifecycle state** for each component: planned, active, contained, being phased out, or retired. A component without a state is a component nobody is deciding about.
4. **A service level proportional to importance.** Revenue-bearing capabilities get monitoring, tested recovery, and response targets. Low-importance capabilities get less, deliberately.

Effort then follows importance, rather than whichever system is loudest this month.

## Where managed software services fit in the architecture operating model

The TOGAF Architecture Development Method describes a full cycle, from architecture vision through business, information systems, and technology architecture, then opportunities, migration planning, implementation governance (Phase G), and architecture change management (Phase H). Large enterprises staff that cycle with architects, portfolio managers, and governance boards.

Mid-sized companies rarely lack strategy. What they usually lack is Phases G and H: the ongoing discipline that keeps the systems in production aligned with what the business decided, and manages change to them deliberately. That operational half of the cycle is where software quietly drifts out of ownership.

Managed software services are, in architecture terms, a continuous Phase G and H for the application and integration layer. Changes are governed against the capability map, lifecycle decisions are carried through rather than deferred, and the map itself is reviewed with leadership on a fixed cadence so the next quarter's work follows from it.

## Who carries the ownership after the build

This is the part of the cycle my agency exists to carry. Whoever built a system, whether an internal team, a contractor, a vendor, or an AI tool, someone has to own it from the day it goes live. We take that on in three ways:

- **After-build ownership.** We become the accountable technical owner for the applications that realize a set of capabilities: monitoring, patching, tested recovery, documentation, and lifecycle stewardship, at a service level matched to each capability's importance.
- **Change management ownership.** We own the path from request to release for those applications. Every change is assessed against the capability map, built by engineers who know the whole estate, tested, and documented, so the realization stays aligned with what the business decided.
- **Break-fix and urgent consulting.** When a critical system fails and the people who built it are no longer available, senior engineers diagnose it, stabilize it, and leave it documented. That first engagement is often a natural place for the capability map to begin.

The commercial structure mirrors the architecture. An enterprise service agreement plays the role that an Architecture Contract plays in TOGAF governance: it fixes the terms of accountability. Statements of work then scope each engagement, whether ongoing ownership of a capability area, a defined transition, or a single urgent fix, much like the work packages that come out of migration planning.

## The AI dimension

AI changes the economics of realization dramatically, and leaves the economics of ownership largely untouched. A team can now build a working integration, an internal tool, or an autonomous agent in days. Each of those is an application component realizing part of a capability, whether anyone records it or not.

Without a capability map, AI adoption tends to produce the same pattern that shadow IT produced a decade ago, only faster: many small realizations, each useful, collectively unowned. With a capability map, the same experimentation becomes manageable. Every AI component gets placed against the capability it serves, given an owner and a lifecycle state, and assessed against the importance of what it touches. AI-built applications are becoming a large share of the systems that need an owner after launch, because building them took days and nobody planned for the years that follow.

The emerging AI governance frameworks point in the same direction. The NIST AI Risk Management Framework organizes its guidance around Govern, Map, Measure, and Manage, and its Map function is essentially about understanding the context each AI system operates in. ISO/IEC 42001 sets out a management system for AI that assumes clear ownership and lifecycle control. A capability map is the most practical place for a mid-sized company to anchor both. It is also what makes it possible to say yes to more AI experimentation, because leadership can see where each experiment lands.

## Where to start this quarter

You do not need an architecture team to begin. A focused first pass looks like this:

1. **Draft the Level 1 and Level 2 map** with three or four leaders in a working session. Use business language. Two pages is enough.
2. **Map every system you can find to it,** including spreadsheets, scripts, automations, and AI tools. Card statements and accounts-payable records are a reliable way to find the ones nobody mentions.
3. **Name owners** for each Level 2 capability, business and technical.
4. **Score importance and performance,** and mark the three capabilities where the gap is largest.
5. **Assign a lifecycle state** to every component, even provisionally.

The result is not a document for a shelf. It is the operating picture for every software decision you make next. Most leadership teams find that drafting the map is the easy part. Keeping it true, with every component owned, every change governed, and every lifecycle decision carried through, is the ongoing work. That is where a partner earns its place, and it is the work my team takes on.

This newsletter will work through that picture one layer at a time: what happens to capabilities nobody owns, how a portfolio audit builds the map, how build, buy, and retire decisions follow from it, and how leadership and operational ownership divide the work.

---
title: "Direction and Ownership: The Fractional CTO and Managed Software Services in the Architecture Operating Model"
date: 2026-11-13 09:00:00 -0600
description: "Where a fractional CTO and managed software services each sit in the architecture operating model, and when you need one, the other, or both."
image: /assets/img/blog/direction-and-ownership-fractional-cto-managed-software-services.png
---

Companies without an in-house technology leader eventually reach a point where they know they need someone. Two answers come up most often: engage a fractional CTO, or engage a managed software services provider. They are frequently presented as alternatives. In architecture terms they are not. They cover different halves of the same operating model, and understanding which half is missing is the fastest way to choose well.

This series has argued that software should be owned at the level of business capabilities, that unowned capabilities are a governance gap, that a portfolio audit builds the map, and that lifecycle decisions follow from it. This final issue asks who should do each part of that work.

## The architecture operating model

TOGAF begins its Architecture Development Method with a Preliminary Phase whose purpose is to establish the organization's architecture capability: the principles, governance structures, roles, and processes through which architecture is practiced. Large enterprises staff this with architects, portfolio managers, and an architecture board.

The rest of the method divides naturally into two kinds of work:

- **Direction.** Architecture vision, business and information systems architecture, technology architecture, opportunities and solutions, and migration planning (Phases A through F). This is where the target state is defined and the route to it is chosen.
- **Ownership.** Implementation governance and architecture change management (Phases G and H). This is where the systems in production are kept aligned with what was decided, and where change is managed deliberately over time.

A mid-sized company needs both kinds of work, at a scale that fits. A fractional CTO typically provides direction. Managed software services provide ownership.

## What a fractional CTO owns

A fractional CTO is a part-time technology executive. The role centers on decisions and their rationale:

- Technology vision and principles aligned with business strategy
- Target-state architecture and the investment case for reaching it
- Build, buy, and retire decisions at the capability level
- Vendor strategy, evaluation, and negotiation
- Organization design and hiring for technology roles
- Translating technical reality for leadership, the board, and investors
- Technical due diligence for acquisitions and financing

The defining word is direction. A fractional CTO decides and advises. They are rarely the person applying patches, fixing a failing integration, or responding when a critical system stops working outside business hours.

## What managed software services own

A managed software services provider takes accountable, ongoing ownership of the applications and integrations that realize the company's capabilities:

- After-build ownership: monitoring, patching, tested recovery, documentation, and access custody, at a service level matched to each capability's importance
- Change management: requests assessed against the capability map, built, tested, released, and recorded
- Lifecycle execution: carrying migrations, consolidations, and retirements through to completion
- Incident response and break-fix for the components in scope
- Portfolio data: keeping the capability map, application catalog, and heat map current, so direction is based on fact

The defining word is ownership. The work is keeping what the business already relies on healthy, governed, and improving, every week.

## What happens when one exists without the other

Each half fails in a recognizable way when the other is missing.

**Direction without ownership** produces strategies that do not land. Target states are drawn and agreed, but the transitions to reach them stall, because nobody is accountable for carrying out change against production systems. Retirements are approved and never finished. The capability map is accurate on the day it is presented and drifts from reality soon after.

**Ownership without direction** produces drift of a different kind. Systems are well maintained, but they are maintained as they are. Local fixes accumulate, redundant tools are kept healthy rather than consolidated, and nobody is asking whether a capability should be realized differently. The portfolio grows more reliable and more complicated at the same time.

## Diagnosing which one you need

The problems a leadership team describes are usually a reliable guide:

- "We don't know what technology direction to take." This calls for direction.
- "We're about to make a major platform, vendor, or acquisition decision." This calls for direction.
- "We need to build a technology team and don't know how." This calls for direction.
- "A critical application has no one maintaining it." This calls for ownership.
- "We can't answer security questions about our own systems." This calls for ownership.
- "Small changes take months because nobody owns the code." This calls for ownership.
- "Something critical broke and the people who built it are gone." This calls for ownership, starting with break-fix.
- "We have too many tools and don't know what to cut." This calls for both, starting with a portfolio audit.

## How the two work together

Many mid-sized companies need some of each: a few hours a month of strategic direction, and reliable ownership of what they already run. The two roles work best when they share three things.

The first is **a single capability map**. Direction decides what each capability's target realization should be; ownership keeps the map's current state accurate. When both work from the same artifact, decisions are grounded in fact and changes are traceable to decisions.

The second is **a shared cadence**. A quarterly portfolio review plays the part of an architecture board: direction brings proposals, ownership brings data on cost, risk, and performance, and leadership decides. A monthly change review keeps transitions moving between those sessions.

The third is **clear decision rights**. Direction is responsible for recommending what should change. Ownership is responsible for how change is made safely and for keeping production healthy. The business owner of each capability remains accountable for what the capability must deliver.

## Sizing each half

The two halves also scale differently, which is another reason not to treat them as substitutes.

Direction scales with the rate of change the business is attempting. A company with a stable portfolio and no major decisions ahead may need only a quarterly review and occasional advice. A company facing a platform replacement, an acquisition, or a significant AI program may need several days a month for a period, then less once the target state is set. Direction is lumpy by nature, and it should be engaged that way.

Ownership scales with the portfolio itself: the number of capabilities, how important each one is, and how many components realize them. A critical revenue capability with five realizing components warrants continuous monitoring, tested recovery, and fast response. A low-importance internal capability warrants far less. Because the service level follows the heat map, ownership can be scoped precisely, capability area by capability area, rather than as an undifferentiated support contract.

This is also why the heat map matters commercially. It lets leadership see exactly what each part of the ownership scope protects, and adjust it deliberately as the portfolio is simplified. Every retirement reduces what must be owned. Every consolidation reduces it further. Over time, a well-run portfolio should need less ownership effort per capability, not more, and that is the right measure of whether the work is succeeding.

## The AI dimension

AI makes the split between direction and ownership sharper. Direction is needed to decide where AI should be applied, which principles and risk appetite govern its use, and how it fits the target architecture. That corresponds closely to the Govern function of the NIST AI Risk Management Framework and the policy layer of ISO/IEC 42001.

Ownership is needed for everything that follows: registering each AI component against its capability, monitoring its behavior, managing model and vendor changes, keeping prompts and configurations under change control, and retiring components that no longer earn their place. Companies that invest in AI direction without AI ownership tend to accumulate valuable but fragile components. Companies that build without direction accumulate them faster.

## Where my agency fits

We provide both halves, deliberately separated. Technical advisory, including fractional CTO work, covers direction. Managed software services cover ownership: after-build ownership of the applications behind your capabilities, change management for every transition, and break-fix and urgent consulting when something critical needs senior attention now. Both sit under one enterprise service agreement, with separate statements of work, so each can be scaled independently and neither requires a new procurement cycle.

A company can start with either. One that begins with an urgent fix may discover it needs ownership. One that begins with direction may find nobody is positioned to carry it out. Either way, the capability map is where the two meet.

That closes this first series. If you want a starting point for your own company, it is the same one I gave in the first issue: draft the Level 1 and Level 2 capability map, put every system against it, and name an owner for each capability. What you see will tell you whether you are missing direction, ownership, or both.

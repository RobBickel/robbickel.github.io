---
title: "Lifecycle Decisions on a Capability Map: Build, Buy, Tolerate, Retire"
date: 2026-11-12 09:00:00 -0600
description: "Build, buy, tolerate, or retire: making lifecycle decisions for each application against the capability it supports."
image: /assets/img/blog/lifecycle-decisions-on-a-capability-map.png
---

"Should we build it or buy it?" is one of the most common technology questions in a growing company. It is a good question asked at the wrong level. It treats each decision as a choice about one system, when the decision that actually matters is how a business capability should be realized over the next several years, and whether some of what the business currently runs should exist at all.

With a capability map and a heat map in hand, which the previous issue described how to produce, lifecycle decisions become far more disciplined. This issue covers how to make them: starting from the capability, using an assessment model to classify what you have, choosing a realization strategy, and then carrying the decision through the full lifecycle, including the part most companies skip, which is retirement.

## Start from the capability

Every lifecycle decision should begin with two questions about the capability, before any discussion of products or code:

1. **How important is this capability to the business?** This is the importance score from the heat map.
2. **Does this capability differentiate us?** Geoffrey Moore's distinction between core and context is useful here. Core capabilities are where the company competes and creates distinctive value. Context capabilities are necessary but done similarly by everyone, such as payroll, general ledger, or ticketing.

The answers frame everything that follows. A context capability of moderate importance should almost always be realized with a standard product, configured rather than customized. A core capability of high importance may justify custom work, but only with a plan for owning it. A capability of low importance that is expensive to sustain is a candidate for simplification, whatever is realizing it today.

## Classify what you have: Tolerate, Invest, Migrate, Eliminate

For components already in the portfolio, the TIME model, widely used in application portfolio management, gives a consistent way to classify each one. It assesses components on two dimensions, business value and technical quality, and places them in four quadrants:

- **Invest:** high business value and good technical quality. Keep improving these.
- **Tolerate:** good technical quality but limited business value, or a deliberate decision to keep something stable without investment. Contain these and spend as little as possible.
- **Migrate:** high business value but poor technical quality. The capability matters; its current realization should be replaced or re-platformed.
- **Eliminate:** low business value and poor technical quality. Retire these.

On a capability map, TIME is applied component by component but read capability by capability. When three components realize one capability, the right answer is often to invest in one, migrate the users of another onto it, and eliminate the third.

As an illustration, take a professional services firm whose Level 2 capability Resource Scheduling is realized by three components: a scheduling module inside its practice management suite, a custom web application built several years ago to handle a planning view the suite lacked, and a team-built AI tool that suggests staffing based on skills data. The suite's module is well supported but under-used, which makes it Tolerate today and a natural Invest candidate. The custom application is valued by planners but runs on an unsupported framework, which makes it Migrate, ideally onto the suite once its planning view is configured. The AI tool is promising and technically sound but depends on skills data that lives only in a spreadsheet, so it stays Contained until that data has an owner. One capability, three components, three different decisions, all readable from the same map.

## Choose a realization strategy

For any capability that needs a new or replacement realization, there are four broad options:

- **Buy** a product when the capability is context, a mature product covers most of the need, the business can adapt its process to the product, and the vendor is stable. Buying moves maintenance, security, and platform change to someone else. That is usually worth a great deal.
- **Build** when the capability is core, no product fits without distorting the business, deep integration is required, and the company is prepared to own the result after launch. That last condition is the one most often skipped.
- **Compose** by integrating capabilities you already own, when the gap is in how existing systems work together rather than in any one of them.
- **Retire** the capability, or a part of it, when the business no longer needs it badly enough to justify the cost of realizing it.

## What AI changes in the build decision

AI has dramatically reduced the cost of building. A working application, integration, or agent can now be produced in days rather than months. That changes the build-or-buy arithmetic for small, specific needs, and it is tempting to conclude that building is now the default.

It is not, because the cost that matters most was never the build. Custom realizations must be monitored, patched, secured, documented, and changed for as long as the business relies on them. AI-generated code still needs all of that, often more, since the people who prompted it into existence may not understand it in depth. AI-based components add their own lifecycle concerns: model versions change, vendor APIs are deprecated, and behavior can shift without any change to your code.

The discipline I recommend is simple. Before anything is built, by any method, record who will own it, at what service level, and what its expected lifecycle is. If nobody can answer, the honest decision is to buy, compose, or not proceed. A short decision record per choice, capturing the capability, the options considered, and the ownership commitment, is enough.

## Carry the decision through the lifecycle

Decisions only change the portfolio when they are carried through. Each component should hold an explicit lifecycle state:

- **Planned:** approved, with an owner named before work begins.
- **Phasing in:** being built or deployed, with a defined transition.
- **Active:** in production, owned, and at its agreed service level.
- **Contained:** tolerated by decision, kept stable, and deliberately not extended.
- **Phasing out:** being migrated away from, with a target date.
- **Retired:** decommissioned completely.

TOGAF's migration planning phase organizes change into transition architectures, intermediate states the business can operate in while it moves toward the target. Mid-sized companies benefit from the same idea. Each consolidation, migration, or retirement should be planned as a transition with a defined end state, an owner, and a date, so that phase-outs actually finish rather than leaving two systems running indefinitely.

## Retirement is a capability in its own right

Retirement is the most underused option in portfolio management, because removing things rarely earns anyone credit. It deserves the same rigor as building. A complete decommissioning covers data retention and archival, export of anything the business must keep, removal of integrations and scheduled jobs, revocation of access and credentials, cancellation of contracts and subscriptions, and cleanup of domains and infrastructure. Every system properly retired is one less thing to secure, patch, pay for, and explain on a security questionnaire.

## A practical decision guide

- Is this a context capability? Lean toward **buy** or **compose**.
- Is it core, and is no product a good fit? Consider **build**.
- Has someone committed to owning it after launch? That is required before you **build**.
- Is the component valuable but technically weak? Plan a **migration**.
- Is it stable but no longer strategic? **Tolerate** it, and contain it.
- Is anyone really using it, and does something else already cover the need? **Retire** it.

## Who carries the decisions out

The decisions above are leadership decisions. Executing them is sustained engineering and change management work, and it is where most portfolios stall. My team carries that work for clients in three ways.

We own **change management** for the transitions: migrations, consolidations, and retirements run as governed changes against the capability map, each under its own statement of work. We provide **after-build ownership** for the components classified as Invest or Contained, keeping them monitored, patched, recoverable, and documented at the right service level. Tolerated systems in particular benefit from this, since keeping something stable without investing in it is a discipline of its own. And when a contained or phasing-out system fails before its replacement is ready, our **break-fix** engagement stabilizes it so the transition can continue on schedule.

The principle behind all of this is simple. The best software portfolios are not the most advanced. They are the smallest that do the job well, with every remaining component owned and on a lifecycle someone has chosen.

In the final issue of this series, I will look at how direction and ownership divide between leadership roles, and where a fractional CTO and managed software services each fit.

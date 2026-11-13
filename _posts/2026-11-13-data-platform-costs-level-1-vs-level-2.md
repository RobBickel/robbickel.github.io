---
title: "Level 1 vs Level 2 Data Platform Costs: What You Pay the Vendor, and What You Pay to Run It"
date: 2026-11-13 09:00:00 -0600
description: "Two ways to count what a data platform costs, worked through with published list prices and salary data, and a way to decide whether the platform fits your data size."
image: /assets/img/blog/data-platform-costs-level-1-vs-level-2.png
---

Most data platform budgets are built from the vendor's pricing page. That number is real, and it is usually the smaller one.

This piece separates two levels of cost. **Level 1** is what you pay the vendor: capacity, credits, compute units, storage, and the licenses people need to read the reports. **Level 2** is Level 1 plus the internal team that keeps the platform running: the people who fix pipelines, absorb source-system changes, manage access, upgrade the orchestrator, and answer "why doesn't this number match?"

Both levels are worth knowing. Level 1 is what procurement negotiates. Level 2 is what the business actually pays, and it is the number that tells you whether the platform fits your data size.

All prices below are published US list prices, pay-as-you-go unless stated, as of November 2026. Your region, edition, and any committed-use discount will change them. Check the vendor's own pricing page before you budget.

## Level 1: the vendor bill

Each platform bills on a different model, and the model decides what you have to watch.

**Microsoft Fabric** sells capacity. You buy a capacity size and every workload in it draws from the same pool: data engineering, warehousing, pipelines, and Power BI. Capacity is priced at $0.18 per capacity unit (CU) hour in US regions, which puts an always-on F2 at about $263 a month and an F64 at about $8,410 a month. A one-year reservation brings those to about $156 and $5,003. OneLake storage is billed separately.

The licensing detail that changes the math is Power BI. On capacities smaller than F64, everyone who views a report needs a Power BI Pro license, listed at $14 per user per month since April 2025. At F64 and above, viewers can use free licenses, and only the people who build reports need Pro.

**Snowflake** sells credits. A virtual warehouse consumes credits while it runs, starting at one credit an hour for an X-Small warehouse and doubling with each size. On-demand credits list at $2 on Standard, $3 on Enterprise, and $4 on Business Critical in AWS US East, and storage at about $23 per terabyte per month. Billing is per second, with a 60-second minimum each time a warehouse resumes.

**Databricks** sells Databricks Units (DBUs), priced by the type of compute. On AWS Premium, classic jobs compute lists at $0.15 per DBU and a serverless SQL warehouse at $0.70 per DBU. Classic compute is billed on top of the cloud provider's virtual machines, which appear on a separate bill. Serverless rates include the compute.

**Orchestration** is easy to forget because it is often a separate line. Amazon Managed Workflows for Apache Airflow (MWAA) bills a small environment at about $0.49 an hour, roughly $358 a month, for every hour the environment exists, whether or not anything runs. Fabric can run Airflow jobs inside its capacity, which moves that cost into the capacity you already pay for.

## Level 2: the team that runs it

Level 2 is harder to see because it is spread across salaries, not invoices. It is also where most of the money goes.

The US Bureau of Labor Statistics puts the median annual wage for database architects at $135,980 and for database administrators at $104,620 (May 2024). Wages are not the whole cost of an employee. In June 2026, wages and salaries were 70.0 percent of private-industry employer compensation costs, with benefits making up the other 30.0 percent. Dividing by 0.70 gives a reasonable fully loaded estimate: about $194,000 a year for a database architect at the median, and about $149,000 for a database administrator.

Here is the work Level 2 pays for, regardless of platform:

- **Pipelines.** Failed loads, reruns, and the changes needed when a source system adds, renames, or removes a field.
- **Orchestration.** Keeping the scheduler and every job definition current. Airflow 2 reached end of life in April 2026, so any Airflow 2 deployment still running is an upgrade someone has to own.
- **Access and governance.** Who can see what, reviewed on a schedule, with a record an auditor can read.
- **Cost control.** Watching consumption on Snowflake and Databricks, and capacity usage on Fabric, before the month closes.
- **Definitions.** Keeping one agreed meaning of revenue, margin, and active customer, so two reports don't give two answers.
- **Questions.** The steady stream of "why doesn't this match?" from the business.

## Two worked examples

The following examples use the list prices and salary figures above. The staffing levels are illustrative assumptions, not benchmarks. Replace them with your own.

**A smaller estate.** A company reports on a few hundred gigabytes from five or six source systems, refreshed a few times a day, read by about 40 people. It runs Fabric on a reserved F2.

- Level 1: F2 reserved at about $156 a month, plus 40 Power BI Pro licenses at $14, comes to roughly $8,600 a year.
- Level 2: assume half of one database administrator's time keeps it running, about $74,700 a year fully loaded. Level 2 is roughly $83,000.

Here the vendor bill is about a tenth of the real cost. Moving to a cheaper platform would barely change the total.

**A mid-sized estate.** A company runs a lakehouse with a dozen sources, near-real-time feeds for operations, and reports read by several hundred people. It runs Fabric on a reserved F64.

- Level 1: F64 reserved at about $5,003 a month comes to about $60,000 a year. Viewers no longer need Pro licenses.
- Level 2: assume one database architect and one database administrator, about $343,000 a year fully loaded. Level 2 is roughly $403,000.

The vendor bill is now a larger share, about 15 percent, but the team still dominates.

The examples point to the same conclusion. For a mid-sized company, the platform decision is mostly a staffing decision.

## Is it worth it at your data size?

In TOGAF terms, a data platform realizes information capabilities: management reporting, demand planning, customer analytics, regulatory reporting. The right size of platform follows from what those capabilities require, not from what the platform can do. Five questions get you most of the way:

1. **How much data, and how fast is it growing?** If everything you report on fits comfortably in a single relational database, a full lakehouse adds Level 2 work without adding much capability.
2. **How fresh does it need to be?** Daily or hourly reporting can be served by scheduled refreshes. Near-real-time operational feeds justify streaming and the people who can run it.
3. **How many sources, and how often do they change?** Every source is a pipeline someone owns. The number of sources predicts Level 2 cost better than data volume does.
4. **How many people read the reports?** On Fabric, the viewer count decides when capacity beats per-user licensing. At list price, a reserved F64 costs about the same as Pro licenses for roughly 360 viewers, and about 600 at pay-as-you-go.
5. **Who will own it after launch?** If the answer is "the person who built it," the Level 2 cost is already being paid, just without a plan for when that person moves on.

A platform is worth it when the capabilities it supports need what it does, and when the Level 2 cost has a named owner and a budget. It is oversized when its main effect is to add pipelines, licenses, and a scheduler that one person keeps alive.

## Making the Level 2 number smaller

The vendor bill can be negotiated. Level 2 is reduced by how the platform is run:

- **Keep transformations and orchestration in code,** in a repository, with tests. Code can be reviewed, handed over, and fixed by someone other than its author.
- **Fewer, better pipelines.** Retire feeds nobody reads. Every pipeline you remove is Level 2 cost you stop paying.
- **Monitor before the business notices.** A failed load caught at 6 a.m. is a rerun. Caught at the 9 a.m. meeting, it is a morning of reconciliation.
- **Treat upgrades as scheduled work,** not emergencies. The Airflow 2 end of life was announced well in advance, and so are most platform changes.
- **Record decisions,** with the conditions that would make you revisit them, using TOGAF's Architecture Change Management (Phase H) as the review cadence.

## Where we come in

Level 2 is the work we take on. We provide after-build ownership of your pipelines, orchestration, and the applications around your data platform, with monitoring, upgrades, access reviews, cost control, and documentation. We run change management so every change to a pipeline or a definition is assessed, tested, and recorded. And when the numbers are wrong on the morning they matter, we step in urgently and leave the platform supportable.

If you want to know what your platform costs at Level 2, and whether it fits your data size, [tell us about it](/contact/).

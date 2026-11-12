---
title: "Snowflake vs Databricks vs Microsoft Fabric, and Where Airflow Fits: What You're Committing to Own"
date: 2026-11-12 09:00:00 -0600
description: "Three data platforms and the orchestrator that often sits between them, compared on who runs the pipelines, what it costs to run, and what it takes to leave."
image: /assets/img/blog/snowflake-vs-databricks-vs-microsoft-fabric-vs-airflow.png
---

Data platform decisions are usually framed as a performance contest: which engine is fastest, which handles machine learning best, which has the nicest notebook. For a mid-sized company the more important question is what you are signing up to run, because a data platform is never only the platform. It is the pipelines that feed it, the models built on it, the reports that depend on it, and the people who notice when last night's load did not finish.

Choosing a platform takes a quarter. Owning what you build on it takes years. This piece compares Snowflake, Databricks, and Microsoft Fabric, and looks at Apache Airflow, which is often the orchestration layer around whichever platform you choose, on the three questions that decide the long tail: who runs it, what it costs to run, and what it would take to leave.

## The platforms in one paragraph each

**Snowflake** is a cloud data platform that separates storage from compute, so different workloads can run on separately sized warehouses without competing for resources. It runs on AWS, Azure, and Google Cloud, and charges for compute by consumption. It has grown from a data warehouse into a broader platform, including support for Apache Iceberg tables, an open table format other engines can read.

**Databricks** is a lakehouse platform built on Apache Spark and Delta Lake, an open table format. It is strongest where data engineering, data science, and machine learning share the same data, and it also runs on all three major clouds. Unity Catalog is its governance layer for permissions and lineage. Compute is billed by consumption.

**Microsoft Fabric** is Microsoft's software-as-a-service analytics platform. Data engineering, warehousing, real-time analytics, and Power BI share a single store, OneLake, and a single pool of purchased capacity. That capacity model is the defining commercial difference: you buy a capacity size and every workload draws from it. For companies already standardized on Power BI and Microsoft 365, it removes a lot of integration work.

**Apache Airflow** is not a data platform. It is an open-source orchestrator: it schedules and coordinates the jobs that move data between systems, as code. Airflow 3.0 was released in April 2025, and Airflow 2 reached end of life in April 2026, so any Airflow 2 deployment still running is now unsupported software.

## Start with the capability, not the engine

In TOGAF terms, a data platform realizes information capabilities that the rest of the business depends on: financial reporting, demand planning, customer analytics, regulatory reporting. The useful first question is not "which engine?" but "which capabilities depend on this data, who owns them, and how fresh and correct must the data be?"

Answering that exposes what you will own regardless of the platform:

- **Pipelines.** Every ingestion job and transformation is software. It needs version control, tests, code review, and a release process. Tools such as dbt exist because transformations are code.
- **Data contracts with source systems.** When the ERP vendor changes a field, a pipeline breaks. Someone owns that relationship.
- **The semantic layer.** The definitions of revenue, active customer, and margin that the reports use. If two teams define them differently, the platform will faithfully produce two answers.
- **Access and lineage.** Who can see what, and where each number came from.
- **Orchestration and monitoring.** What runs when, what depends on what, and who is told when it fails.

## Question 1: Who runs it after launch?

**Fabric** asks the least of you operationally, because Microsoft runs more of the stack as SaaS, and much of it is administered in the same tenant as Power BI. The trade is that you work within Microsoft's model and release cadence.

**Snowflake** is also fully managed. Your operational work concentrates on warehouse sizing, workload isolation, access, and the pipelines and tools around it.

**Databricks** gives you the most control over compute and the most flexibility for engineering and ML work. That flexibility is real, and so is the ownership that comes with it: cluster policies, job configuration, library versions, and the code running in notebooks.

**Airflow** is the clearest example of hidden ownership. Self-hosted, it is an application you run: upgrades, workers, the metadata database, and every DAG your team has written. Managed offerings take on the infrastructure but not the DAGs. The Airflow 2 end of life is a good test of whether anyone owns it: if nobody planned that upgrade, nobody owns the orchestrator.

On every platform, the on-call question is the same. When the morning revenue report is wrong, who is paged, and who can fix the pipeline?

## Question 2: What does it cost to run?

The three platforms bill differently, and the billing model shapes the operating discipline you need.

- **Consumption billing (Snowflake, Databricks)** follows usage. A poorly written query, an oversized cluster, or a job left running costs money directly. You need budgets, alerts, auto-suspend settings, and someone who reviews the most expensive workloads every month.
- **Capacity billing (Fabric)** makes the bill predictable, but moves the risk. Workloads share the capacity, and when it is overloaded Fabric smooths and then throttles work. A heavy data engineering job can slow the reports executives use. You need capacity monitoring and a decision about which workloads get priority.
- **Orchestration** adds its own infrastructure cost if self-hosted, and its own subscription if managed.

In all three cases, the largest cost is not compute. It is the people time spent fixing broken pipelines, reconciling numbers, and answering "why doesn't this match?" That cost falls fastest when pipelines are tested and owned.

## Question 3: What would it take to leave?

**Open table formats are the main hedge.** Delta Lake (Databricks, and the format underneath Fabric's OneLake) and Apache Iceberg (supported by Snowflake and readable across engines) let more than one engine read the same data. Data stored in an open format, in storage you control, is far easier to move than data inside a proprietary format.

**Transformations as code travel well.** Logic written in SQL and dbt, kept in your repository, can be pointed at a different platform with work but without a rewrite. Logic buried in notebooks, stored procedures, or point-and-click tools does not travel.

**Reports and semantic models are the stickiest layer.** Power BI semantic models tie Fabric tightly into the business. That is a benefit while you stay and a cost if you go.

**Orchestration should be portable.** Airflow DAGs can call any platform. Platform-native schedulers are convenient, but they put orchestration inside the vendor.

## A practical way to decide

1. **Map the information capabilities** that depend on the platform, with an owner and a freshness requirement for each.
2. **Follow your estate.** A Microsoft-centric company with Power BI everywhere has a strong reason to choose Fabric. A company with heavy engineering and ML work leans toward Databricks. A company that wants a managed warehouse with clean workload isolation leans toward Snowflake.
3. **Choose the billing model you can govern,** and put the monitoring in place before the first production workload.
4. **Keep transformations and orchestration in code,** in your repository, with tests.
5. **Decide what is in open formats,** and record the decision with the conditions that would make you revisit it, using TOGAF's Architecture Change Management (Phase H) as the review cadence.

## Where we come in

Data platforms rarely fail at the engine. They fail in the pipelines: a source system changes, a job fails quietly, a definition drifts, and the person who built it has moved on.

We take on that ownership. That means after-build ownership of your pipelines, orchestration, and the applications around your data platform, with monitoring, tests, upgrades (including the Airflow 2 to 3 migration), access reviews, and documentation. It means change management so every change to a pipeline or definition is assessed, tested, and recorded. And it means urgent help when the numbers are wrong on the morning they matter and nobody knows why.

If a report your business runs on depends on a pipeline nobody owns, [tell us about it](/contact/).

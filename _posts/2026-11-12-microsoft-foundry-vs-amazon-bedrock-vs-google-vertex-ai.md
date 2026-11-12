---
title: "Microsoft Foundry vs Amazon Bedrock vs Google Vertex AI: What You're Committing to Own"
date: 2026-11-12 09:00:00 -0600
description: "Three enterprise AI platforms compared on the questions that matter after launch: who runs it, what it costs to run, and what it takes to leave."
image: /assets/img/blog/microsoft-foundry-vs-amazon-bedrock-vs-google-vertex-ai.png
---

Most comparisons of the big three AI platforms read like a feature matrix: which models are in the catalog, which agent framework ships with it, which region launched what this month. That is useful for a proof of concept. It is the wrong frame for the decision a leadership team is actually making, which is what the company will own for the next five years.

Choosing an AI platform takes a quarter. Owning what you build on it takes years. This piece compares Microsoft Foundry, Amazon Bedrock, and Google's Vertex AI on the three questions that decide the long tail: who runs it after launch, what it costs to run rather than to build, and what it would take to leave.

## The platforms, as they stand

All three have been renamed or restructured in the last year, which is itself a lesson about ownership.

**Microsoft Foundry** is the platform Microsoft introduced as Azure AI Studio in 2023, renamed Azure AI Foundry in 2024, and renamed again to Microsoft Foundry at Ignite in November 2025. The former Azure AI Services became Foundry Tools in the same change. Foundry is where Azure customers build agents and applications against a model catalog that includes OpenAI's models and models from other providers, inside the identity, networking, and billing they already run on Azure.

**Amazon Bedrock** is AWS's managed service for foundation models from multiple providers behind one API. Its agent layer, Amazon Bedrock AgentCore, became generally available in October 2025 and is designed to run agents built with any framework or model, with VPC and PrivateLink support. AWS has added pieces to it through 2026, including policy controls for governing what agents are allowed to do.

**Google Vertex AI** was renamed at Google Cloud Next in April 2026, and Google now presents it as the Gemini Enterprise Agent Platform. Google's Agent Development Kit, the framework most of its agent tooling builds on, is open source.

If your team learned one of these platforms under a name that no longer exists, you have already met the first ownership problem: the vendor's roadmap moves faster than your documentation.

## Start with the capability, not the platform

The TOGAF Standard treats a technology choice like this as part of Opportunities and Solutions (Phase E of the Architecture Development Method): you decide what the business needs to be able to do, then choose how to realize it. In ArchiMate terms, the AI platform is a technology service. The thing your business depends on is the application service built on top of it, and the business capability that service supports.

That framing changes the question. You are not buying Foundry or Bedrock. You are deciding how a capability such as Customer Service, Quote to Order, or Contract Review will be realized, and which parts of that realization you will own regardless of the platform:

- **Prompts, instructions, and agent definitions.** These are source code. They need version control, review, and a release process.
- **Evaluation sets.** The examples you use to check that the agent still behaves correctly. Without them, every model update is a guess.
- **Tool integrations.** The connections from the agent to your CRM, ERP, ticketing, and document stores. These carry the real risk, because they act on real data.
- **Retrieval indexes and the pipelines that feed them.** If the agent answers from your documents, someone owns the freshness and permissions of that index.
- **Guardrails and logging.** What the agent may do, what it must refuse, and the record of what it did.

None of that moves with the platform choice. All of it outlives the pilot.

## Question 1: Who runs it after launch?

The honest answer for all three platforms is the same: the vendor runs the models and the managed services, and you run everything in the list above. The differences are in how much of the surrounding operation you inherit.

**Your existing cloud is the strongest predictor.** A company that runs identity on Microsoft Entra ID, data in Azure, and productivity in Microsoft 365 will find Foundry the shortest path, because access control, networking, and billing are already in place and already owned by someone. The same logic applies to Bedrock for an AWS estate and to Google's platform for a Google Cloud and Workspace estate. Choosing against your estate means a second cloud to secure, monitor, and pay for, and that cost lands on operations, not on the AI project.

**Model lifecycle is the recurring work.** Every provider retires model versions on its own schedule. Each retirement means re-running your evaluations, adjusting prompts, and re-approving the change. On any of the three platforms this is a standing operational task, and it is the one most often missing from the pilot plan.

**Agents need on-call.** Once an agent writes to a system of record, a failure is an incident, not a bug report. Someone has to be reachable when it misbehaves, with the authority to disable it.

## Question 2: What does it cost to run, not to build?

The build cost of an AI pilot is visible and bounded. The run cost is neither.

All three platforms price model use by consumption, so cost follows usage, prompt length, and how many steps an agent takes to finish a task. An agent that loops, retries, or retrieves too much context can multiply its own cost without anyone noticing until the invoice arrives. Owning the run cost means:

- **Budgets and alerts per application,** not per cloud account, so a single runaway workflow is visible.
- **Cost as an evaluation metric.** Track cost per completed task alongside accuracy, and treat a jump in either as a regression.
- **Tagging and chargeback,** so the business owner of the capability sees what it costs to deliver.

The platforms differ in their commercial terms and discounts, and those change often. The ownership discipline does not.

## Question 3: What would it take to leave?

Exit cost is set by decisions made in the first month, usually without anyone noticing.

**Keep the valuable assets portable.** Prompts, evaluation sets, and tool definitions should live in your repository, not only in a vendor console. If they exist only in the platform's UI, you do not fully own them.

**Prefer open interfaces for tools.** The Model Context Protocol, introduced by Anthropic in 2024, has become the common way to connect agents to tools and data. In December 2025 it moved to the Agentic AI Foundation under the Linux Foundation, co-founded by Anthropic, Block, and OpenAI with support from Google, Microsoft, and AWS. Integrations built as MCP servers can be reused across platforms in a way that proprietary connectors cannot.

**Be deliberate about framework lock-in.** Each platform offers a native agent framework, and some are open source. An open-source framework reduces lock-in to the vendor, but it is still code you will maintain through its own releases and breaking changes.

**Data gravity is the real anchor.** The hardest thing to move is not the model or the agent. It is the retrieval index, the logs, and the data pipelines, which tend to sit next to wherever your data already lives.

## A practical way to decide

1. **Map the capability first.** Name the business capability the agent supports, its owner, and what good performance looks like.
2. **Default to your existing cloud** unless a specific model or capability is only available elsewhere and matters to the outcome.
3. **Write the run plan before the build plan:** who is on call, how model retirements are handled, how cost is watched, and who can switch the agent off.
4. **Keep prompts, evaluations, and tool definitions in source control** from day one.
5. **Record the decision** in your architecture repository with the conditions that would make you revisit it. TOGAF's Architecture Change Management (Phase H) is built for exactly this: a standing review of whether a past decision still holds.

For governance, the NIST AI Risk Management Framework (Govern, Map, Measure, Manage) and ISO/IEC 42001 give you a structure for the policies around these systems. Neither tells you which platform to pick. Both assume someone owns what you picked.

## Where we come in

The platform decision is a few weeks of work. The ownership is the long part, and it is where most AI projects in mid-sized companies stall: the pilot works, the builder moves on, and nobody is accountable for model retirements, cost drift, or the integration that broke last Tuesday.

We take on that ownership. That means after-build ownership of AI agents and the applications around them (monitoring, evaluations, model upgrades, access, and documentation), change management for every update so it is tested and recorded, and urgent help when something in production is failing and the person who built it is gone. If you are choosing a platform now, we can also help you make the decision with the run plan written first.

If any of this describes a system you already depend on, [tell us about it](/contact/).

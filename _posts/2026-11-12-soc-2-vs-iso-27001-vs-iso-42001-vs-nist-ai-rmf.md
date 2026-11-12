---
title: "SOC 2 vs ISO 27001 vs ISO 42001 vs NIST AI RMF: What You're Committing to Own"
date: 2026-11-12 09:00:00 -0600
description: "Four security and AI governance frameworks compared on what they actually commit a mid-sized company to: the evidence, the owners, and the software that has to back them up."
image: /assets/img/blog/soc-2-vs-iso-27001-vs-iso-42001-vs-nist-ai-rmf.png
---

A customer's security questionnaire asks for a SOC 2 report. An enterprise prospect's procurement team asks for ISO 27001. A board member has read about AI governance and wants to know whether you are "doing NIST" or "doing 42001." Each request arrives as a yes-or-no question. None of them is.

Each of these frameworks is a commitment to run something, indefinitely, and to produce evidence that you are running it. Choosing one takes a quarter. Owning it takes years. This piece compares the four on what they commit a mid-sized company to, and on the part most comparisons skip: how much of that evidence lives in the software you run.

## What each one actually is

The four are often listed side by side, but they are different kinds of thing.

**SOC 2** is an attestation report, not a certification. An independent CPA firm examines your controls against the AICPA's Trust Services Criteria (security, plus any of availability, processing integrity, confidentiality, and privacy that you choose to include) and issues a report. A Type I report describes whether controls are suitably designed at a point in time. A Type II report covers whether they operated effectively over a period, typically several months to a year. Customers in the United States ask for it most, and they usually want Type II.

**ISO/IEC 27001** is a certifiable standard for an information security management system (ISMS). An accredited certification body audits you and issues a certificate, followed by surveillance audits and a recertification cycle. The current edition is ISO/IEC 27001:2022, whose Annex A lists 93 controls in four themes: organizational, people, physical, and technological. The transition period from the 2013 edition ended on October 31, 2025, so a certificate against the old edition is no longer a current claim.

**ISO/IEC 42001** is the management system standard for artificial intelligence, published in December 2023. Like 27001 it is certifiable, and it follows the same high-level structure ISO uses for management system standards, so a company with an ISMS can extend it rather than build a second system from scratch. It covers how you govern the AI systems you develop, provide, or use: policy, risk and impact assessment, lifecycle controls, and supplier oversight.

**The NIST AI Risk Management Framework** (AI RMF 1.0, January 2023) is voluntary guidance, not a standard you are certified against. It organizes AI risk work into four functions: Govern, Map, Measure, and Manage. In July 2024 NIST published a Generative AI Profile (NIST AI 600-1) that applies the framework to generative AI and names twelve risks that generative systems create or make worse.

So the first distinction is simple. Two of these produce something a customer can hold you to (a SOC 2 report, an ISO certificate). Two are management frameworks for AI, one certifiable and one not.

## Start with who is asking

The architecture habit is to start from the requirement, not the solution. In TOGAF terms these frameworks are constraints and requirements on the architecture, and they belong in the same place as any other requirement: traced to the stakeholder who raised it.

- **US customers buying software or services from you** usually ask for SOC 2.
- **International customers and large enterprise procurement teams** often accept or prefer ISO 27001.
- **Customers asking how you govern AI** in your product or services increasingly ask about ISO 42001 or, in the US, how you align with the NIST AI RMF.
- **Your own board or insurer** may want any of these, and may be satisfied by alignment rather than an external report.

Many mid-sized companies end up with SOC 2 and ISO 27001 together, because the controls overlap heavily and the evidence can be shared. ISO 42001 is the natural extension when AI becomes part of what you sell. NIST AI RMF is often the practical starting point when no one is yet asking for a certificate.

## Question 1: Who runs it after the audit?

Every one of these frameworks assumes named owners for controls, and an annual rhythm of review, internal audit, and management review. The first audit is a project. Every audit after it is operations.

The part that catches mid-sized companies is that a large share of the controls are about software they did not write and nobody formally owns:

- **Access control:** who has access to each application, how it is granted and removed, and how it is reviewed.
- **Change management:** that changes to production systems are authorized, tested, and recorded.
- **Vulnerability and patch management:** that dependencies and platforms are kept current, with evidence.
- **Backup and recovery:** that backups exist and restores have been tested.
- **Logging and monitoring:** that someone would notice a problem and respond.
- **Supplier management:** that the vendors and contractors who touch your systems are assessed.

For the corporate IT estate (laptops, email, identity) these controls are usually owned by an IT provider. For custom applications, integrations, and internal tools, they are often owned by no one. That gap is where audit findings come from, and where questionnaires get answered with hope.

ISO 42001 and the NIST AI RMF add the AI equivalents: an inventory of AI systems, an owner for each, impact assessments, and monitoring of how they behave in use. If your teams are building AI tools faster than anyone is inventorying them, the first finding is predictable.

## Question 2: What does it cost to run?

The visible costs are the auditor's or certification body's fees and any compliance software. The larger cost is internal time: control owners producing evidence, fixing gaps, and sitting through audits every year.

That cost is driven less by which framework you choose than by how well your systems are run day to day. A company whose applications already have owners, a change process, patching on a schedule, and tested restores produces evidence as a by-product. A company that assembles evidence by hand before each audit pays for the framework twice.

Overlap is the main lever. Mapping one control set to several frameworks, so a single access review satisfies SOC 2, ISO 27001, and the relevant parts of ISO 42001, is the difference between one compliance program and three.

## Question 3: What would it take to stop, or switch?

Unlike a software platform, you rarely leave a framework. You add to it. The real exit question is what happens if the program lapses.

- **A SOC 2 report** describes a past period. If you stop, the most recent report ages out, and customers will ask for a bridge letter and then a new report.
- **An ISO certificate** lapses if surveillance audits are missed or nonconformities are not closed, and recertification costs more than maintenance.
- **NIST AI RMF alignment** is self-declared, so it lapses quietly, which is its own risk when a customer asks you to describe it.

The commitment is ongoing in every case. Choose the one your customers need, and plan to run it.

## A practical way to decide

1. **List who is asking and what they will accept.** Write it down per customer segment.
2. **Inventory what is in scope,** including custom applications, integrations, and AI tools, with an owner for each.
3. **Build one control set** mapped to every framework you need, rather than one program per framework.
4. **Fix the operations before the audit.** Ownership, change management, patching, and recovery for your applications generate the evidence auditors ask for.
5. **Extend to AI deliberately.** Use NIST AI RMF to structure the work, and ISO 42001 when someone needs a certificate.

## Where we come in

Frameworks fail at the application layer: the custom portal, the integration, the internal tool, the AI workflow somebody built last year. That is the layer we own.

We provide after-build ownership of those systems, run to the controls your framework requires: named owners, access reviews, patching on a schedule, tested recovery, and records an auditor can read. We run change management so every change to production is assessed, tested, and recorded. And when an audit or a customer questionnaire surfaces a system nobody can answer for, we step in urgently, make it supportable, and leave it documented.

If an audit or questionnaire is coming and some of your systems have no clear owner, [tell us about them](/contact/).

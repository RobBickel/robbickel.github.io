---
title: "Patching Your Applications Matters as Much as Patching Your Laptops"
date: 2026-09-11 09:00:00 -0500
description: "Your IT provider patches operating systems, but the frameworks and libraries inside your custom applications need updates too. Why dependency patching gets skipped and how to do it sustainably."
---

Most companies have laptop and server patching under control. Updates roll out automatically, an IT provider tracks compliance, and someone gets an alert when a machine falls behind.

Now ask the same question about your custom applications: when were the frameworks and libraries inside your customer portal last updated? For many businesses, the honest answer is "when it was built."

## What dependencies are, and why they matter

Modern applications are assembled from hundreds of open-source components: web frameworks, database drivers, authentication libraries, PDF generators, date-handling utilities. Your developer wrote a fraction of the code; the rest comes from these **dependencies**.

Each dependency has its own release cycle, including security fixes. When a vulnerability is discovered in a popular library, it's published, and from that point anyone can look for applications still running the vulnerable version.

## Why application patching gets skipped

- **Nobody owns it.** IT providers usually stop at the operating system. The original developer is gone.
- **It feels risky.** Updating a dependency can break something, and there are no automated tests to catch it.
- **It's invisible.** Out-of-date libraries don't cause symptoms until they do.
- **It compounds.** Skip updates for a few years and you're suddenly several major versions behind, and the upgrade becomes a project.

## A sustainable approach

### Know what you're running

Generate a list of each application's dependencies and versions. Most languages have built-in tools for this, and many code hosting platforms can produce it automatically.

### Turn on vulnerability alerts

Automated tools can compare your dependencies against public vulnerability databases and flag what needs attention. This turns an invisible problem into a visible list.

### Update a little, often

Small, regular updates such as monthly or quarterly are far safer than giant upgrades every few years. Each change is easier to test and easier to roll back.

### Prioritize by risk

Not every update is urgent. Prioritize:

1. Known vulnerabilities that are actually exploitable in how you use the library
2. Components that handle authentication, payments, or user input
3. Anything approaching end of support

### Add safety nets

A few automated tests around the most important workflows, plus a staging environment to try updates first, make patching routine instead of nerve-wracking.

### Plan for runtime and framework end-of-life

Languages and frameworks have support windows. Track when yours end and schedule upgrades before support stops, not after.

## The bottom line

Unpatched dependencies are one of the most common ways business applications get compromised, and one of the most preventable. Scheduled patching is a standard part of [managed software services](/), and it's one of the first things a [Software Portfolio Audit](/portfolio-audit/) checks.

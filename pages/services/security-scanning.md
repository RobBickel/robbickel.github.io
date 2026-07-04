---
layout: page
title: Security & Compliance
permalink: /services/security-scanning/
description: Repository security scanning, secrets detection, and vulnerability assessment. Find exposed credentials and security gaps before they become incidents.
---

# Security & Compliance

The fastest way to end up in the news is to leave credentials in a public repository. The second fastest is to ignore known vulnerabilities until someone exploits them.

We scan your codebase for the things that cause breaches: exposed secrets, vulnerable dependencies, insecure configurations, and the compliance gaps that auditors will eventually find anyway.

---

## What We Find

### Exposed Secrets

Credentials that shouldn't be in your codebase but are:

- API keys and access tokens
- Database connection strings
- Private keys and certificates
- OAuth secrets and client credentials
- Environment variables committed by accident
- Secrets buried in git history (deleted but not gone)

One in eight repositories contains exposed secrets. Most of them are still valid.

### Vulnerable Dependencies

Known security issues in the packages you depend on:

- CVE matches against your dependency tree
- Transitive vulnerabilities (the packages your packages use)
- Severity scoring and exploitability assessment
- Upgrade paths and remediation guidance

Your code might be secure. Your dependencies might not be.

### Code Security Issues

Static analysis for common vulnerability patterns:

- OWASP Top 10 coverage
- SQL injection and command injection
- Cross-site scripting (XSS)
- Authentication and authorization flaws
- Insecure cryptography
- Input validation gaps

### Configuration Problems

Infrastructure-as-code and configuration file review:

- Terraform and CloudFormation security
- Container and Docker security
- CI/CD pipeline exposure
- Overly permissive access controls
- Publicly exposed services

---

## Scan Options

| Scan Type | Scope | What You Get |
|-----------|-------|--------------|
| **Quick scan** | Single repo, current state | Summary of critical findings |
| **Deep scan** | Single repo, full history | Every secret ever committed |
| **Organization scan** | All repositories | Executive summary + per-repo details |
| **Continuous monitoring** | Ongoing, on every push | Alerts before problems merge |

Most organizations start with an organization scan to establish baseline, then move to continuous monitoring.

---

## What You Receive

### Findings Report

- Every issue ranked by severity
- Exact file locations and line numbers
- Remediation steps for each finding
- False positive analysis (we filter the noise)

### Executive Summary

- Overall risk score for your codebase
- Industry benchmark comparison
- Prioritized action list
- Estimated remediation effort

### Remediation Support

If you want help fixing what we find:

- Credential rotation guidance
- Pull requests for dependency updates
- Security hardening recommendations
- Compliance documentation support

---

## Why This Matters

Attackers actively scan public repositories for credentials. Automated tools check every commit within minutes of being pushed. Historical commits are not safe — git history is searchable.

The breaches you read about often start with something simple: an API key that was "only committed for testing" and never rotated.

We find these issues before someone else does.

---

## Compliance Coverage

Security scanning supports requirements for:

- **SOC 2** — vulnerability management, access control evidence
- **HIPAA** — technical safeguards, risk assessment
- **PCI-DSS** — secure development, vulnerability scanning
- **ISO 27001** — asset management, operations security
- **GDPR** — technical measures for data protection

We can provide documentation formatted for audit evidence.

---

## Pricing

| Scan Type | Typical Price Range |
|-----------|---------------------|
| Quick scan | $500 - $1,500 |
| Deep scan | $2,000 - $5,000 |
| Organization scan | $5,000 - $15,000 |
| Continuous monitoring | Monthly retainer |

Final pricing depends on repository count and size. We'll scope it precisely after an initial conversation.

---

## Request a Scan

Tell us about your environment. We'll provide a specific quote and can usually deliver initial findings within 48 hours.

{% include contact-form.html service="Security Scanning" %}

---
title: "Secrets in Code: How API Keys Leak and How to Stop It"
date: 2026-09-04 09:00:00 -0500
description: "Passwords and API keys committed to code repositories are a common and avoidable security risk. How secrets leak, why deleting them isn't enough, and how to prevent it."
---

One of the most common security problems in business software is also one of the simplest: credentials stored directly in source code. Database passwords, API keys for payment or email providers, cloud access keys, all sitting in plain text in a code repository.

It usually happens with good intentions. A developer needs something working quickly, hardcodes a key "just for now," and moves on. Years later the key is still there, still valid, and visible to everyone who has ever had access to the repository.

## How secrets end up in code

- **Hardcoded credentials** in configuration files or source code
- **Environment files** (like `.env`) committed by accident
- **Test credentials** that turned out to be production credentials
- **Copied snippets** from documentation with real keys pasted in
- **Old commits:** the key was removed from the current code but still exists in history

## Why deleting the line isn't enough

Version control systems like Git keep a full history. If a secret was ever committed, it remains in the repository's history even after it's removed from the current files. Anyone with a copy of the repository, including past contractors, former employees, or anyone a copy was shared with, can find it.

If a repository was ever public, even briefly, assume any secrets in it were found. Automated tools scan public repositories for credentials continuously.

**The only real fix for an exposed secret is to rotate it:** generate a new credential and revoke the old one.

## How to find secrets you already have

1. **Scan your repositories, including full history.** Open-source and commercial secret scanners can search every commit for patterns that look like keys and passwords.
2. **Review the findings.** Separate real credentials from false positives.
3. **Rotate every real secret,** starting with the most powerful: cloud admin keys, database credentials, and payment provider keys.
4. **Check access logs** where available for signs of misuse.

## How to prevent it going forward

- **Use a secrets manager** or your hosting platform's environment variable system instead of files in code.
- **Ignore sensitive files** so environment files can't be committed accidentally.
- **Add pre-commit and pipeline scanning** so new secrets are caught before they're merged.
- **Use least-privilege keys,** so each credential can do only what it needs.
- **Rotate keys when people leave,** especially contractors who had repository access.

## A quick self-check

- Do you know which repositories your company owns, and who has access?
- Has anyone ever scanned them for secrets, including history?
- When a contractor or developer leaves, are their accessible keys rotated?

If any answer is "no" or "not sure," a scan is a fast, contained first step. It's typically a fixed-scope engagement with results in days. See [Security & Compliance scanning](/services/security-scanning/), or have it handled continuously as part of [managed software services](/).

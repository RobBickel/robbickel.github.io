---
title: "Why an Untested Backup Isn't Really a Backup"
date: 2026-08-21 09:00:00 -0500
description: "Backups that have never been restored are an assumption, not a safeguard. How to test restores for business applications and what a good backup routine looks like."
---

Ask most companies whether their business applications are backed up and you'll hear "yes." Ask when they last *restored* from a backup and the room gets quiet.

An untested backup is a guess. It might work. It might be incomplete, corrupted, missing a database, encrypted with a key nobody has, or stored in an account tied to someone who left two years ago. You won't know until the day you need it, which is the worst possible day to find out.

## Common ways backups fail

- **They're not running.** A job failed silently months ago and nobody got an alert.
- **They're incomplete.** The database is backed up, but uploaded files, configuration, or secrets aren't.
- **They can't be restored in time.** The backup exists, but restoring it takes days nobody planned for.
- **Nobody knows how.** The restore process was never documented, and the person who set it up is gone.
- **They're in the wrong place.** Backups live on the same server or account as the original, so a single failure takes out both.
- **Access is lost.** Backups are stored in a cloud account nobody can log into anymore.

## What a good backup routine looks like

### Define what "recovered" means

For each critical system, decide two things:

- **How much data can you afford to lose?** An hour? A day? This determines backup frequency.
- **How long can you be down?** This determines how fast a restore needs to be.

### Back up everything needed to rebuild

Not just the database: uploaded files, configuration, environment settings, and the information needed to redeploy the application itself.

### Keep copies separate

At least one backup copy should live outside the system's primary account or location, so one compromised account or failed provider doesn't take everything.

### Monitor the backups

Backup jobs should report success *and* failure to a person. Silence shouldn't be interpreted as success.

### Test restores on a schedule

At least once or twice a year for each critical system, restore a backup into a separate environment and confirm:

- The data is complete and recent
- The application actually runs against it
- You know how long the process takes

### Write it down

A short runbook covering where backups live, how to access them, and the step-by-step restore process. Store it somewhere you can reach during an outage.

## The question to ask this week

"When did we last restore our most important system from backup, and how long did it take?"

If nobody knows, that's your next project. Verified backups and tested restores are part of every [managed software services](/) engagement I run, and backup testing is one of the 20 questions in the free [Software Estate Risk Scorecard](/assets/pdf/software-estate-risk-scorecard.pdf).

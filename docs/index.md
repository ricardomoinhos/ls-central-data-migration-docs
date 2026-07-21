# LS Central Data Migration - Technical Guide

This guide is a practical, step-by-step walkthrough for migrating data from an older Dynamics NAV / Business Central / LS Central installation to the latest Business Central / LS Central version. It covers the supported upgrade paths, the prerequisites, the commands to run at each step, and troubleshooting notes for the issues you're most likely to hit along the way.

## What this guide is about

Upgrading from an older, customized C/AL solution to a modern extension-based Business Central involves a long sequence of steps: converting the database, transferring table ownership, publishing and syncing interim extensions, and moving data into the Microsoft system and base application tables, LS Central tables (and other third-party / custom tables or fields). This guide takes you through most part of that process.

!!! info "We're not reinventing the wheel"
    This guide follows the **official Microsoft documentation** for upgrading Business Central on-premises. It doesn't replace it - it complements it, filling in the LS Central specifics and automating the tedious, error-prone parts. The steps in this documentation should map directly to a Microsoft task.

    Key Microsoft references:
    
    - [Upgrading to Business Central on-premises](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/upgrading-to-business-central-on-premises)
    - [Upgrading the data](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/upgrading-the-data)

## Scope: Data Upgrade, not Application Code Upgrade

A Business Central upgrade is divided into two tracks: the **Application Upgrade** (moving your code customizations into extensions) and the **Data Upgrade** (getting the existing data safely into the new, extension-based table structure).

**This guide focuses on the Data Upgrade.** It follows the steps described in Microsoft's [Upgrading the data](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/upgrading-the-data) documentation, adapted for LS Central. The application code upgrade is out of scope here - where it's a prerequisite for a data step, we point to the relevant Microsoft task rather than duplicating it.

The guide is also focused on the **Microsoft standard applications and LS Central**. It does not cover moving data from custom tables and fields.

!!! note "Custom tables and fields are the partner's responsibility"
    Migrating data in custom tables and fields is not covered by this guide, in a detailed way. It can bring its own challenges - especially when a table or field doesn't have exactly the same name between the older and newer version, where upgrade codeunits are typically needed to map and move the data correctly. This work has to be handled by the partner, based on their knowledge of the customization.

## Why this guide (and the tooling) exist

If you follow the Microsoft documentation by hand, you end up writing a long PowerShell script yourself, entering the correct version number for every single extension (System, Business Foundation, Base, LS Central, LS Central System App, plus your own customizations), building the right folder structure, and downloading the matching Microsoft app files. That's tedious and error-prone.

On top of that, LS Retail's journey to SaaS introduced a few challenges that the plain Microsoft guidelines don't account for, and which need extra steps to get right.

For example, in **LS Central 17.5**, following Microsoft's requirements, LS Retail renamed all its objects by adding a prefix to the table names (more than 1,000 tables were affected). If you follow the Microsoft data migration guidelines as-is, the migration routine does not properly handles the table mapping, and **all the data in the LS Central tables would be lost**.

This guide includes the **additional steps and tooling** needed to handle that renaming safely - so your LS Central data is carried across the upgrade instead of being dropped.

So this guide isn't just a thin wrapper around the Microsoft docs: it weaves in the extra steps that are specific to LS Central, and automates them wherever possible. To do that, LS Retail created **LS Central Migration Tools (LSMigrationTools)**, a PowerShell module published on the [PowerShell Gallery](https://www.powershellgallery.com/packages/LSMigrationTools) that automates the repetitive, error-prone, and LS Central-specific parts of the process.

See the [Appendix](appendix.md#ls-migration-tools) for details on how to install the tool.

### The `New-UpgradeInitializationScript` wizard

A good example of how the module helps automate the migration is the `New-UpgradeInitializationScript` cmdlet - a wizard that asks you a handful of questions (the version you're upgrading **from** and **to**, the database name, the BC server instance, the SQL Server address/instance, and so on) and then generates two ready-to-run scripts:

- **`Preparation-Script.ps1`** — everything needed to prepare the upgrade (getting the AL compiler from BC artifacts, creating the folder structure, compiling the interim extensions, and so on).
- **`Migration-Script.ps1`** — the actual upgrade steps, mirroring the Microsoft tasks in the correct order.

Together these scripts encapsulate essentially all the steps described in the Microsoft documentation - with the correct extension versions already filled in for you.

Beyond generating the scripts, the module also:

- Creates the complete folder structure with all the files and extension projects required for the migration steps.
- Downloads the matching Microsoft extensions (System Application, Base Application, Business Foundation, and so on) from the Business Central Docker artifacts, for the exact destination version you selected in the wizard.
- Provides helper cmdlets used throughout the process (for example, getting the AL compiler or compiling extensions).

For a step-by-step walkthrough of each wizard prompt with example inputs, see [New-UpgradeInitializationScript Wizard - Step by Step](upgrade-paths/v14-to-25-wizard.md).

## What partners can expect

- A **repeatable, guided path** through each supported upgrade, aligned with Microsoft's official guidance.
- **Automation of the tedious, error-prone steps** - correct versions, folder structure, and Microsoft app downloads handled for you.
- **Transparency**: every automated step is mapped back to the corresponding Microsoft task, so you always know what the tooling is doing and why.
- **Troubleshooting help** for the common pitfalls encountered during real-world upgrades.

## Upgrade paths

- [Upgrading from version 14 to 25](upgrade-paths/v14-to-v25.md)
- [Upgrading from version 15-24 to 25](upgrade-paths/v15-24-to-v25.md)
- [Upgrading from version 25 or later to latest](upgrade-paths/v25-or-later-to-latest.md)

## Additional reference

- [Troubleshooting](troubleshooting.md)
- [Appendix](appendix.md)
- [Version history](version-history.md)

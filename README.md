# Sierra ILS Cleanup - Withdrawn Item Automated Report
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/python-%233670A0.svg?style=for-the-badge&logo=python&logoColor=ffdd54)

## Summary
**What it does:** This automated clean-up report identifies items that have stalled in the withdrawn workflow. Specifically, it captures any item that has held a "withdrawn" status for more than 3 weeks, but whose icode2 has not yet been updated to 'w'.

**Impact:** Maintains the accuracy and integrity of collection records within the Sierra ILS database. Scheduled and automated a database clean-up task to generate and distribute reports, replacing a previously manual process.

## Features and Deliverables

**Automated Email:**

<img width="968" height="652" alt="Withdrawn Item Check" src="https://github.com/user-attachments/assets/0eeb90e0-5f6c-4b57-bd41-a8e0567fa9c7" />

**Attached Excel Report:**

<img width="1061" height="742" alt="Withdrawn-Item-Check" src="https://github.com/user-attachments/assets/a107f76a-2b46-4dea-9c38-51f75151ac1d" />

## Data Pipeline Architecture
This repository features an automated data pipeline that generates, formats, and distributes Excel reports via email. The system integrates Windows Task Scheduler, a Batch script, SQL, and Python to handle the end-to-end workflow without manual intervention. The automated process is fully productionized within a Windows environment.

**Workflow Overview:**

[Windows Task Scheduler] ──> [orchestrator.bat] ──> [main.py] ──> [Sub-modules & SQL] ──> [Report delivered to Email Inbox]

**Repository Contents & Security Note:**

To comply with data security policies, the core Python automation scripts have been omitted from this public repository. Instead, this repository provides:
- The SQL Data-Extraction Script: The exact logic used to pull and aggregate Sierra ILS production data.
- Manual Alternative: If you do not have an automated environment, you can run the provided SQL script manually in pgAdmin and export the results directly to a spreadsheet.

## Acknowledgments
The automated pipeline is built off the brilliant work of Gem Stone-Logan. For more information on implementing the automated system, please see her IUG presentations, [Automating Reports with Python.](https://www.gemstonelogan.com/presentations.html)





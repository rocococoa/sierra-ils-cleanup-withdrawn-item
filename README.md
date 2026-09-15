# Sierra ILS Cleanup - Withdrawn Item Automated Report
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/python-%233670A0.svg?style=for-the-badge&logo=python&logoColor=ffdd54)

## Summary
This automated cleanup report identifies items that have stalled in the withdrawn workflow. Specifically, it captures any item that has held a "withdrawn" status for more than 3 weeks, but whose icode2 has not yet been updated to 'w'.



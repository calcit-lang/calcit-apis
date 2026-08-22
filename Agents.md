# Agent notes

This project publishes API data for the Calcit language. Keep project-specific notes short and use the maintained Calcit documentation.

Before editing or validating:

```bash
calcit docs agents --full
calcit docs read upgrade --full
caps --ci
calcit calcit.cirru edit format
calcit calcit.cirru --check-only
calcit calcit.cirru js
```

The source snapshot is `calcit.cirru`. Do not use or add `compact.cirru`; use `calcit edit` / `calcit tree` for structural changes. Use `calcit cirru parse-edn` for API-data checks and `calcit docs read` for syntax or migration details.


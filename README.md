# API Description Updates

This repository now pulls GitHub REST API definitions directly from:

- `https://github.com/github/rest-api-description/tree/main/descriptions/ghec`

## Manual update

Run from the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\update-from-upstream.ps1
```

## Automated update

- Workflow: `.github/workflows/update-github-rest-api.yml`
- Schedule: every Monday at 06:00 UTC
- Behavior: regenerates the clients with `kiota update` and opens/updates a PR when files change.

# LS Central Upgrade Docs

This folder is a self-contained MkDocs Material site that is published to the public docs repo via `git subtree`.

## Local usage

```powershell
uv sync
uv run mkdocs serve
```

To build the static site locally:

```powershell
uv run mkdocs build --strict
```

## Publish flow

From the private repo root:

```powershell
git add "LSMigrationTools/Docs/LS Central 14 to Latest"
git commit -m "Update docs"
.\publish-docs.ps1
```

This folder includes `.github/workflows/docs-pages.yml` so the public repo receives the Pages workflow when the subtree is pushed.

## Structure

- `docs/` source pages and assets
- `mkdocs.yml` site navigation and theme configuration
- `pyproject.toml` docs tool dependencies
- `.github/workflows/docs-pages.yml` GitHub Pages deployment workflow

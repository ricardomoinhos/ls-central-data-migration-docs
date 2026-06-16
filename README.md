# LS Central Upgrade Docs

This folder is a self-contained Zensical site that is published to the public docs repo via `git subtree`.

## Local usage

```powershell
uv sync
uv run zensical serve
```

To build the static site locally:

```powershell
uv run zensical build --strict
```

## Docker preview

Build the preview image from this folder:

```powershell
docker build -t ls-central-data-migration-docs .
```

Run the container and open `http://localhost:8000`:

```powershell
docker run --rm -p 8000:8000 ls-central-data-migration-docs
```

When you change the documentation, rebuild the image and run it again:

```powershell
docker build -t ls-central-data-migration-docs .
docker run --rm -p 8000:8000 ls-central-data-migration-docs
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
- `mkdocs.yml` site navigation and compatibility-layer configuration
- `pyproject.toml` docs tool dependencies
- `Dockerfile` local preview container definition
- `.github/workflows/docs-pages.yml` GitHub Pages deployment workflow

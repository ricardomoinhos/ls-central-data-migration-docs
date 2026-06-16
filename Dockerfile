FROM python:3.11-slim

WORKDIR /docs

RUN pip install --no-cache-dir uv

COPY pyproject.toml mkdocs.yml README.md ./
COPY docs ./docs

RUN uv sync
RUN uv run zensical build --strict

EXPOSE 8000

CMD ["python", "-m", "http.server", "8000", "--bind", "0.0.0.0", "--directory", "site"]

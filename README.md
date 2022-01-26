# Studio in the Cloud - Github Actions

This repository hosts different github actions used in SixNines repositories.

Current actions:

- [Check python black format](.github/workflows/python_black.yaml):
  - Runs [black](https://black.readthedocs.io/en/stable/) in check mode and fails if any python file does not comply with formatting.
- [Check terraform format](.github/workflows/terraform_format.yaml)
  - Runs `terraform fmt` command and fails if any terraform file does not comply with official terraform formatting.
- [Check terraform docs](.github/workflows/terraform_docs.yaml)
  - Runs [terraform-docs](https://terraform-docs.io/) utility and fails if main README.md file is not updated.

## Usage

1. Create `.github/workflows` directory in your repository if not there yet.
2. Create a file defining the action to be run. for example: `.github/workflows/python_black.yaml`:

```yaml
name: Python black

on:
  pull_request:
    branches:
      - main

jobs:
  python-black:
    uses: SixNines/sitc-github-action/.github/workflows/python_black.yaml@v2
```

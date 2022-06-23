# Studio in the Cloud - Github Actions

This repository hosts different github actions used in SixNines repositories.

Available actions:

- Python
  - [Black](.github/workflows/python_black.yaml)
    - Runs [black](https://black.readthedocs.io/en/stable/) in check mode and fails if any python file does not comply with formatting.
- Terraform
  - [Terraform fmt](.github/workflows/terraform_format.yaml)
    - Runs `terraform fmt` command and fails if any terraform file does not comply with official terraform formatting.
  - [Terraform-docs](.github/workflows/terraform_docs.yaml)
    - Runs [terraform-docs](https://terraform-docs.io/) utility and fails if main README.md file is not updated.
  - [TFLint](.github/workflows/terraform_tflint.yaml)
    - Runs [TFLint](https://github.com/terraform-linters/tflint) tool and fails if the terraform code fail on any rule configured.

## Usage

Create a file defining the action to be run (directory must be set to `.github/workflows`). for example: `.github/workflows/python_black.yaml`:

```yaml
name: Check

on:
  pull_request:
    branches:
      - main

jobs:
  python:
    uses: SixNines/sitc-github-action/.github/workflows/python_black.yaml@v5
```

Some actions behaviour can be customized by setting variables, for example the TFLint action allows to set the directory where the check is executed:

```yaml
name: Check

on:
  pull_request:
    branches:
      - main

jobs:
  terraform:
    uses: SixNines/sitc-github-action/.github/workflows/terraform_tflint.yaml@tflint
    with:
      working-directory: ./other_directory
```

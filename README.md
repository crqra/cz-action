# cz-action

> This action allows you to run [commitizen]() commands in your workflow.

## Usage

```yaml
uses: crqra/cz-action@master
with:
  run: echo "Version is $(cz version -p)
```

## Inputs

| Name         | Description                                | Required |
| ------------ | ------------------------------------------ | -------- |
| run          | A list of commands to run                  | Yes      |
| requirements | A list of extra Python packages to install | No       |

## Examples

```yaml
name: Example Workflow

on:
  push:

jobs:
  output-version:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
        with:
          fetch-depth: 0

      - id: version
        uses: crqra/cz-action@master
        with:
          run: |
            echo "::set-output name=version::$(cz version -p)"

      - run: echo "Version is ${{ steps.version.outputs.version }}"
```

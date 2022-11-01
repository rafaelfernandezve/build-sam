# Build SAM GitHub Actions

Build SAM GitHub Actions allows you to build AWS SAM projects

## Example usage

```yaml
on: [push]

env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
  SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: protectasecurity/build-sam@v1
```
Output Artifact: dist


## Inputs

- `params` **Optional** AWS SAM build params
- `workspace` **Optional** Relative path under $GITHUB_WORKSPACE to place the project

## Environment

- `GITHUB_TOKEN` **Required**
- `SONAR_TOKEN` **Required**

## Authors

- [Ronnie Ayala](https://github.com/ronnieacs)
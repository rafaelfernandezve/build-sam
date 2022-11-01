# Build SAM GitHub Actions

Build SAM GitHub Actions allows you to build AWS SAM projects

## Example usage

```yaml
on: [push]

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

## Authors

- [Ronnie Ayala](https://github.com/ronnieacs)
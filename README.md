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

- `config` **Optional** AWS SAM configutation file path

## Authors

- [Ronnie Ayala](https://github.com/ronnieacs)
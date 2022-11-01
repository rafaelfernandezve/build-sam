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
    environment: develop
    steps:
      - uses: actions/checkout@v3
      - uses: protectasecurity/build-sam@v1
        with:
          params: '--use-container'
      - uses: SonarSource/sonarcloud-github-action@master
      - uses: actions/upload-artifact@v3
        with:
          name: dist
          path: dist
```
Output: /dist


## Inputs

- `params` **Optional** AWS SAM build params
- `workspace` **Optional** Relative path under $GITHUB_WORKSPACE to place the project

## Outputs

- `status` Returned status code.

## Authors

- [Ronnie Ayala](https://github.com/ronnieacs)
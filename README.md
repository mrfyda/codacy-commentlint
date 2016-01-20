[![Codacy Badge](https://api.codacy.com/project/badge/grade/23e7402a99bc42e99e81e935a891e920)](https://www.codacy.com/app/mrfyda/codacy-commentlint)
[![Build Status](https://circleci.com/gh/mrfyda/codacy-commentlint.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/mrfyda/codacy-commentlint)

# codacy-commentlint

A codacy tool for finding comments in your code which match the following strings:

`TODO`, `FIXME`, `HACK` and `BUG`

Please run `sh script/bootstrap` to see the generated patterns

# Developing

## Dependencies
There are some dependencies not installed by the bootstrap script. You will need
* JDK
* Scala
* sbt
* node
* npm

## Bootstrapping
Bootstrap the development environment with

```bash
sh script/bootstrap
```

## Testing
Test the project with

```bash
sh script/bootstrap
```

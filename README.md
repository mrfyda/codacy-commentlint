[![Codacy Badge](https://api.codacy.com/project/badge/e3358fb3445a4337b9e20c5c09106925)](https://www.codacy.com/app/mrfyda/codacy-comments)
[![Build Status](https://circleci.com/gh/mrfyda/codacy-commentlint.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/mrfyda/codacy-commentlint)

# codacy-comments

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

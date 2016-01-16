fs = require 'fs'
exec = require('child_process').execSync
path = require 'path'
transform = require './transform'

lintFile = (file, config) ->
  errors = []
  command = ["grep -nHwoE", '"(FIXME|TODO|HACK|BUG)"', '"' + file + '"'].join(" ")

  results = exec(command).toString()

  if results != undefined
    lines = results.split "\n"

    for line in lines
      cols = line.split ":"

      err = {}
      err.rule = "commentlint"
      err.filename = cols[0]
      err.lineNumber = parseInt cols[1]
      err.message = cols[2] + " found."

      errors.push err

  errors

lintDir = (dir, config) ->
  errors = []
  files = fs.readdirSync dir
  for file in files
    file = path.join dir, file
    stats = fs.statSync file
    if stats.isDirectory()
      errors = errors.concat lintDir file, config
    else
      errors = errors.concat lintFile file, config

  errors

exports.lintFile = lintFile
exports.lintDir = lintDir

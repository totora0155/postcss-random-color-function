fs            = require 'fs'
path          = require 'path'
CSON          = require 'cson'
postcss       = require 'postcss'
Please        = require 'pleasejs'

namespace = postcss.plugin 'postcss-namespace', (opts) ->
  if not opts?
    opts = {token: '-'}

  (css) ->
    css.replaceValues /random\(([^\)]*)\)/, {fast: 'random'}, (m, arg) ->
      result = switch arg
        when '' then Please.make_color()[0]

      # console.log str
    # css.walkRules (rule) ->
      # replaceValues
      # if /^&/.test rule.selector
      #   rule.selector = rule.selector.replace /&/, ref
      # else
      #   ref = rule.selector

module.exports = namespace

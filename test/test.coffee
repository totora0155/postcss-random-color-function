fs           = require 'fs'
path         = require 'path'
CSON         = require 'cson'
chai         = require 'chai'
expect       = chai.expect
postcss      = require 'postcss'

randomColorFunc = require '..'

set = (dir) ->
  stylePath = path.join 'test/cases/', dir, 'style.css'
  style: fs.readFileSync stylePath, 'utf-8'

describe 'postcss-cson-cssvars', ->
  it 'expect replace hex from color()', ->
    {style} = set 'init'

    result = postcss([randomColorFunc]).process(style)
    lines = result.css.split /\n/
    expect(lines[1].trim()).to.match(/#[\da-f]{6};$/)

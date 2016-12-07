local awful   = require('awful')
require('awful.autofocus')
local layouts = require('config/layouts')
local exports = {}

exports[1] = awful.tag(
  {
    '1.trm  ',
    '2.trm  ',
    '3.trm  ',
    '4.dev  ',
    '5.dev  ',
    '6.dev  ',
    '7.www  ',
    '8.www  ',
    '9.www  ',
    '10.mai  ',
    '11.etc  ',
    '12.vol',
  }, 1, layouts[1]
)

return exports

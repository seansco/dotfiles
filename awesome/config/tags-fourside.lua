local awful   = require('awful')
require('awful.autofocus')
local layouts = require('config/layouts')
local exports = {}

-- top
exports[1] = awful.tag(
  {
    '1.irc  ',
    '2.med  ',
    '3.btc  ',
    '4.bnc  ',
    '5.etc  ',
    '6.vol'
  }, 1, layouts[1]
)

-- right
exports[2] = awful.tag(
  {
    '1.www  ',
    '2.www  ',
    '3.www  ',
    '4.www  ',
    '5.www  ',
    '6.soc'
  }, 2, layouts[3]
)

-- center
exports[3] = awful.tag(
  {
    '1.wrt  ',
    '2.wrt  ',
    '3.dev  ',
    '4.dev  ',
    '5.dev  ',
    '6.dev  ',
    '7.dev  ',
    '8.dev  ',
    '9.dev  ',
    '10.etc'
  }, 3, layouts[1]
)

-- left
exports[4] = awful.tag(
  { 
    '1.trm  ',
    '2.trm  ',
    '3.trm  ',
    '4.trm  ',
    '5.trm ',
    '6.mai'
  }, 4, layouts[3]
)

return exports

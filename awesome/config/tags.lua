local awful   = require('awful')
require('awful.autofocus')
local layouts = require('config/layouts')

local exports = {}

-- top
exports[1] = awful.tag(
  { '1.com  ', '2.med  ', '3.btc  ', '4.etc  ', '5.vol' },
  1,
  layouts[1]
)

-- right
exports[2] = awful.tag(
  { '1.www  ', '2.www  ', '3.www  ', '4.www  ', '5.soc' },
  2,
  layouts[3]
)

-- center
exports[3] = awful.tag(
  { '1.wrt  ', '2.wrt  ', '3.wrt  ', '4.dev  ', '5.dev  ', '6.dev  ', '7.wrk  ', '8.wrk  ', '9.wrk  ', '10.wrk  ', '11.etc' },
  3,
  layouts[1]
)

-- left
exports[4] = awful.tag(
  { '1.trm  ', '2.trm  ', '3.trm  ', '4.www  ', '5.etc' },
  4,
  layouts[3]
)

return exports

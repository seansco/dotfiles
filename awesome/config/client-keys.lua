local awful  = require('awful')
require('awful.autofocus')
local config = require('config')

local exports = awful.util.table.join(
  
  -- close window
  awful.key({ config.modkey, 'Shift' }, 'c',
    function (c) c:kill() end
  ),

  -- toggle floating
  awful.key({ config.modkey, 'Control' }, 'space',
    awful.client.floating.toggle
  ),

  -- move to next screen
  awful.key({ config.modkey }, 'o',
    awful.client.movetoscreen
  )

)

return exports

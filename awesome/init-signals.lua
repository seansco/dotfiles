local awful       = require('awful')
require('awful.autofocus')
awful.rules       = require('awful.rules')
awful.rules.rules = require('config/rules')
local beautiful   = require('beautiful')

local exports = function() 

  -- Signal function to execute when a new client appears.
  client.connect_signal('manage', function (c, startup)

    -- Enable sloppy focus
    c:connect_signal('mouse::enter', function(c) client.focus = c end)

    if not startup then
      -- Set the windows at the slave,
      -- i.e. put it at the end of others instead of setting it master.
      -- awful.client.setslave(c)

      -- Put windows in a smart way, only if they does not set an initial position.
      if not c.size_hints.user_position and not c.size_hints.program_position then
        awful.placement.no_overlap(c)
        awful.placement.no_offscreen(c)
      end

    elseif not c.size_hints.user_position and not c.size_hints.program_position then
      -- Prevent clients from being unreachable after screen count change
      awful.placement.no_offscreen(c)
    end
  end)

  -- Change the border color on focus/unfocus
  client.connect_signal('focus'   , function(c)
    c.border_color = beautiful.border_focus
  end)
  client.connect_signal('unfocus' , function(c)
    c.border_color = beautiful.border_normal
  end)

end

return exports

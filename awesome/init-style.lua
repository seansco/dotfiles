local gears     = require('gears')
local beautiful = require('beautiful')

local exports = function()

  if beautiful.wallpaper then
    for s = 1, screen.count() do
      gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
  end

  beautiful.init('~/.config/awesome/theme/theme.lua')

end

return exports

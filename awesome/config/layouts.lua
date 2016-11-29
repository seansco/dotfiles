local awful = require('awful')
require('awful.autofocus')

local exports = {
  awful.layout.suit.tile,
  awful.layout.suit.tile.left,
  awful.layout.suit.tile.bottom,
  awful.layout.suit.tile.top,
  --awful.layout.suit.max.fullscreen,
}

return exports

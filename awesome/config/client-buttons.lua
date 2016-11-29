local awful  = require('awful')
require('awful.autofocus')
local config = require('config');

local exports = awful.util.table.join(
  awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
  awful.button({ config.modkey }, 1, awful.mouse.client.move),
  awful.button({ config.modkey }, 3, awful.mouse.client.resize)
)

return exports

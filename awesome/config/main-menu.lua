local awful     = require('awful')
require('awful.autofocus')
local beautiful = require('beautiful')
local config    = require('config')

-- Create a laucher widget and a main menu
local awesome_menu = {
  { 'manual'      , config.terminal .. ' -e man awesome' },
  { 'restart'     , awesome.restart },
  { 'quit'        , awesome.quit }
}

-- application menu
local exports = awful.menu({
  items = {
    { 'awesome'       , awesome_menu, beautiful.awesome_icon },
    { 'open terminal' , config.terminal }
  }
})

return exports

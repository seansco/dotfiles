local awful         = require('awful')
require('awful.autofocus')
local beautiful     = require('beautiful')
local clientbuttons = require('config/client-buttons')
local clientkeys    = require('config/client-keys')
local tags          = require('config/tags')

local exports = {
  -- All clients will match this rule.
  { 
    rule       = { },
    properties = {
      border_color     = beautiful.border_normal,
      border_width     = beautiful.border_width,
      buttons          = clientbuttons,
      focus            = awful.client.focus.filter,
      keys             = clientkeys,
      raise            = true,
      -- see: http://stackoverflow.com/questions/28369999/awesome-wm-terminal-window-doesnt-take-full-space
      size_hints_honor = false
    },
  },

  {
    rule       = { class    = 'MPlayer' },
    properties = { floating = true },
  },

  {
    rule       = { class    = 'pinentry' },
    properties = { floating = true },
  },

  {
    rule       = { class    = 'gimp' },
    properties = { floating = true },
  },

  -- always place Pavucontrol on tag 6 of screen 1
  {
    rule       = { class = 'Pavucontrol' },
    properties = { tag   = tags[1][6] },
  },

  {
    rule       = { class = 'Synapse' },
    properties = {
      border_width = 0,
      floating     = true,
    },
  },

}

return exports

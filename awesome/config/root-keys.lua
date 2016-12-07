local awful   = require('awful')
require('awful.autofocus')
local config  = require('config')
local layouts = require('config/layouts')

local exports = awful.util.table.join(

  -- view next/previous tag
  awful.key({ config.modkey }, 'Left',  awful.tag.viewprev),
  awful.key({ config.modkey }, 'Right', awful.tag.viewnext),
  
  -- cycle among screens
  awful.key({ config.modkey, 'Control' }, 'j', function()
    awful.screen.focus_relative(1)
  end),
  awful.key({ config.modkey, 'Control' }, 'k', function()
    awful.screen.focus_relative(-1)
  end),

  -- cycle among applications on a screen
  awful.key({ config.modkey }, 'j', function()
    awful.client.focus.byidx(1)
    if client.focus then client.focus:raise() end
  end),
  awful.key({ config.modkey }, 'k', function()
    awful.client.focus.byidx(-1)
    if client.focus then client.focus:raise() end
  end),

  -- re-arrange applications on a screen
  awful.key({ config.modkey, 'Shift' }, 'j', function()
    awful.client.swap.byidx(1)
  end),
  awful.key({ config.modkey, 'Shift' }, 'k', function()
    awful.client.swap.byidx(-1)
  end),

  -- cycle among layouts
  awful.key({ config.modkey }, 'space', function()
    awful.layout.inc(layouts,  1)
  end),
  awful.key({ config.modkey, 'Shift' }, 'space', function()
    awful.layout.inc(layouts, -1)
  end),

  -- resizing
  awful.key({ config.modkey }, 'l', function()
    awful.tag.incmwfact(0.05)
  end),
  awful.key({ config.modkey }, 'h', function()
    awful.tag.incmwfact(-0.05)
  end),

  -- layout management
  awful.key({ config.modkey, 'Shift' }, 'h', function()
    awful.tag.incnmaster( 1)
  end),
  awful.key({ config.modkey, 'Shift' }, 'l', function()
    awful.tag.incnmaster(-1)
  end),

  -- XXX: do I use these?
  --awful.key({ config.modkey, 'Control' }, 'h', function ()
    --awful.tag.incncol(1)
  --end),
  --awful.key({ config.modkey, 'Control' }, 'l', function ()
    --awful.tag.incncol(-1)
  --end),

  -- { restart, quit } awesome
  --awful.key({ config.modkey, 'Control' }, 'r', awesome.restart),
  --awful.key({ config.modkey, 'Shift'   }, 'q', awesome.quit),

  -- spawn a shell
  awful.key({ config.modkey }, 'Return', function ()
    awful.util.spawn(config.terminal)
  end),

  -- lock the screen
  awful.key({ config.modkey, 'Control' }, 'l', function ()
    awful.util.spawn('slock')
  end)
)

return exports

local awful     = require('awful')
require('awful.autofocus')
local beautiful = require('beautiful')
local config    = require('config')
local mainmenu  = require('config/main-menu')
local wibox     = require('wibox')

local launcher = awful.widget.launcher({
  image = beautiful.awesome_icon,
  menu  = mainmenu,
})

local exports = function() 

  -- Create a textclock widget
  local textclock = awful.widget.textclock()

  -- Create a wibox for each screen and add it
  widgetbox = {}
  layoutbox = {}
  taglist   = {}
  taglist.buttons = awful.util.table.join(
    awful.button({ }              , 1, awful.tag.viewonly),
    awful.button({ config.modkey }, 1, awful.client.movetotag)
  )
  tasklist = {}

  for s = 1, screen.count() do
    -- Create an imagebox widget which will contains an icon indicating which
    -- layout we're using.  We need one layoutbox per screen.
    layoutbox[s] = awful.widget.layoutbox(s)

    -- Create a taglist widget
    taglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, taglist.buttons)

    -- Create a tasklist widget
    tasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, {})

    -- Create the wibox
    widgetbox[s] = awful.wibox({ position = "top", screen = s })

    -- Widgets that are aligned to the left
    local left_layout = wibox.layout.fixed.horizontal()
    left_layout:add(launcher)
    left_layout:add(taglist[s])

    -- Widgets that are aligned to the right
    local right_layout = wibox.layout.fixed.horizontal()
    right_layout:add(textclock)
    right_layout:add(layoutbox[s])

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    layout:set_middle(tasklist[s])
    layout:set_right(right_layout)

    widgetbox[s]:set_widget(layout)
  end

end

return exports

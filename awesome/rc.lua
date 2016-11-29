-- See: http://new.awesomewm.org/apidoc/documentation/90-FAQ.md.html
-- See: https://gist.github.com/doches/2219649

-- Bug: terminals often seem to spawn on the wrong screen

-- dependencies
local awful = require('awful')
require('awful.autofocus')

-- handle startup errors
require('init-errors')()

-- apply wallpaper and theme
require('init-style')()

-- initialize the widgets
require('init-widgets')()

-- bind global keys to the root window
root.keys(require('config/root-keys'))

-- bind signal handlers
require('init-signals')()

-- run the autostart file
awful.util.spawn_with_shell('~/.config/awesome/autostart')

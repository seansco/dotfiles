local exports = {}

-- return the tag set that's appropriate for the screen count
if screen.count() == 4 then
  exports = require('config/tags-fourside')
else
  exports = require('config/tags-laptop')
end

return exports

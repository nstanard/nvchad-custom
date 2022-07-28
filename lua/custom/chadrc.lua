local M = {}

M.plugins = {
   status = {
      colorizer = true,
   },
}

M.ui = {
   theme = "tomorrow_night",
}

M.mappings = require "custom.mappings"

return M

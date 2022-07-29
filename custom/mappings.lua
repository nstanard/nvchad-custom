local M = {}

M.general = {
	n = {
		["<leader>q"] = { ":q! <CR>", "  exit nvchad" },
		["<leader>te"] = { ":Telescope <CR>", "  open telescope options" },
	},
}

M.nvterm = {
  t = {
    ["<leader>ln"] = {
      function()
        require("nvterm.terminal").send("npm run lint:mf")
      end,
      "   lint fix modified files",
    },
  }
}

return M

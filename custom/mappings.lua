local M = {}

M.general = {
	n = {
		["<leader>q"] = { ":q! <CR>", "  exit nvchad" },
		["<leader>te"] = { ":Telescope <CR>", "  open telescope options" },
	},
}

M.nvterm = {
  t = {
  }
}

return M

local M = {}

M.general = {
	n = {
		["<leader>q"] = { ":q! <CR>", "  exit nvchad" },
		["<leader>te"] = { ":Telescope <CR>", "  open telescope options" },
		["<leader>mt"] = {
			function()
				require("nvterm.terminal").send("npm run test", "float")
			end,
			"   run tests",
		},
		["<leader>mi"] = {
			function()
				require("nvterm.terminal").send("npm install", "float")
			end,
			"   run tests",
		},
	},
}

return M

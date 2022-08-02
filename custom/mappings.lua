local M = {}

M.general = {
	n = {
		["<leader>q"] = { ":q! <CR>", "  exit nvchad" },
		["<leader>te"] = { ":Telescope <CR>", "  open telescope options" },
		["<leader>mt"] = {
			function()
				require("nvterm.terminal").send("npm run test", "float")
			end,
			"   npm run test",
		},
		["<leader>mi"] = {
			function()
				require("nvterm.terminal").send("npm install", "float")
			end,
			"   npm install",
		},
		["<leader>ml"] = {
			function()
				require("nvterm.terminal").send("npm run lint:m", "float")
			end,
			"   npm run lint:m",
		},

	},
}

return M

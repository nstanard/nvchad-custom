local mappings = {
  { 'n', '<leader>[', function () require("nvterm.terminal").send("npm install", "float") end },
}

local opts = { noremap = true, silent = true }

for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping[1], opts)
end


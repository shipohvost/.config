local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', 'gl', ':HopLine<CR>', opts)
map('n', 'gtw', ':HopWord<CR>', opts)

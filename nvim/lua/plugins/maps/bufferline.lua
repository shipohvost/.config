local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', 'gtx', ':BufferLinePickClose<CR>', opts)
map('n', 'gtt', ':BufferLinePick<CR>', opts)

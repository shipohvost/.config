local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader>tr', ':Task start cmake run<CR>', opts)
map('n', '<leader>tc', ':Task start cmake configure<CR>', opts)
map('n', '<leader>tb', ':Task start cmake build<CR>', opts)
map('n', '<leader>td', ':Task start cmake debug<CR>', opts)
map('n', '<leader>ta', ':Task start cmake build_all<CR>', opts)
map('n', '<leader>tl', ':Task start cmake clean<CR>', opts)
map('n', '<leader>tt', ':Task set_module_param cmake target<CR>', opts)
map('n', '<leader>tv', ':Task set_module_param cmake build_type<CR>', opts)

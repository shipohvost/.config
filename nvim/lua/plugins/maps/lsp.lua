local map = vim.keymap.set
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
map('n', '<leader>e', vim.diagnostic.open_float)
map('n', '<leader>pe', vim.diagnostic.goto_prev)
map('n', '<leader>ne', vim.diagnostic.goto_next)
map('n', '<leader>q', vim.diagnostic.setloclist)

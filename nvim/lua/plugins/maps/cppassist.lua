local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- switch between source and header
map('n', 'gss', '<Cmd>SwitchSourceAndHeader<CR>', opts)
-- generate the function definition or static variable definition in source
map('n', '<leader>ad', '<Cmd>ImplementInSource<CR>', opts)
-- generate the function definition or static variable definition in source in visual mode
map('v', '<leader>ad', '<Cmd>lua require("cppassist").ImplementInSourceInVisualMode<CR>', opts)
-- generate the function definition or static variable definition in header
map('n', '<leader>ah', '<Cmd>ImplementOutOfClass<CR>', opts)
-- goto the header file
map('n', 'gth', '<Cmd>GotoHeaderFile<CR>', opts)

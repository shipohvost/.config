local ts = require('nvim-treesitter.configs')

ts.setup {
    modules = {},
    ensure_installed = {'c', 'cpp', 'python', 'lua', 'markdown', 'cmake', 'json'},
    sync_install = false,
    auto_install = true,
    ignore_install = {'smali'},

    highlight = {enable = true, additional_vim_regex_highlighting = false}
}

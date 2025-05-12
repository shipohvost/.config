vim.keymap.set('n', 'gw', require('nvim-window').pick)

require('nvim-window').setup({
    chars = {'a', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'o', 'r', 's', 't', 'u', 'v'},
    normal_hl = 'Normal',
    hint_hl = 'Bold',
    border = 'single'
})

local opt = vim.opt
local g = vim.g
local cmd = vim.cmd
local api = vim.api

-- search options
opt.ignorecase = true -- игнорировать буквенный регистр
opt.smartcase = true -- при использовании буквенного регистра, не игнорировать

-- tab options
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.expandtab = true
opt.smarttab = true
opt.autoindent = true

-- split options
opt.splitright = true
opt.splitbelow = true

-- view options
opt.termguicolors = true
cmd.colorscheme('nekonight-aurora')
api.nvim_set_hl(0, 'DiagnosticUnnecessary', {fg = 'Grey50'})
api.nvim_set_hl(0, 'Comment', {fg = '#9f9f9f'})
opt.number = true
opt.relativenumber = true
opt.list = true
opt.showcmd = true
opt.showmatch = true -- подсветка парной скобки
opt.hlsearch = true -- подсветка результатов поиска
opt.wrap = false
opt.cursorline = true -- подчеркивание текущей строки
opt.colorcolumn = '110'

-- other options
opt.undofile = true
opt.spell = true
opt.spelllang = "en,ru"  -- словари "английский", "русский"
opt.shell = '/bin/zsh'
opt.clipboard:append("unnamedplus")
opt.autoread = true

g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0

-- Форматированное открытие json
vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function()
    vim.cmd("%!jq .")
  end,
})

-- Изменение рабочего каталога, если открывается
-- указыванием пути (не в текущей папке) в терминале
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.argv(0) ~= "" then
            vim.cmd("cd %:p:h")
        end
    end,
})

-- Настройка отображения ошибок
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
})


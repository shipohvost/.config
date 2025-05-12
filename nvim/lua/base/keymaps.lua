local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

-- ########### Нормальный режим ###############--

map('n', 'g..', 'a<CR><Esc>k$', {noremap = true}) -- разделение строки без перевода в режим "ВСТАВКИ"
map('n', 'g.b', 'o<Esc>', {noremap = true}) -- добавление пустой строки снизу без перевода в режим "ВСТАВКИ"
map('n', 'g.a', 'O<Esc>', {noremap = true}) -- добавление пустой строки сверху без перевода в режим "ВСТАВКИ"
map('n', '<leader>w', '<C-w>', {noremap = true}) -- управление окнами
map('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = true})
map('n', '<A-Tab>', ':bNext<CR>', {noremap = true, silent = true})
map('n', 'g.x', ':bdelete<CR>', {noremap = true, silent = true})
map('n', 'g.c', ':bdelete!<CR>', {noremap = true, silent = true})
map('n', '<down>', '<C-d>', {noremap = true})
map('n', '<up>', '<C-u>', {noremap = true})
map('n', '<leader>ss', ':write<CR>', {noremap = true, silent = true})
map('n', '<leader>sa', ':wall<CR>', {noremap = true, silent = true})

-- ############################################--
-- ############################################--

-- ########## Режим командной строки ##########--

map('c', '<C-k>', '<PageUp>', {noremap = true}) -- по истории назад
map('c', '<C-j>', '<PageDown>', {noremap = true}) -- по истории вперед

-- ############################################--
-- ############################################--
--
-- ########## Терминальный режим ##############--

map('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

-- ############################################--
-- ############################################--

-- ########## Визуальный режим ################--

-- ############################################--
-- ############################################--

-- ########## Настройки плагинов ##############--
require('plugins.maps.dap')
require('plugins.maps.bufferline')
require('plugins.maps.telescope')
require('plugins.maps.hop')
require('plugins.maps.lsp')
require('plugins.maps.cppassist')
require('plugins.maps.tasks')
map('n', 'g.f', ':Format<CR>', {noremap = true, silent = true})
-- ############################################--

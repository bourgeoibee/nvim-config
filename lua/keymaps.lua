vim.g.mapleader = " "

local set = vim.keymap.set


set('n', '<c-h>', '<c-w>h', { noremap = true })
set('n', '<c-j>', '<c-w>j', { noremap = true })
set('n', '<c-k>', '<c-w>k', { noremap = true })
set('n', '<c-l>', '<c-w>l', { noremap = true })

set({ 'n', 'i' }, '<c-s>', '<cmd>w<CR>')

set('n', '<leader><leader>s', '<cmd>source ~/.config/nvim/init.lua<CR>')

set('n', '<leader>e', '<cmd>Lexplore 30<CR>', { noremap = true })

set('v', '<A-j>', '<cmd>move .+1<CR>', { noremap = true })
set('v', '<A-k>', '<cmd>move .-2<CR>', { noremap = true })

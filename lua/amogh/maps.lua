local keymap = vim.keymap

vim.g.mapleader = " "

-- file navigation maps
keymap.set('n', '<leader>pv', vim.cmd.Ex) -- open file system

-- increment/decrement num
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- window/tab maps
keymap.set('n', 'sw', '<C-w>w')
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- find symbol maps
keymap.set('n', '<leader><Esc>', ':noh<Return>')

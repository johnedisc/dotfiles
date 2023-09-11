vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

vim.keymap.set({'n', 'x'}, '<M-p>', '"+p')
vim.keymap.set({'n', 'x'}, '<M-y>', '"+y')


vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<C-j>', ':cnext<CR>')
vim.keymap.set('n', '<C-k>', ':cprev<CR>')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

--comment out
vim.keymap.set('v', '<leader>/', ':s?^?//?<CR>', { noremap = true })
vim.keymap.set('v', '<leader><leader>/', ':s?//??<CR>', { noremap = true })
vim.keymap.set('v', '<leader>#', ':s?^?#?<CR>', { noremap = true })
vim.keymap.set('v', '<leader>-', ':s?^?--?<CR>', { noremap = true })
vim.keymap.set('v', '<leader><leader>-', ':s?^--??<CR>', { noremap = true })

vim.keymap.set('i', 'jj', '<ESC>')


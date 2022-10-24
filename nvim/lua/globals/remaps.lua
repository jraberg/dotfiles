options = { noremap = true }

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', options)

vim.api.nvim_set_keymap('n', '<leader>x', ':q<CR>', options)

-- Allow gf to open non-existent files
vim.api.nvim_set_keymap('', 'gf', ':edit <cfile><CR>', options)

-- buffer switching
vim.api.nvim_set_keymap('n', '<leader>b', ' :buffers<CR>:buffer<Space>', options)

-- Change panes on vim ctrl mappings
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', options)

-- Move text up and down
vim.api.nvim_set_keymap('n', '<A-j>', ':move .+1<CR>==', options) -- TODO: Something seems to be sending Alt occasionally and makes me mess up
vim.api.nvim_set_keymap('n', '<A-k>', ':move .-2<CR>==', options) -- TODO: Something seems to be sending Alt occasionally and makes me mess up
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:move .+1<CR>==gi', options)
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:move .-2<CR>==gi', options)
vim.api.nvim_set_keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", options)
vim.api.nvim_set_keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", options)


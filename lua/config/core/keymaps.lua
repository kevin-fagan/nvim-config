local opts = { noremap = true, silent = true }

-- Exiting file
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>Q", ":q!<CR>", opts)

-- Save file
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opts)

-- Exiting Insert mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", opts)

-- Switching between windows
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', opts)
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', opts)
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', opts)
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', opts)

-- nvim-tree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, opts)
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, opts)

-- LSP Mappings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gn', vim.lsp.buf.rename, opts)

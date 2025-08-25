
-- Quit and Saving a file
vim.keymap.set({ "n", "v" }, '<leader>q', '<cmd>q<CR>')
vim.keymap.set({ "n", "v" }, '<leader>w', '<cmd>w<CR>')
vim.keymap.set({ "n", "v" }, '<leader>e', '<cmd>Neotree left focus<CR>')


-- Navigation
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')
vim.keymap.set('v', '<leader>r', '<CMD>Translate ru<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')


-- Window
-- vim.keymap.set('n', '<leader>uv', ':vsplit<CR>')
-- vim.keymap.set('n', '<leader>uh', ':split<CR>')


-- Buffer
vim.keymap.set('n', '<leader>bb', ':Neotree left buffers<CR>')
vim.keymap.set('n','<leader>bn', ':BufferLineCycleNext<CR>')
vim.keymap.set('n','<leader>bp', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>bc', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>bs', ':BufferLineSortByTabs<CR>')


-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=100<CR>')


-- Find (Telescope)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- Git
vim.keymap.set('n', '<leader>gg', ':Neotree left git_status<CR>')
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})


-- LSP
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>lr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions,
               {noremap = true, silent = true})

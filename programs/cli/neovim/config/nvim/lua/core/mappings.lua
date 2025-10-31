-- Установка лидер-клавиш
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = function(keys, func, desc, mode)
  mode = mode or 'n'
  vim.keymap.set(mode, keys, func, { noremap = true, silent = true, desc = desc })
end

-- Quit and Saving a file
map('<leader>q', '<cmd>q<CR>', "Выход из Nvim", { 'n', 'v' })
map('<leader>w', '<cmd>w<CR>', "Сохранение файла", { 'n', 'v' })
map('p', '"_dP', 'Вставить без перезаписи буфера', "v")

map("<C-b>", "<ESC>^i", "Переместить в начало строки", "i")
map("<C-e>", "<End>", "Переместить в конец строки", "i")
map("<C-h>", "<Left>", "Переместить влево", "i")
map("<C-l>", "<Right>", "Переместить вправо", "i")
map("<C-j>", "<Down>", "Переместить вниз", "i")
map("<C-k>", "<Up>", "Переместить вверх", "i")

map("<C-h>", "<C-w>h", "Переключить окно влево")
map("<C-l>", "<C-w>l", "Переключить окно вправо")
map("<C-j>", "<C-w>j", "Переключить окно вниз")
map("<C-k>", "<C-w>k", "Переключить окно вверх")

map("<Esc>", "<cmd>noh<CR>", "general clear highlights")

map("<leader>n", "<cmd>set nu!<CR>", "Переключить номера строк")
map("<leader>rn", "<cmd>set rnu!<CR>", "Переключить относительную нумерацию")

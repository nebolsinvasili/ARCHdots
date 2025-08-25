-- Basic Settings
vim.opt.shell = "/bin/zsh"            -- Shell по умолчанию
vim.opt.swapfile = false               -- Отключить swap файлы nvim
vim.opt.encoding = "utf-8"             -- Кодировка utf-8
vim.opt.cursorline = true              -- Выделять активную строку где находится курсор
vim.opt.fileformat = "unix"

-- Mouse
vim.opt.mouse = "a"                    -- Возможность использовать мышку
vim.opt.mousefocus = true

-- Search
vim.opt.ignorecase = true              -- Игнорировать регистр при поиске
vim.opt.smartcase = true               -- Не игнорирует регистр если в паттерне есть большие буквы
vim.opt.hlsearch = true                -- Подсвечивает найденный паттерн
vim.opt.incsearch = true

-- Line Numbers
vim.opt.number = true                  -- Показывает номера строк
vim.opt.relativenumber = true          -- Показывает расстояние к нужной строке относительно нашей позиции
vim.wo.number = true                   -- Показывает номера строк
vim.wo.relativenumber = true           -- Показывает расстояние к нужной строке относительно нашей позиции

-- Scroll
vim.opt.so = 10                       -- При скролле курсор всегда по центру

-- Clipboard
vim.opt.clipboard = "unnamedplus"      -- Разрешить общий буфер обмена

-- Indent Settings
vim.opt.expandtab = false               -- Превратить все tab в пробелы
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true             -- Копировать отступ на новой строке
vim.opt.cindent = true                 -- Автоотступы
vim.opt.smarttab = true                -- Tab перед строкой вставит shiftwidht количество табов

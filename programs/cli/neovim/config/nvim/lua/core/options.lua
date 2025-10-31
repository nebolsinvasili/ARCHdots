local opt = vim.opt
local o = vim.o
local wo = vim.o
local g = vim.g

----------- Основные настройки редактора -----------
-- Numbers
wo.number = true                                 -- Показывать номера строк (по умолчанию: false)
o.relativenumber = true                          -- Показывать относительные номера строк (по умолчанию: false)
o.clipboard = 'unnamedplus'                      -- Синхронизация буфера с системным clipboard (по умолчанию: '')
o.wrap = false                                   -- Отключить перенос длинных строк (по умолчанию: true)
o.linebreak = true                               -- Не разбивать слова при переносе (актуально при включённом wrap) (по умолчанию: false)
o.mouse = 'a'                                    -- Включить поддержку мыши во всех режимах (по умолчанию: '')
o.mousemoveevent = true                          -- Включить поддержку ивентов мыши
o.autoindent = true                              -- Автоматический отступ для новых строк (по умолчанию: true)
o.ignorecase = true                              -- Игнорировать регистр при поиске (по умолчанию: false)
o.smartcase = true                               -- Учитывать регистр при наличии заглавных букв (по умолчанию: false)
o.shiftwidth = 2                                 -- Количество пробелов для автоотступа (по умолчанию 8)
o.tabstop = 2                                    -- Количество пробелов для табуляции (по умолчанию: 8)
o.softtabstop = 2                                -- Количество пробелов при редактировании табов (по умолчанию: 0)
opt.cindent = true
o.expandtab = false                              -- Не преобразовывать табы в пробелы (по умолчанию: false)
o.scrolloff = 8                                  -- Минимальное количество строк выше/ниже курсора при скролле (по умолчанию: 0)
o.sidescrolloff = 8                              -- Минимальное количество колонок по бокам курсора (по умолчанию: 0)
o.cursorline = true                              -- Подсвечивать текущую строку (по умолчанию: false)
o.splitbelow = true                              -- Новые горизонтальные окна открывать снизу (по умолчанию: false)
o.splitright = true                              -- Новые вертикальные окна открывать справа (по умолчанию: false)
o.hlsearch = false                               -- Отключить подсветку результатов поиска (по умолчанию: true)
o.showmode = false                               -- Скрыть индикатор режима (INSERT/NORMAL и т.д.) (по умолчанию: true)
opt.termguicolors = true                         -- Включить true-color поддержку (по умолчанию: false)
o.whichwrap = 'bs<>[]hl'                         -- Клавиши для перехода между строками: backspace, пробел, стрелки, h/l (по умолчанию: 'b,s')
o.numberwidth = 4                                -- Ширина колонки с номерами строк (по умолчанию: 4)
o.swapfile = false                               -- Отключить создание swap-файлов (по умолчанию: true)
o.smartindent = true                             -- Умные автоотступы (по умолчанию: false)
o.showtabline = 2                                -- Всегда показывать панель вкладок (по умолчанию: 1)
o.backspace = 'indent,eol,start'                 -- Поведение backspace: удалять отступы, концы строк и начало (по умолчанию: 'indent,eol,start')
o.pumheight = 10                                 -- Максимальная высота выпадающего меню (по умолчанию: 0)
o.conceallevel = 0                               -- Отключить скрытие разметки (например `` в Markdown) (по умолчанию: 1)
wo.signcolumn = 'yes'                            -- Всегда показывать колонку знаков (для гитовых значков и т.д.) (по умолчанию: 'auto')
o.fileencoding = 'utf-8'                         -- Кодировка файлов по умолчанию (по умолчанию: 'utf-8')
o.cmdheight = 1                                  -- Высота командной строки (по умолчанию: 1)
o.breakindent = true                             -- Сохранять отступ при переносе строк (по умолчанию: false)
o.updatetime = 250                               -- Задержка обновления UI (мс) (влияет на CursorHold) (по умолчанию: 4000)
o.timeoutlen = 300                               -- Таймаут для комбинаций клавиш (мс) (по умолчанию: 1000)
o.backup = false                                 -- Отключить создание бэкап-файлов (по умолчанию: false)
o.writebackup = false                            -- Отключить резервное копирование при записи (по умолчанию: true)
o.undofile = true                                -- Сохранять историю изменений (по умолчанию: false)
o.completeopt = 'menuone,noselect'               -- Настройки автодополнения: показывать меню даже для 1 варианта, не выбирать автоматически (по умолчанию: 'menu,preview')
g.have_nerd_font = true                          -- Флаг отвечающий за наличие Nerd Fonts
opt.spell = true                                 -- Включить проверку орфографии

-- Fillchars
opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}


-- Дополнительные настройки
opt.shortmess:append 'c'                         -- Сокращать системные сообщения (не показывать completion-menu)
opt.iskeyword:append '-'                         -- Считать дефис частью слова для навигации
opt.formatoptions:remove { 'c', 'r', 'o' }       -- Отключить автоформатирование комментариев при:
                                                 --  c: переносе текста
                                                 --  r: вставке текста после комментария
                                                 --  o: создании новой строки через o/O
opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Исключить Vim-плагины из путей Neovim

opt.spelllang = { 'en_us', 'ru_ru' }             -- Языки: английский (США) и русский
vim.cmd('language ru_RU.UTF-8')

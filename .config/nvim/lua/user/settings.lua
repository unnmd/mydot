-- =====================================================
-- ОБЩИЕ НАСТРОЙКИ
-- =====================================================

-- Настройка диагностики
vim.diagnostic.config({
  virtual_text = true,
})

-- Установка парсеров treesitter
lvim.builtin.treesitter.ensure_installed = {
  "python",
  "cpp",
  "c",
  "go",
  "gomod",
}

-- Форматирование при сохранении
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py", "*.go", "*.c", "*.cpp" }

-- Основные параметры отступов и форматирования
vim.opt.expandtab = true        -- Использовать пробелы вместо табуляции
vim.opt.tabstop = 4             -- Количество пробелов, соответствующее одному табу
vim.opt.shiftwidth = 4          -- Количество пробелов для автоматического отступа
vim.opt.softtabstop = 4         -- Количество пробелов при нажатии <Tab> или <BS>
vim.opt.textwidth = 120         -- Максимальная длина строки
vim.opt.colorcolumn = "120"     -- Вертикальная линия на 120-м символе
vim.opt.autoindent = true       -- Включить автоматический отступ
vim.opt.smartindent = true      -- Включить умный отступ

-- Настройки мыши
vim.opt.mouse = "nicr"           -- Включить поддержку мыши

-- Кодировка
vim.opt.encoding = "utf-8"      -- Устанавливает кодировку символов UTF-8

-- Карта клавиш для кириллицы (langmap)
vim.opt.langmap = "ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\\"ZXCVBNM<>"

-- Проверка орфографии
vim.opt.spell = true
vim.opt.spelllang = "en_us,ru_ru"

-- Подсветка текущей строки и колонки
-- Uncomment если требуется
-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- Отображение невидимых символов
vim.opt.list = true
vim.opt.listchars = { tab = "| ", trail = "-" }  -- Настройте по необходимости

-- Настройки резервного копирования
vim.opt.backup = true
vim.opt.backupdir = vim.fn.expand("~/.config/nvim/backup/")
vim.opt.writebackup = true
vim.opt.backupcopy = "yes"

-- Автокоманда для установки параметров для файлов типа cpp
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.opt_local.textwidth = 80       -- Максимальная длина строки для C++
    vim.opt_local.colorcolumn = "80"    -- Вертикальная линия на 80-м символе для C++
  end,
})

-- Разделение окон снизу
vim.opt.splitbelow = true

-- История команд
vim.opt.history = 1000

-- Отображение номеров строк
vim.opt.number = true
vim.opt.relativenumber = true

-- Обратное удаление (backspace) для редактирования текста
vim.opt.backspace = { "indent", "eol", "start" }

-- Настройка подсветки неверных слов
vim.cmd [[
  highlight clear SpellBad
  highlight SpellBad cterm=underline,italic gui=underline,italic
]]

-- Настройка подсветки вертикальной линии
vim.cmd [[
  highlight ColorColumn ctermbg=DarkGray guibg=LightGray
]]

-- Подсветка результатов поиска
vim.opt.incsearch = true       -- Включить инкрементальный поиск
vim.opt.hlsearch = true        -- Включить подсветку результатов поиска
vim.cmd [[
  highlight Search ctermbg=LightYellow ctermfg=Red cterm=bold,italic guibg=LightYellow guifg=Red gui=bold,italic
]]

-- Автоматическое закрытие выделения после поиска
vim.api.nvim_set_keymap("n", "<esc>", ":noh<CR><esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<esc>^[", "<esc>^[] ]", { noremap = true, silent = true })

-- Настройка пары скобок для автоматического выделения закрывающего символа
vim.opt.matchpairs:append("<:>")
vim.cmd [[
  highlight MatchParen ctermbg=green ctermfg=blue guibg=green guifg=blue
]]

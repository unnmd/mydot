-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-------------------------------------------------------
-- ПЛАГИНЫ
-------------------------------------------------------
lvim.plugins = {
  -- Python
  "ChristianChiarulli/swenv.nvim",
  "stevearc/dressing.nvim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",

  -- C++
  "p00f/clangd_extensions.nvim",

  -- Go
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
    
  -- Другие плагины
  "nvim-neotest/nvim-nio",

   {
   "tzachar/cmp-tabnine",
   event = "BufRead",
   build = "./install.sh",
   },
   "github/copilot.vim",

    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = false,
        version = false, -- "*" для последнего релиза, false для обновления кода
        opts = {
          -- Добавьте любые опции здесь
        },
        build = "make", -- Для сборки из исходников используйте `make BUILD_FROM_SOURCE=true`
        -- Для Windows: "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
        dependencies = {
          "stevearc/dressing.nvim",
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",

          -- Дополнительные зависимости (опционально)
          "echasnovski/mini.pick",        -- Для file_selector провайдера mini.pick
          "nvim-telescope/telescope.nvim", -- Для file_selector провайдера telescope
          "hrsh7th/nvim-cmp",             -- Автодополнение команд Avante и упоминаний
          "ibhagwan/fzf-lua",             -- Для file_selector провайдера fzf
          "nvim-tree/nvim-web-devicons",  -- Иконки (или mini.icons)
          "zbirenbaum/copilot.lua",       -- Поддержка `providers='copilot'`

          -- Плагин для вставки изображений
          {
            "HakonHarnes/img-clip.nvim",
            event = "VeryLazy",
            opts = {
              default = {
                embed_image_as_base64 = false,
                prompt_for_file_name = false,
                drag_and_drop = {
                  insert_mode = true,
                },
                use_absolute_path = true, -- Для Windows пользователей
              },
            },
          },

          -- Рендеринг Markdown
          {
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
              file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
          },
        },
      },
}




-------------------------------------------------------
-- ОБЩИЕ НАСТРОЙКИ
-------------------------------------------------------
-- Настройка диагностики (удалена устаревшая настройка)
vim.diagnostic.config({
  virtual_text = true,   -- Показывать ошибки как виртуальный текст
  -- underline = true,
  -- severity_sort = true,
  -- update_in_insert = false,
})

-- Собираем все нужные парсеры treesitter:
lvim.builtin.treesitter.ensure_installed = {
  "python",
  "cpp",
  "c",
  "go",
  "gomod",
}

-- Форматирование при сохранении включим для всех добавленных языков:
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py", "*.go", "*.c", "*.cpp" }

-- Активируем DAP (нужен для Python, Go, C++):
lvim.builtin.dap.active = true

-------------------------------------------------------
-- ФОРМАТТЕРЫ (Black + Clang-format + Go)
-------------------------------------------------------
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({
  -- Python
  {
    command = "isort",
    extra_args = { "--line-length", "120" },
    filetypes = { "python" }
  },
  {
    command = "black",
    extra_args = { "--line-length", "120" },
    filetypes = { "python" }
  },

  -- C, C++ (Clang-format). Измените "--style=Google", если нужно.
  {
    command = "clang_format",
    filetypes = { "c", "cpp" },
    --extra_args = { "--style=Microsoft" },
    extra_args = { "--style={IndentWidth: 4, UseTab: Never, TabWidth: 4, ColumnLimit: 80}"  },
  },

  -- Go
  { command = "goimports", filetypes = { "go" } },
  { command = "gofumpt",   filetypes = { "go" } },
})

-------------------------------------------------------
-- ЛИНТЕРЫ (Flake8 + golangci-lint)
-------------------------------------------------------
local linters = require "lvim.lsp.null-ls.linters"
linters.setup({
  -- Python
  { command = "flake8", filetypes = { "python" }, extra_args = { "--max-line-length=120" } },

  -- Go
  { command = "golangci-lint", filetypes = { "go" } },
})

-------------------------------------------------------
-- SWENV НОВЫЙ БЛОК
-------------------------------------------------------
-- Настройка swenv.nvim
require('swenv').setup({
  -- Автоматически активировать виртуальное окружение при открытии файла
  auto_activate = true,

  -- Если вы используете conda, убедитесь, что 'conda_binary' правильно настроен
  -- conda_binary = 'conda',  -- По умолчанию swenv ищет 'conda' в PATH

  -- Если вы не используете conda, настройте соответствующие менеджеры
  managers = { 'virtualenv', 'venv' },

  -- Другие опции по необходимости
})

-------------------------------------------------------
-- PYTHON
-------------------------------------------------------
-- Настройка debugpy (DAP) через Mason
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)

-- Настройка Neotest (тесты Python)
require("neotest").setup({
  adapters = {
    require("neotest-python")({
      dap = {
        justMyCode = false,
        console = "integratedTerminal",
      },
      args = { "--log-level", "DEBUG", "--quiet" },
      runner = "pytest",
    })
  }
})

-- Горячие клавиши для тестов
lvim.builtin.which_key.mappings["dm"] = {
  "<cmd>lua require('neotest').run.run()<cr>", "Test Method"
}
lvim.builtin.which_key.mappings["dM"] = {
  "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP"
}
lvim.builtin.which_key.mappings["df"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class"
}
lvim.builtin.which_key.mappings["dF"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP"
}
lvim.builtin.which_key.mappings["dS"] = {
  "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary"
}

-- Выбор виртуального окружения (swenv)
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

-------------------------------------------------------
-- C++
-------------------------------------------------------
-- Отключим авто-настройку clangd, т.к. сами настраиваем
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd" })

local clangd_flags = {
  "--background-index",
  "--fallback-style=Google",
  "--all-scopes-completion",
  "--clang-tidy",
  "--log=error",
  "--suggest-missing-includes",
  "--cross-file-rename",
  "--completion-style=detailed",
  "--pch-storage=memory",
  "--folding-ranges",
  "--enable-config",
  "--offset-encoding=utf-16", -- временный фикс
}

local provider = "clangd"

local custom_on_attach = function(client, bufnr)
  require("lvim.lsp").common_on_attach(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "<leader>lh", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
  vim.keymap.set("x", "<leader>lA", "<cmd>ClangdAST<cr>", opts)
  vim.keymap.set("n", "<leader>lH", "<cmd>ClangdTypeHierarchy<cr>", opts)
  vim.keymap.set("n", "<leader>lt", "<cmd>ClangdSymbolInfo<cr>", opts)
  vim.keymap.set("n", "<leader>lm", "<cmd>ClangdMemoryUsage<cr>", opts)

  -- Inlay Hints уже настраиваются через плагин
end

local custom_on_init = function(client, bufnr)
  require("lvim.lsp").common_on_init(client, bufnr)
  -- Настройки уже применяются через плагин
end

local opts = {
  cmd = { provider, unpack(clangd_flags) },
  on_attach = custom_on_attach,
  on_init = custom_on_init,
}
require("lvim.lsp.manager").setup("clangd", opts)
-- Настройка DAP для C++ (codelldb)
lvim.builtin.dap.on_config_done = function(dap)
  dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      command = "codelldb",
      args = { "--port", "${port}" },
      -- В Windows может понадобиться:
      -- detached = false,
    },
  }

  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "codelldb",
      request = "launch",
      program = function()
        local path
        vim.ui.input({ prompt = "Path to executable: ", default = vim.loop.cwd() .. "/build/" }, function(input)
          path = input
        end)
        vim.cmd([[redraw]])
        return path
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
    },
  }
  dap.configurations.c = dap.configurations.cpp
end

-------------------------------------------------------
-- GO
-------------------------------------------------------
-- Теперь не пропускаем "gopls" автоматической конфигурацией
-- (Строка уже удалена на Шаге 1)

-- Настройка gopls
local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("gopls", {
  on_attach = function(client, bufnr)
    require("lvim.lsp").common_on_attach(client, bufnr)
    pcall(vim.lsp.codelens.refresh)

    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc, buffer = bufnr, noremap = true })
    end
    map("n", "<leader>Ci", "<cmd>GoInstallDeps<Cr>", "Install Go Dependencies")
    map("n", "<leader>Ct", "<cmd>GoMod tidy<cr>",    "Tidy")
    map("n", "<leader>Ca", "<cmd>GoTestAdd<Cr>",     "Add Test")
    map("n", "<leader>CA", "<cmd>GoTestsAll<Cr>",    "Add All Tests")
    map("n", "<leader>Ce", "<cmd>GoTestsExp<Cr>",    "Add Exported Tests")
    map("n", "<leader>Cg", "<cmd>GoGenerate<Cr>",    "Go Generate")
    map("n", "<leader>Cf", "<cmd>GoGenerate %<Cr>",  "Go Generate File")
    map("n", "<leader>Cc", "<cmd>GoCmt<Cr>",         "Generate Comment")
    map("n", "<leader>DT", "<cmd>lua require('dap-go').debug_test()<cr>", "Debug Test")
  end,
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
  settings = {
    gopls = {
      usePlaceholders = true,
      gofumpt = true,
      codelenses = {
        generate = false,
        gc_details = true,
        test = true,
        tidy = true,
      },
    },
  },
})

-- Настройка DAP для Go
local dap_ok, dapgo = pcall(require, "dap-go")
if dap_ok then
  dapgo.setup()
end

-- Gopher
local status_ok, gopher = pcall(require, "gopher")
if status_ok then
  gopher.setup {
    commands = {
      go = "go",
      gomodifytags = "gomodifytags",
      gotests = "gotests",
      impl = "impl",
      iferr = "iferr",
    },
  }
end

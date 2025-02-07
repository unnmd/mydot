-- Подключаем API wezterm
local wezterm = require("wezterm")

-- Создаем конфигурацию
local config = wezterm.config_builder()

-- Добавьте переменную PATH
config.set_environment_variables = {
  PATH = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin/"
}

-- Добавляем обработчик события для установки позиции и размера окна
wezterm.on("gui-startup", function(cmd)
  -- Получаем информацию о главном экране
  local screen = wezterm.gui.screens().main

  if screen then
    local ratio = 0.7
    local width = screen.width * ratio
    local height = screen.height * ratio
    local x = (screen.width - width) / 2 + screen.x
    local y = (screen.height - height) / 2 + screen.y

    -- Создаем окно с заданной позицией
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {
      position = { x = x, y = y },
    })

    -- Устанавливаем размер окна
    window:gui_window():set_inner_size(width, height)
  else
    -- Если информация о экране недоступна, просто создаем окно по умолчанию
    wezterm.mux.spawn_window(cmd or {})
  end
end)

-- Ваши текущие настройки конфигурации
config.font = wezterm.font("JetBrainsMono Nerd Font", {stretch = 'Expanded', weight='Medium', italic=false})
config.freetype_load_flags = 'NO_HINTING'
config.font_size = 14.5
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 8
config.color_scheme = 'GruvboxDark'

local scheme = wezterm.color.get_builtin_schemes()[config.color_scheme]
scheme.cursor_fg = scheme.background
config.color_schemes = {
  [config.color_scheme] = scheme
}

-- Устанавливаем default_prog для запуска tmux
--~/tmux.sh - tmux ls && read tmux_session && tmux attach -t $(hostname) || tmux new -s $(hostname)
config.default_prog = {"/bin/zsh", "-l", "-c", "/Users/unnmd/tmux.sh"}

-- Возвращаем конфигурацию
return config


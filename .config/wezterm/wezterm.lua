local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- abrindo sempre maximizado
config.window_decorations = "RESIZE" -- ou "TITLE | RESIZE" se quiser a barra de título
wezterm.on("gui-startup", function(cmd)
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Fonte + ligaduras (essencial pra ficar bonito com Neovim)
config.font = wezterm.font_with_fallback({
  "FiraCode Nerd Font",
})
config.font_size = 11.5
config.line_height = 1.1
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" } -- ligaduras perfeitas

-- Tema Tokyo Night Storm (o mais bonito e usado com Neovim)
config.color_scheme = "GitHub Dark"

-- Barra superior linda (tab bar)
config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = false

-- Janela sem borda + padding
config.window_decorations = "RESIZE"     -- tira os botões do Windows, fica minimalista
config.window_background_opacity = 0.95
config.win32_system_backdrop = "Acrylic" -- Windows 11: fundo borrado lindo
config.window_padding = {
  left = "1cell",
  right = "1cell",
  top = "0.5cell",
  bottom = "0.5cell",
}

-- Cursor bonitinho
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 600

-- Fundo levemente borrado + textura (Windows 11)
config.window_background_opacity = 0.90
config.win32_system_backdrop = "Acrylic"
config.text_background_opacity = 1.0

-- Tab bar com ícones e cores melhores
config.colors = {
  tab_bar = {
    background = "#1a1b26",
    active_tab = {
      bg_color = "#7aa2f7",
      fg_color = "#1a1b26",
    },
    inactive_tab = {
      bg_color = "#292e42",
      fg_color = "#545c7e",
    },
  },
}

-- Animações suaves (open/close de janelas)
config.animation_fps = 144
config.cursor_thickness = "2px"

-- Git Bash Padrão
config.default_prog = { "C:/Program Files/Git/bin/bash.exe", "-l" }

return config

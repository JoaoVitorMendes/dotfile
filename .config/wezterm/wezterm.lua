--- AVISO ---
--- Para carregamento d o shell usa se primeiro e reinicie
--- chsh -s /bin/fish


--- ShortCuts

--- Recarregar
--- Ctrl + Shift + R

--- Scroll Up and Down
--- Shift-PageUp and Shift PageDown

--- Novo Terminal
--- Super-N

--- Split horizontally/vertically
--- Ctrl-Shift-Alt-% and Ctrl-Shift-Alt-"
--- mover entre eles Ctrl-Shift-cima-baixo-esquerdo-direito

--- Nova Tab
--- Super-T
--- Mover entre eles
--- Super-Shift-[ and Super-Shift-]
--- Possível erro de concordancia com Hyprland
--- Super-[1-9]



--- Configuração

local wezterm = require 'wezterm'

return {
  --- Fonts
  --- weight values = Thin, ExtraLight, Light, DemiLight, Book, Regular, Medium, DemiBold, Bold, ExtraBold, Black, ExtraBlack
  --- style valores = Normal,Italic,Oblique

  font = wezterm.font('JetBrains Mono',
    { weight = 'Bold',
    italic = true,
    bold = true
  }),
  bold_brightens_ansi_colors = true,
  dpi = 96.0,

--- font_dirs = { 'fonts' } Font especifica em uma pasta
font_Size = 12,
--- cell_width = 1.0, espacos entre as fontes
--- line_height = 1.0, espacamente vertical da fonte

--- Esquemas de cores
  colors = {
    background = '#0F0908',
    foreground = '#491D13',

    cursor_bg = '#491D13',
    cursor_fg = '#9B3A24',
    cursor_border = '#491D13',

    selection_fg = '#341F1A',
    selection_bg = '#0F0908',

    scrollbar_thumb = '#341F1A',

    split = '#341F1A',

    ansi = {
      'black',
      'maroon',
      'green',
      'olive',
      'navy',
      'purple',
      'teal',
      'silver',
    },

    tab_bar = {
      inactive_tab_edge = '#575757',
      background = '#0F0908',

      active_tab = {
        bg_color = '#341F1A',
        fg_color = '#D9C3A9',
        intensity = 'Half',
         underline = 'None',
         italic = true,
         strikethrough = false,
      },

      inactive_tab = {
        bg_color = '#0F0908',
        fg_color = '#491D1A',
      },

      new_tab = {
        bg_color = '#0F0908',
        fg_color = '#491D13',
      },
    },
  },

  --- Barra
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,

  window_frame = {
    font = wezterm.font { family = 'Roboto', weight = 'Bold' },
    font_size = 12.0,
    
    active_titlebar_bg = '#0F0908',
    inactive_titlebar_bg = '#ccc',
  },

  --- Setar Opacidade
  window_background_opacity = 0.98,

  --- Setar Opacidade do texto em 0.0 < 1.0
  --- text_background_opacity = 0.3,
}



--- Ultilitários

--- Modo Cópia sem mouse
--- CTRL-SHIFT-X e Mova com direcional
--- aperte "v" e selecione o texto e aperte CTRl-SHIFT-C >>>> para copiar

--- Seleção retangular 	CTRL-v


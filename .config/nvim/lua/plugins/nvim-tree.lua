 require("nvim-tree").setup({
         auto_reload_on_write = true,
         create_in_closed_folder = false,
         open_on_setup = false,
         open_on_setup_file = false,
         open_on_tab = false,
         sort_by = "name",
         view = {
             adaptive_size = true,
             centralize_selection = true,
             width = 10,
             height = 10,
             side = "right",
             preserve_window_proportions = false,
            number = false,
            float = {
                enable = true,
                open_win_config = {
                relative = "editor",
                border = "rounded",
                width = 50,
                height = 50,
                row = 1,
                col = 1,
            },
        }
    },
         renderer = {
             add_trailing = true,
             group_empty = false,
             highlight_git = true,
             full_name = false,
             highlight_opened_files = "none",
             indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
            corner = "└",
            edge = "│",
            item = "│",
            none = " ",
        },
    },
    icons = {
          webdev_colors = true,
          git_placement = "before",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
              default = "",
              symlink = "",
              bookmark = "",
              folder = {
                  arrow_closed = "",
                  arrow_open = "",
                  default = "",
                  open = "",
                  empty = "",
                  empty_open = "",
                  symlink = "",
                  symlink_open = "",
              },
              git = {
                  unstaged = "✗",
                  staged = "✓",
                  unmerged = "",
                  renamed = "➜",
                  untracked = "★",
                  deleted = "",
                  ignored = "◌",
              },
          },
      },
  },
})

--- For more settings use :help nvim-tree section highlight

vim.cmd([[ highlight NvimTreeFolderName guifg=#7C2F1E gui=bold,italic ]])
vim.cmd([[ highlight NvimTreeOpenedFolderName guifg=#968773 gui=bold,italic ]])
vim.cmd([[ highlight NvimTreeFolderIcon guifg=#5F2518 gui=bold,italic ]])
vim.cmd([[ highlight NvimTreeEmptyFolderName guifg=#A69460 gui=bold,italic ]])
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#968773 ]])

vim.cmd([[ map <C-a> :NvimTreeToggle <CR> ]])

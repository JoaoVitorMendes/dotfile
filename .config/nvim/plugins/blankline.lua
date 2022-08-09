require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}


--Settings simples
--vim.opt.list = true
--vim.opt.listchars:append "eol:↴"

--require("indent_blankline").setup {
  --  show_end_of_line = true,
--}


vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#411D78 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#6A2896 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#8F27AF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#800C9C gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#112257 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#3E2262 gui=nocombine]]

vim.opt.list = false
vim.opt.listchars:append "space:."
--vim.opt.listchars:append "eol: "

require("indent_blankline").setup {
    space_char_blankline = " ",
     show_current_context = true,
     show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}

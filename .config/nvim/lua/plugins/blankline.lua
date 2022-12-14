local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
    return
end


vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
        "help",
        "startify",
        "dashboard",
        "packer",
        "neogitstatus",
        "NvimTree",
        "Trouble",
}

vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
        "class",
        "return",
        "function",
        "method",
        "^if",
        "^while",
        "jsx_element",
        "^for",
        "^object",
        "^table",
        "block",
        "arguments",
        "if_statement",
        "else_clause",
        "jsx_element",
        "jsx_self_closing_element",
        "try_statement",
        "catch_clause",
        "import_statement",
        "operation_type",
}

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}


-- Settings simples
-- vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"

-- require("indent_blankline").setup {
  --  show_end_of_line = true,
--}


vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#3D241E gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#412618 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#5D382E gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#2C241F gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#63574B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#5F5448 gui=nocombine]]

vim.opt.list = true
 vim.opt.listchars:append "space:."
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
     space_char_blankline = " ",
     show_current_context = false,
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

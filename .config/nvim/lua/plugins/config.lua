--- require('colors')
--- require('lsp')

local fn = vim.fn
local api = vim.api

-- Built-in plugins {{{
local disabledPlugins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
}

for _, plugin in pairs(disabledPlugins) do
	vim.g["loaded_" .. plugin] = 1
end


--- }}}

--- Diagnostics {{{

fn.sign_define("DiagnosticSignHint",  { text = "",  texthl = "DiagnosticHint"  })
fn.sign_define("DiagnosticSignError", { text = "",  texthl = "DiagnosticError" })
fn.sign_define("DiagnosticSignWarn",  { text = " ", texthl = "DiagnosticWarn"  })
fn.sign_define("DiagnosticSignInfo",  { text = " ", texthl = "DiagnosticInfo"  })

--- Color dos icones
api.nvim_command("hi DiagnosticError guifg=#000335")
api.nvim_command("hi DiagnosticWarn  guifg=#000444")
api.nvim_command("hi DiagnosticHint  guifg=#000222")

api.nvim_command("hi DiagnosticVirtualTextError guifg=Red")
api.nvim_command("hi DiagnosticVirtualTextWarn  guifg=Yellow")
api.nvim_command("hi DiagnosticVirtualTextInfo  guifg=White")
api.nvim_command("hi DiagnosticVirtualTextHint  guifg=White")

api.nvim_command("hi DiagnosticUnderlineError guifg=NONE gui=underline")
api.nvim_command("hi DiagnosticUnderlineWarn  guifg=NONE gui=underline")
api.nvim_command("hi DiagnosticUnderlineInfo  guifg=NONE gui=underline")
api.nvim_command("hi DiagnosticUnderlineHint  guifg=NONE gui=underline")

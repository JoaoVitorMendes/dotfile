local lspconfig = require 'lspconfig'

--- Document highlights
local function document_highlight()
	vim.api.nvim_exec([[
		hi LspReferenceRead  guibg=#121111 guifg=#43251A
		hi LspReferenceText  guibg=#121111 guifg=#43251A
		hi LspReferenceWrite guibg=#121111 guifg=#9B3A24
		augroup lsp_document_highlight
			autocmd!
			autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
			autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
			autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
		augroup END
	]], false)
end


--- Custom attach
local on_attach_vim = function()
	document_highlight()
	vim.keymap.set("n", "<leader>dc", ":Telescope diagnostics bufnr=0<cr>")
	vim.keymap.set('n', '<leader>gr', ":Telescope lsp_references<cr>", { buffer = 0 })
end

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })



local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		'documentation',
		'detail',
		'additionalTextEdits',
	}
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = false, -- Enable underline, use default values
	virtual_text = false -- Enable virtual text only on Warning or above, override spacing to 2
}
)



--- lua {{{

require'lspconfig'.sumneko_lua.setup {
--	cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
	on_attach = on_attach_vim,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				-- Get the language server to recognize LuaJIT globals like `jit` and `bit`
				version = 'LuaJIT',
				-- Setup your lua path
				path = vim.split(package.path, ';'),
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim', 'use'},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = {
					[vim.fn.expand('$VIMRUNTIME/lua')] = true,
					[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
					vim.api.nvim_get_runtime_file("", true),
				},
			},
		},
	},
}

--- }}}

--- Javascript {{{
--- npm install -g typescript typescript-language-server

local root_pattern = lspconfig.util.root_pattern
require'lspconfig'.tsserver.setup {
	root_dir = root_pattern("package.json"),
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	init_options = { hostInfo = "neovim" },
}

--- }}}

--- html {{{

---local capabilities = vim.lsp.protocol.make_client_capabilities()
---capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
	capabilities = capabilities,
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html" },
    init_options = {
	configurationSection = { "html", "css", "javascript" },
	embeddedLanguages = {
		css = true,
		javascript = true
  },
	provideFormatter = true,
	single_file_support = false
}
}

--- }}}

--- css {{{
--- npm i -g vscode-langservers-extracted

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" },
  root_dir = root_pattern("package.json", ".git") or bufdir,
}


--- vimscript {{{ 
--- npm install -g vim-language-server

require'lspconfig'.vimls.setup{
	cmd = { "vim-language-server", "--stdio" },
	filetypes = { "vim" },
	init_options = {
		diagnostic = {
		enable = true
	},
	indexes = {
		count = 3,
		gap = 100,
		projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
		runtimepath = true
	},
	isNeovim = true,
	iskeyword = "@,48-57,_,192-255,-#",
	runtimepath = "",
	suggest = {
		fromRuntimepath = true,
		fromVimruntime = true
	},
	vimruntime = ""
	},
	single_file_support = true
}

--- }}}


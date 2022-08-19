--- Remapeamento
---- Remaps
-----remaps aqui


--- Auto comandos
---- autocmd
----- autocmds aqui

--- Shortcust Naveggar nos splits
--- map <C-h> <C-w>h
--- map <C-j> <C-w>j
--- map <C-k> <C-w>k
--- map <C-l> <C-w>l

--- Criação de linhas
--- nmap op o<Esc>k
--- nmap oi O<Esc>j
--- nmap oo A<CR>

--- Criação de tabs
--- nmap te :tabe<CR>


--- Navegar buffers
--- nmap ty :bn<CR>
--- nmap tr :bp<CR>

--- deletar buffers
--- nmap td :bd<CR>

--- criar sprits
vim.cmd([[ map th :split<CR> ]])
vim.cmd([[ nmap tv :vsplit<CR> ]])

--- fechar splits e outros
--- nmap tt :q<CR>

--- chamar um comando curto
--- nmap tc :!

--- sair forcado
vim.cmd([[ nmap <C-q> :q! <CR> ]])

--- sair e salvar
vim.cmd([[ nmap <C-w> :w <CR> ]])

--- sair e salvar forcado
vim.cmd([[ nmap <C-c> :wq! <CR> ]])

--- sair
vim.cmd([[ nmap <C-e> :q <CR> ]])

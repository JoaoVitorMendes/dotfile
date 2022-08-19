--- Ligar
vim.cmd([[ nmap <C-l> :Limelight <CR> ]])

--- Desligar
vim.cmd([[ nmap <C-ç> :Limelight! <CR> ]])

vim.cmd([[ let g:limelight_conceal_ctermfg = 'gray' ]])
vim.cmd([[ let g:limelight_conceal_ctermfg = 240 ]])
vim.cmd([[ let g:limelight_default_coefficient = 0.7 ]])
vim.cmd([[ let g:limelight_paragraph_span = 1 ]])
vim.cmd([[ let g:limelight_bop = '^\s' ]])
vim.cmd([[ let g:limelight_eop = '\ze\n^\s' ]])
vim.cmd([[ let g:limelight_priority = -1 ]])


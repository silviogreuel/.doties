local opt = vim.opt
local wo = vim.wo
local cmd = vim.cmd

opt.number = true
opt.tabstop = 2
opt.softtabstop = 0
opt.expandtab = true
opt.shiftwidth = 2
opt.backspace = { "indent", "start", "eol" }
vim.wo.wrap = false
opt.completeopt = 'menu,menuone,preview,noselect,noinsert'
opt.previewheight = 5
opt.mouse = 'a'
opt.cursorcolumn = true
opt.cursorline = true
opt.showbreak = '↪'
opt.listchars = 'tab:→\\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨,space:·'
opt.list = true
opt.splitbelow = true
opt.splitright = true

cmd [[autocmd BufWritePre *.ex lua vim.lsp.buf.formatting_sync({}, 1500)]]

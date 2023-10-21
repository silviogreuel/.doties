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
opt.spell = true
opt.spelllang = 'en_us'
vim.g.mapleader = "\\"

-- cmd [[autocmd BufWritePre *.{ex,exs} lua vim.lsp.buf.formatting_sync({}, 1500)]]
cmd [[autocmd BufWritePre *.{ex,exs} lua vim.lsp.buf.format()]]

-- db_ui, move from here
vim.g.db_ui_use_nerd_fonts = true
vim.g.db_ui_win_position = 'right'
vim.g.db_ui_show_database_icon = true
-- vim.g.db_ui_icons = {
--   expanded = '▾',
--   collapsed= '▸',
--   saved_query= '*',
--   new_query= '+',
--   tables= '~',
--   buffers= '»',
--   connection_ok= '✓',
--   connection_error= '✕',
-- }

vim.g.db_ui_icons =  {
  expanded = {
    db = '▾ ',
    buffers = '▾ ',
    saved_queries = '▾ ',
    schemas = '▾ ',
    schema = '▾ פּ',
    tables = '▾ 藺',
    table = '▾ ',
  },
  collapsed = {
    db = '▸ ',
    buffers = '▸ ',
    saved_queries = '▸ ',
    schemas = '▸ ',
    schema = '▸ פּ',
    tables = '▸ 藺',
    table = '▸ ',
  },
  saved_query = '',
  new_query = '璘',
  tables = '離',
  buffers = '﬘',
  add_connection = '',
  connection_ok = '✓',
  connection_error = '✕',
}

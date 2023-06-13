local function _map(mode)
  return function(lhs, rhs, opt)
    vim.api.nvim_set_keymap(mode, lhs, rhs, opt or {})
  end
end

local map = _map("")
local nmap = _map("n")
local vmap = _map("v")
local imap = _map("i")
local omap = _map("o")

-- select line
vmap('Y', '"+y', { noremap = true })
nmap('P', '"+p', { noremap = true })
nmap('vv', '^vg_', { noremap = true })

-- tab selection
map('<leader>1', '1gt')
map('<leader>2', '2gt')
map('<leader>3', '3gt')
map('<leader>4', '4gt')
map('<leader>5', '5gt')
map('<leader>6', '6gt')
map('<leader>7', '7gt')
map('<leader>9', '9gt')

-- pane switching
map('<C-j>', '<C-W>j')
map('<C-k>', '<C-W>k')
map('<C-h>', '<C-W>h')
map('<C-l>', '<C-W>l')

-- diff

-- look and feel
nmap('<F3>', ':ZenMode<cr>', { noremap = true, silent = true })
nmap('<F4>', ':Twilight<cr>', { noremap = true, silent = true })
nmap('<F7>', ':NvimTreeToggle<cr>')

-- testing
nmap(
  '<F5>',
  ':lua require("neotest").run.run(vim.fn.expand("%"))<cr>',
  { noremap = true, silent = true }
)

nmap(
  '<F6>',
  '<cmd>lua require("neotest").summary.toggle()<cr>',
  { noremap = true, silent = true }
)


-- browsing

nmap(
  '<C-p>',
  ':lua require("telescope.builtin").find_files()<cr>',
  { noremap = true, silent = true }
)
nmap(
  '<C-p><C-p>',
  ':lua require("telescope.builtin").live_grep({ hidden = true })<cr>',
  { noremap = true, silent = true }
)
nmap(
  '<C-p><C-b>',
  ':lua require("telescope.builtin").buffers()<cr>',
  { noremap = true, silent = true }
)
nmap(
  '<C-p><C-m>',
  ':lua require("telescope.builtin").marks()<cr>',
  { noremap = true, silent = true }
)
nmap(
  '<C-p><C-f>',
  ':lua require("telescope.builtin").file_browser()<cr>',
  { noremap = true, silent = true }
)
nmap(
  '<C-p><C-d>',
  ':lua require("telescope.builtin").lsp_definitions()<cr>',
  { noremap = true, silent = true }
)
nmap(
  '<C-p><C-r>',
  ':lua require("telescope.builtin").lsp_references()<cr>',
  { noremap = true, silent = true }
)
nmap(
  '<C-p><C-i>',
  ':lua require("telescope.builtin").lsp_implementations()<cr>',
  { noremap = true, silent = true }
)


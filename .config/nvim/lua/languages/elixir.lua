local lspconfig = require("lspconfig")
local cmp = require("cmp")

local on_attach = function(capabilities)
  return function(client, bufnr)
    local opts = { noremap=true, silent=true }

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>H', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>h', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<A-space>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cf', '<cmd>lua vim.lsp.buf.format()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cd', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)

    vim.cmd [[imap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]
    vim.cmd [[smap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]

    vim.cmd [[imap <expr> <tab> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<tab>']]
    vim.cmd [[smap <expr> <tab> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<tab>']]
    vim.cmd [[imap <expr> <S-tab> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-tab>']]
    vim.cmd [[smap <expr> <S-tab> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-tab>']]

    require("cmp_nvim_lsp").default_capabilities(capabilities)
  end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

cmp.setup({
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<esc>'] = cmp.mapping.close(),
    ['<tab>'] = cmp.mapping.confirm({ select = true }),
    ['<cr>'] = cmp.mapping.confirm({ select = true }),
    ['<up>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<down>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
    ["<C-k>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<C-j>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" },
  },
  formatting = {
    format = require("lspkind").cmp_format({
      with_text = true,
      menu = {
        nvim_lsp = "[LSP]",
      },
    }),
  },
})

lspconfig.elixirls.setup {
  cmd = { vim.fn.expand('~/.config/elixir_ls/language_server.sh') },
  on_attach = on_attach(capabilities),
  capabilities = capabilities,
  settings = {
    elixirLS = {
      dialyzerEnabled = true,
      fetchDeps = false,
      autoInsertRequiredAlias = true,
      suggestSpecs = true
    }
  }
}

lspconfig.efm.setup({
  filetypes = { 'elixir' }
})

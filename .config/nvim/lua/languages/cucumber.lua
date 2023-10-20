local lspconfig = require("lspconfig")

local on_attach = function(capabilities)
  return function(client, bufnr)
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<A-space>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cf', '<cmd>lua vim.lsp.buf.format()<cr>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)

    require("cmp_nvim_lsp").default_capabilities(capabilities)
  end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.cucumber_language_server.setup{
  on_attach = on_attach(capabilities)
}


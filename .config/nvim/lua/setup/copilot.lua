-- least permissible
-- vim.g.copilot_filetypes = { ["*"] = true, elixir =  true }

-- don't do this, go with the lest permissible approach
-- vim.g.copilot_filetypes = { ["*"] = true, javascript = false }

-- vim.g.copilot_no_tab_map = true

require("copilot").setup({
  suggestion = {
    enabled = true,
    auto_trigger = true
  },
  filetypes = {
    javascript = true,
    typescript = true,
    elixir = true,
    ["*"] = false, -- least permissible
  },
})

require("nvim-treesitter.configs").setup({
    ensure_installed = {"elixir", "graphql"},
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true
    },
    playground = {
      enable = true
    }
})

local actions = require("telescope.actions")

require'telescope'.setup{
  defaults = {
    prompt_prefix = " ❯ ",
    selection_caret = "❯ ",
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-n>'] = actions.cycle_history_next,
        ['<C-p>'] = actions.cycle_history_prev
      }
    }
  }
}

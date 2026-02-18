 -- nvim-tree configuration
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = {
      quit_on_open = true,
    }
  },
  view = {
    adaptive_size = true,
    number = false,
  },
  -- Keymaps moved to on_attach function
  on_attach = function(bufnr)
    local api = require('nvim-tree.api')

    -- Default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- Custom mappings
    vim.keymap.set('n', 'u', api.tree.change_root_to_parent, { buffer = bufnr, desc = 'Up' })
  end,
})

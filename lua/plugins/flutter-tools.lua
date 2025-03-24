return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function()
          require("flutter-tools").setup {
            -- Basic flutter-tools configuration
            lsp = {
              color = { enabled = true }, -- Optional: enable UI enhancements
              -- on_attach = on_attach,
            },
            -- Load the Telescope extension
            telescope = require("telescope").load_extension("flutter"),
          }
        end,
}

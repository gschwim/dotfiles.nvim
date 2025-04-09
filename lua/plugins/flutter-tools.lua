return {
    'nvim-flutter/flutter-tools.nvim',
    event = { "BufReadPre", "BufNewFile" },
    -- lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function()
          local lsp_utils = require('lsp_utils')
          require("flutter-tools").setup {
            -- Basic flutter-tools configuration
            lsp = {
              color = { enabled = true }, -- Optional: enable UI enhancements
              on_attach = function(client, bufnr)
                  -- Call the shared on_attach from lsp_utils
                  lsp_utils.on_attach(client, bufnr)

                  -- Add more Flutter-specific keybindings
                  vim.keymap.set("n", "<leader>f", "<cmd>Telescope flutter commands<cr>", {
                    buffer = bufnr,
                    desc = "Flutter Run",
                  })
                  vim.keymap.set("n", "<leader>fq", "<cmd>FlutterQuit<cr>", {
                    buffer = bufnr,
                    desc = "Flutter Quit",
                  })
                  vim.keymap.set("n", "<leader>fr", "<cmd>FlutterRun<cr>", {
                    buffer = bufnr,
                    desc = "Flutter Run",
                  })
                end,



              capabilities = require('cmp_nvim_lsp').default_capabilities(),
            },
            -- Load the Telescope extension
            telescope = require("telescope").load_extension("flutter"),
          }
        end,
}

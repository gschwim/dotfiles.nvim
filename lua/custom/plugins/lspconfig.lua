 -- LSP Configuration & Plugins
return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      -- 07.24.2023 - per fidget gh page, use legacy tag so nvim stops complaining
      -- about the thing being upgraded in the future at nvim start
      { 'j-hui/fidget.nvim', tag='legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
}

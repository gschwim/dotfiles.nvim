# dotfiles.nvim
__gschwim__

### Introduction

#### Example: Adding a file to change default options

To change default options, you can add a file in the `/after/plugin/` folder (see `:help load-plugins`) to include your own options, keymaps, autogroups, and more. The following is an example `defaults.lua` file (located at `$HOME/.config/nvim/after/plugin/defaults.lua`).

```lua
vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
```

### TODOs

  - [ ] - Figure out surround plugin - conflicting with 'y' command set?
  - [ ] - Investigate nvim-tree


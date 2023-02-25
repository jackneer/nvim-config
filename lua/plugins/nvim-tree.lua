vim.g.loaded_netrw = 1
vim.g.netrwPlugin = 1

vim.opt.termguicolors = true

require('nvim-tree').setup({
  view = {
    width = 30,
  },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
      adaptive_size = true,
      side = "left",
		  signcolumn = "no",
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

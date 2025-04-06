return {
  vim.api.nvim_set_keymap('n', '<leader>a', ':AerialOpen<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>b', ':AerialClose<CR>', { noremap = true, silent = true }),
}

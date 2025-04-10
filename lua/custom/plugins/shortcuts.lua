return {
  vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>.', ':w<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>a', ':AerialOpen<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>z', ':AerialClose<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>[', ':NvimTreeRefresh<CR>:NvimTreeOpen<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>]', ':NvimTreeClose<CR>', { noremap = true, silent = true }),
}

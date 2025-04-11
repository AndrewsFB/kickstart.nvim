return {
  vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>.', ':w<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>a', ':AerialOpen<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>z', ':AerialClose<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>[', ':NvimTreeRefresh<CR>:NvimTreeOpen<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>]', ':NvimTreeClose<CR>', { noremap = true, silent = true }),

  -- Atallhos para nvim-dap-ui
  vim.api.nvim_set_keymap('n', '<leader>db', ':DapToggleBreakpoint<CR>', { desc = 'Toggle Breakpoint', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>dc', ':DapContinue<CR>', { desc = 'Continue', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>di', ':DapStepInto<CR>', { desc = 'Step Into', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>do', ':DapStepOver<CR>', { desc = 'Step Over', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>dr', ':DapReplOpen<CR>', { desc = 'Open REPL', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>dl', ':DapRunLast<CR>', { desc = 'Run Last Debug', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>dt', ':DapTerminate<CR>', { desc = 'Terminate Debug', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>du', ':DapuiToggle<CR>', { desc = 'Toggle Debug UI', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>ds', ':DapStepOut<CR>', { desc = 'Step Out', noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>de', ':DapEval<CR>', { desc = 'Evaluate Expression', noremap = true, silent = true }),
}

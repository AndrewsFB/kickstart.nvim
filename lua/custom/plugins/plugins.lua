return {

  { 'rcarriga/nvim-dap-ui', dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' } },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {}
    end,
  },

  {
    'xiyaowong/transparent.nvim',
    config = function()
      require('transparent').setup {
        groups = { -- Grupos padrão
          'Normal',
          'NormalNC',
          'Comment',
          'Constant',
          'Special',
          'Identifier',
          'Statement',
          'PreProc',
          'Type',
          'Underlined',
          'Todo',
          'String',
          'Function',
          'Conditional',
          'Repeat',
          'Operator',
          'Structure',
          'LineNr',
          'NonText',
          'SignColumn',
          'CursorLine',
          'CursorLineNr',
          'StatusLine',
          'StatusLineNC',
          'EndOfBuffer',
        },
        extra_groups = {
          'NvimTreeNormal',
          'NvimTreeEndOfBuffer',
        },
        exclude_groups = {},
      }
    end,
  },

  {
    'stevearc/aerial.nvim',
    opts = {},
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
  },

  -- Configuração do nvim-dap para C# com netcoredbg
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'mfussenegger/nvim-dap',
    },
  },

  {
    'jay-babu/mason-nvim-dap.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'mfussenegger/nvim-dap',
    },
    config = function()
      require('mason-nvim-dap').setup {
        -- Você pode adicionar configurações específicas aqui, veja a documentação do plugin
        handlers = {},
      }
    end,
  },

  -- Configuração manual do adapter coreclr (caso o mason-nvim-dap não funcione como esperado)
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'
      dap.adapters.coreclr = {
        type = 'executable',
        command = '/usr/local/bin/netcoredbg',
        options = {
          cwd = '${workspaceFolder}',
        },
      }

      dap.configurations.cs = {
        {
          name = '.NET Core Launch (console)',
          type = 'coreclr',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
          end,
          cwd = '${workspaceFolder}',
          console = 'integratedTerminal',
        },
        {
          name = '.NET Core Attach',
          type = 'coreclr',
          request = 'attach',
          processId = require('dap.utils').pick_process,
          cwd = '${workspaceFolder}',
        },
      }
    end,
    dependencies = {
      'rcarriga/nvim-dap-ui',
    },
  },

  -- Configuração da UI do nvim-dap (opcional, mas recomendado)
  {
    'rcarriga/nvim-dap-ui',
    config = function()
      require('dapui').setup()
    end,
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' }, -- Adicionando nvim-nio como dependência aqui também por precaução
  },

  -- Keymaps para o nvim-dap (adicione isso em outro arquivo de configuração de keymaps, se você tiver um separado)
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.*',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-telescope/telescope-media-files.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  {
    'folke/which-key.nvim',
    config = function()
      require('which-key').setup()
    end,
  },
  {
    'folke/noice.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        -- add any options here
      }
    end,
  },
  {
    'MunifTanjim/nui.nvim',
  },
  {
    'rcarriga/nvim-notify',
  },
}

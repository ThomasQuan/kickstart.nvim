return {
  'romgrk/barbar.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  init = function()
    vim.g.barbar_auto_setup = false
  end,

  opts = {
    animation = false,

    auto_hide = false,

    clickable = true,

    icons = {
      buffer_index = false,
      buffer_number = false,

      button = '󰅖',

      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true },
        [vim.diagnostic.severity.WARN] = { enabled = true },
        [vim.diagnostic.severity.INFO] = { enabled = false },
        [vim.diagnostic.severity.HINT] = { enabled = false },
      },

      filetype = {
        enabled = true,
      },

      separator = {
        left = '▎',
        right = '',
      },

      modified = {
        button = '●',
      },

      pinned = {
        button = '󰐃',
      },
    },

    sidebar_filetypes = {
      ['neo-tree'] = {
        event = 'BufWipeout',
        text = 'Explorer',
        align = 'left',
      },
    },
  },

  keys = {
    { '<S-h>', '<Cmd>BufferPrevious<CR>', desc = 'Prev Buffer' },
    { '<S-l>', '<Cmd>BufferNext<CR>', desc = 'Next Buffer' },

    { '<leader>bp', '<Cmd>BufferPin<CR>', desc = 'Pin Buffer' },

    { '<leader>bc', '<Cmd>BufferClose<CR>', desc = 'Close Buffer' },

    { '<C-1>', '<Cmd>BufferGoto 1<CR>', desc = 'Buffer 1' },
    { '<C-2>', '<Cmd>BufferGoto 2<CR>', desc = 'Buffer 2' },
    { '<C-3>', '<Cmd>BufferGoto 3<CR>', desc = 'Buffer 3' },
    { '<C-4>', '<Cmd>BufferGoto 4<CR>', desc = 'Buffer 4' },
    { '<C-5>', '<Cmd>BufferGoto 5<CR>', desc = 'Buffer 5' },
    { '<C-6>', '<Cmd>BufferGoto 6<CR>', desc = 'Buffer 6' },
    { '<C-7>', '<Cmd>BufferGoto 7<CR>', desc = 'Buffer 7' },
    { '<C-8>', '<Cmd>BufferGoto 8<CR>', desc = 'Buffer 8' },
    { '<C-9>', '<Cmd>BufferGoto 9<CR>', desc = 'Buffer 9' },
  },
}

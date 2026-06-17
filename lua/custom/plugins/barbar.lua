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

      gitsigns = {
        added = { enabled = true, icon = '+' },
        changed = { enabled = true, icon = '~' },
        deleted = { enabled = true, icon = '-' },
      },

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
        filename = true,
      },
    },
  },

  keys = {
    { '<S-h>', '<Cmd>BufferPrevious<CR>', desc = 'Prev Buffer' },
    { '<S-l>', '<Cmd>BufferNext<CR>', desc = 'Next Buffer' },
    { '<C-h>', '<Cmd>BufferMovePrevious<CR>', desc = 'Move Buffer Left' },
    { '<C-l>', '<Cmd>BufferMoveNext<CR>', desc = 'Move Buffer Right' },

    { '<leader>bp', '<Cmd>BufferPin<CR>', desc = 'Pin Buffer' },
    { '<leader>bc', '<Cmd>BufferClose<CR>', desc = 'Close Buffer' },
    { '<leader>bo', '<Cmd>BufferOrderDirectory<CR>', desc = 'Order Buffer' },

    { '<leader>1', '<Cmd>BufferGoto 1<CR>', desc = 'Buffer 1' },
    { '<leader>2', '<Cmd>BufferGoto 2<CR>', desc = 'Buffer 2' },
    { '<leader>3', '<Cmd>BufferGoto 3<CR>', desc = 'Buffer 3' },
    { '<leader>4', '<Cmd>BufferGoto 4<CR>', desc = 'Buffer 4' },
    { '<leader>5', '<Cmd>BufferGoto 5<CR>', desc = 'Buffer 5' },
    { '<leader>6', '<Cmd>BufferGoto 6<CR>', desc = 'Buffer 6' },
    { '<leader>7', '<Cmd>BufferGoto 7<CR>', desc = 'Buffer 7' },
    { '<leader>8', '<Cmd>BufferGoto 8<CR>', desc = 'Buffer 8' },
    { '<leader>9', '<Cmd>BufferGoto 9<CR>', desc = 'Buffer 9' },
  },
}

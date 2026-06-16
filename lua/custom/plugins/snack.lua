return {
  {
    'folke/snacks.nvim',
    cond = not vim.g.vscode,
    ---@type snacks.config
    opts = {
      terminal = {
        win = {
          position = 'float',
        },
      },

      dashboard = {
        sections = {
          { section = 'keys', gap = 1, padding = 1 },
          { section = 'startup' },
        },
      },
    },
  },
}

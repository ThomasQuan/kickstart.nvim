return {
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      terminal = {
        win = {
          position = 'float',
        },
      },

      dashboard = {
        sections = {
          {
            section = 'terminal',
            cmd = 'pokemon-colorscripts -r',
            indent = 4,
            random = 10,
            height = 20,
          },
          { section = 'keys', gap = 1, padding = 1 },
          { section = 'startup' },
        },
      },
    },
  },
}

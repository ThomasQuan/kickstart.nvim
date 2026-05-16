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
            cmd = 'pokemon-colorscripts --name snorlax --no-title',
            height = 30,
          },
        },
      },
    },
  },
}

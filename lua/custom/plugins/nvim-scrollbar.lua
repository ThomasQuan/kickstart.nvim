local colors = require('tokyonight.colors').setup()

return {
  {
    'petertriho/nvim-scrollbar',
    event = 'BufReadPost',
    config = function()
      require('scrollbar').setup {
        -- You can add more config here
        show = true,
        set_highlights = true,
        handle = {
          color = colors.bg_highlight,
        },
        marks = {
          Search = { color = colors.orange },
          Error = { color = colors.error },
          Warn = { color = colors.warning },
          Info = { color = colors.info },
          Hint = { color = colors.hint },
          Misc = { color = colors.purple },
        },
      }
    end,
  },
}

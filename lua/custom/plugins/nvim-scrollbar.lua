local colors = {
  bg_highlight = '#1f1d2e',
  love = '#eb6f92',
  gold = '#f6c177',
  rose = '#ebbcba',
  iris = '#c4a7e7',
  orange = '#f6c177',
  error = '#eb6f92',
  warning = '#f6c177',
  info = '#c4a7e7',
  hint = '#eb6f92',
  purple = '#c4a7e7',
}

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
          Error = { color = colors.love },
          Warn = { color = colors.gold },
          Info = { color = colors.info },
          Hint = { color = colors.iris },
          Misc = { color = colors.purple },
        },
      }
    end,
  },
}

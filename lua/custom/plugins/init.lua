local colors = require('tokyonight.colors').setup()
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'mason-org/mason.nvim', version = '^1.0.0' },
  { 'mason-org/mason-lspconfig.nvim', version = '^1.0.0' },
  { 'tpope/vim-fugitive' },
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

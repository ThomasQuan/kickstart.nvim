return {
  {
    'folke/noice.nvim',
    cond = not vim.g.vscode,
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    opts = {
      cmdline = {
        enabled = true,
        view = 'cmdline_popup',
      },
      messages = {
        enabled = true,
      },
      popupmenu = {
        enabled = true,
        backend = 'nui',
      },
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    },
  },
}

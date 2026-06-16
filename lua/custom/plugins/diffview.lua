return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Git Diff' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = 'File History' },
    { '<leader>gH', '<cmd>DiffviewFileHistory<cr>', desc = 'Repo History' },
    { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = 'Close Diffview' },
  },
  opts = {
    enhanced_diff_hl = true,
    use_icons = true,

    view = {
      default = {
        layout = 'diff2_vertical',
        winbar_info = false,
      },
      merge_tool = {
        layout = 'diff3_horizontal',
      },
    },

    file_panel = {
      listing_style = 'tree',
      tree_options = {
        flatten_dirs = true,
        folder_statuses = 'only_folded',
      },
      win_config = {
        position = 'left',
        width = 35,
      },
    },

    file_history_panel = {
      log_options = {
        git = {
          single_file = {
            diff_merges = 'first-parent',
          },
          multi_file = {
            diff_merges = 'first-parent',
          },
        },
      },
    },
  },
}

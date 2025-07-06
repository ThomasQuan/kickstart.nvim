-- Adds git related signs to the gutter, as well as utilities for managing changes
-- NOTE: gitsigns is already included in init.lua but contains only the base
-- config. This will add also the recommended keymaps.

return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, 'Next git hunk')

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, 'Previous git hunk')

        -- Actions
        map('n', '<leader>hs', gitsigns.stage_hunk, 'git [s]tage hunk')
        map('n', '<leader>hr', gitsigns.reset_hunk, 'git [r]eset hunk')

        map('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, 'git [s]tage selection')

        map('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, 'git [r]eset selection')

        map('n', '<leader>hS', gitsigns.stage_buffer, 'git [S]tage buffer')
        map('n', '<leader>hR', gitsigns.reset_buffer, 'git [R]eset buffer')
        map('n', '<leader>hp', gitsigns.preview_hunk, 'git [p]review hunk')
        map('n', '<leader>hi', gitsigns.preview_hunk_inline, 'git preview [i]nline hunk')

        map('n', '<leader>hb', function()
          gitsigns.blame_line { full = true }
        end, 'git [b]lame line (full)')

        map('n', '<leader>hd', gitsigns.diffthis, 'git [d]iff against index')

        map('n', '<leader>hD', function()
          gitsigns.diffthis('~')
        end, 'git [D]iff against entire file')

        map('n', '<leader>hQ', function()
          gitsigns.setqflist 'all'
        end, 'git [Q]uickfix list (all hunks)')

        map('n', '<leader>hq', gitsigns.setqflist, 'git [q]uickfix list (current)')

        -- Toggles
        map('n', '<leader>tb', gitsigns.toggle_current_line_blame, '[t]oggle git show [b]lame line')
        map('n', '<leader>tw', gitsigns.toggle_word_diff, '[t]oggle [w]ord diff')

        -- Text object
        map({ 'o', 'x' }, 'ih', gitsigns.select_hunk, '[i]nside [h]unk')
      end,
    },
  },
}

-- Replace current word in range
local function replace_current_word_in_range()
  local word = vim.fn.expand '<cword>'
  local replacement = vim.fn.input("Replace '" .. word .. "' with: ")
  local range = vim.fn.input 'Range (e.g. 10-30, before, after, leave empty for full file): '

  local cmd = ''
  if range:match '^%d+%-%d+$' then
    local start_line, end_line = range:match '^(%d+)%-(%d+)$'
    cmd = string.format(':%s,%ss/\\<%s\\>/%s/gc', start_line, end_line, word, replacement)
  elseif range == 'before' then
    cmd = string.format(':%s,-1s/\\<%s\\>/%s/gc', 1, word, replacement)
  elseif range == 'after' then
    cmd = string.format(':. ,$s/\\<%s\\>/%s/gc', word, replacement)
  else
    cmd = string.format('%%s/\\<%s\\>/%s/gc', word, replacement)
  end

  vim.cmd(cmd)
end

-- Search and apply
local function search_and_apply()
  local search = vim.fn.input 'Search for word: '
  local replace = vim.fn.input 'Replace with: '

  local pattern = vim.fn.escape(search, '\\/.*$^~[]')
  local replacement = vim.fn.escape(replace, '\\')

  local cmd = string.format('%%s/\\<%s\\>/%s/gc', pattern, replacement)
  vim.cmd(cmd)
end

-- Keymaps
vim.keymap.set('n', '<leader>rp', replace_current_word_in_range, {
  desc = 'Replace current word with custom input in range',
  noremap = true,
  silent = true,
})

vim.keymap.set('n', '<leader>sa', search_and_apply, {
  desc = '[S]earch and [A]pply word replacement',
  noremap = true,
  silent = true,
})

vim.keymap.set('n', '<leader>a', '"_ciw<C-r>0<Esc>', {
  desc = '[A]pply last yanked word to current word',
  noremap = true,
  silent = true,
})

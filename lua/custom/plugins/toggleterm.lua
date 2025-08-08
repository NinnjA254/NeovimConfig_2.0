local config = function(_, opts)
  local tt = require 'toggleterm'
  tt.setup(opts)
  local trim_spaces = false
  vim.keymap.set('n', '<f10>', ':ToggleTerm direction=float<CR>', { silent = true })
  vim.keymap.set('t', '<f10>', '<C-\\><C-n>:ToggleTerm direction=float<CR>', { silent = true })

  vim.keymap.set('n', '<f9>', ':ToggleTerm direction=horizontal<CR>', { silent = true })
  vim.keymap.set('t', '<f9>', '<C-\\><C-n>:ToggleTerm direction=horizontal<CR>', { silent = true })

  vim.keymap.set('v', '<leader>s', function()
    tt.send_lines_to_terminal('visual_selection', trim_spaces, { args = vim.v.count })
  end)
end

return {
  'akinsho/toggleterm.nvim',
  version = 'v2.*',
  opts = {
    open_mapping = '<F9>',
    hide_numbers = false,
    shade_terminals = false,
    autochdir = true,
    auto_scroll = true,
    -- persist_mode = true,
    on_open = function() --sketchy stuff👇 may no longer work in future versions of toggleterm?
      vim.opt_local.statusline = '%17.(Terminal[%{b:toggle_number}]%) --->  %#termcursor#In The Mainframe!%#termcursornc#  '
    end,
  },
  config = config,
}
--print(vim.loop.os_uname().sysname)

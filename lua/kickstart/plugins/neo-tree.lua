-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    default_component_configs = {
      -- local signs = { Error = '', Warn = '', Hint = '', Info = '' }
      name = {
        use_git_status_colors = false,
      },
      diagnostics = {
        symbols = {
          hint = '',
          info = '',
          warn = '',
          error = '',
        },
      },
      git_status = { -- investigate and add some nice icons
        symbols = {
          -- Change type
          added = 'A',
          deleted = 'D',
          modified = 'M',
          renamed = 'R',
          -- Status type
          untracked = 'U',
          ignored = '◌',
          unstaged = '✗',
          staged = '✓',
          conflict = '',
        },
      },
      indent = {
        with_markers = true,
        indent_marker = '',
        last_indent_marker = '└',
        indent_size = 2,
      },
    },
  },
}

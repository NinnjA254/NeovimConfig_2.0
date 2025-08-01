return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree action=focus toggle <CR>', desc = 'NeoTree toggle', silent = true },
  },
  --@module "neo-tree"
  --@type neotree.Config?
  opts = {
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true,
    },
    window = {
      mappings = {
        ['\\'] = 'close_window',
        ['c'] = 'copy_to_clipboard',
        ['y'] = 'none',
        ['F'] = 'clear_filter',
      },
    },
    default_component_configs = {
      indent = {
        indent_marker = '',
        -- last_indent_marker = '└',
        -- indent_size = 2,
      },
    },
    source_selector = {
      winbar = true,
      sources = {
        { source = 'filesystem' },
        { source = 'git_status' },
      },
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
      enable_git_status = true,
      filtered_items = {
        visible = true,
      },
    },
  },
}

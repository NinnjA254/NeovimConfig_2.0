local customizeAppearance = function()
  vim.opt.fillchars = { eob = '.', fold = ' ' }

  --transparent background, might break if colorschemes add new highlight groups?
  vim.cmd 'highlight vertsplit guibg=none'
  vim.cmd 'highlight linenr guibg=none'
  vim.cmd 'highlight signcolumn guibg=none'
  vim.cmd 'highlight normal guibg=none'
  vim.cmd 'highlight normalfloat guibg=none'
  vim.cmd 'highlight nontext guibg=none'
  -- vim.cmd 'highlight folded guibg=none'
  vim.cmd 'highlight foldcolumn guibg=none'

  --nvim-cmp highlight groups
  -- gray
  vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg = 'NONE', strikethrough = true, fg = '#808080' })
  -- blue
  vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg = 'NONE', fg = '#569CD6' })
  vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link = 'CmpIntemAbbrMatch' })
  -- light blue
  vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg = 'NONE', fg = '#9CDCFE' })
  vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link = 'CmpItemKindVariable' })
  vim.api.nvim_set_hl(0, 'CmpItemKindText', { link = 'CmpItemKindVariable' })
  -- pink
  vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg = 'NONE', fg = '#C586C0' })
  vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'CmpItemKindFunction' })
  -- front
  vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg = 'NONE', fg = '#D4D4D4' })
  vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link = 'CmpItemKindKeyword' })
  vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link = 'CmpItemKindKeyword' })

  -- neotree
  vim.api.nvim_set_hl(0, 'NeoTreeDimText', { bg = 'NONE', fg = 'grey' })
  vim.api.nvim_set_hl(0, 'NeoTreeDotfile', { bg = 'NONE', fg = '#a5a5a5' })
end

vim.api.nvim_create_augroup('customizeAppearance', { clear = true })
vim.api.nvim_create_autocmd('Colorscheme', {
  pattern = '*',
  callback = customizeAppearance,
  group = 'customizeAppearance',
})

return { --some cool colorschemes from around the interwebs
  {
    'folke/tokyonight.nvim',
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    -- init = function()
    --   vim.cmd.colorscheme 'tokyonight-night'
    -- end,
  },
  {
    'rafi/awesome-vim-colorschemes',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'jellybeans'
    end,
  },
  'ellisonleao/gruvbox.nvim',
  'savq/melange-nvim',
  'luisiacc/gruvbox-baby',
  'ribru17/bamboo.nvim',
  'xero/miasma.nvim',
}

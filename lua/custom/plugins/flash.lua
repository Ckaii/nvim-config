return {
  'folke/flash.nvim',
  opts = {
    -- Keep native search and character motions unchanged.
    modes = { search = { enabled = false }, char = { enabled = false } },
  },
  keys = {
    {
      '<leader>j',
      mode = { 'n', 'x', 'o' },
      function() require('flash').jump() end,
      desc = 'Flash: jump to text',
    },
    {
      '<leader>k',
      mode = { 'n', 'x', 'o' },
      function() require('flash').treesitter() end,
      desc = 'Flash: select syntax node',
    },
  },
}

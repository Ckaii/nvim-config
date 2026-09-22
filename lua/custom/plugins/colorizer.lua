return {
  'catgoose/nvim-colorizer.lua',
  event = 'BufReadPre',
  opts = {
    filetypes = { '*' },
    user_default_options = {
      css = true,
      css_fn = true,
      mode = 'background',
      tailwind = true,
    },
  },
  keys = {
    {
      '<leader>tc',
      '<cmd>ColorizerToggle<cr>',
      desc = '[T]oggle [C]olorizer',
    },
  },
}

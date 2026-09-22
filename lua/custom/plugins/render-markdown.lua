return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown' },
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {},
  keys = {
    {
      '<leader>tm',
      '<cmd>RenderMarkdown toggle<cr>',
      desc = '[T]oggle [M]arkdown render',
    },
  },
}

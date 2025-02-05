return {
  {
    'windwp/nvim-ts-autotag',
    dependencies = { 'nvim-treesitter' }, -- 确保 Treesitter 已安装
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
}

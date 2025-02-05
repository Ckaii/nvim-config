return {
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim', -- LazyGit 插件的依赖
  },
  cmd = 'LazyGit',
  keys = {
    { '<leader>gg', ':LazyGit<CR>', desc = 'Open LazyGit', silent = true },
  },
  config = function()
    vim.g.lazygit_floating_window_winblend = 0 -- 透明度
    vim.g.lazygit_floating_window_scaling_factor = 0.9 -- 窗口大小比例
  end,
}

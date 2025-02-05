return {
  -- 加 Aerial.nvim 插件
  {
    'stevearc/aerial.nvim',
    config = function()
      require('aerial').setup {
        backends = { 'lsp', 'treesitter', 'markdown' }, -- 使用 LSP、Tree-sitter 或 Markdown
        layout = {
          default_direction = 'prefer_right', -- 默认在右侧显示
          max_width = { 40, 0.3 }, -- 窗口最大宽度
          min_width = 20, -- 窗口最小宽度
        },
        attach_mode = 'global', -- 默认对所有窗口生效
        show_guides = true, -- 是否显示大纲的连接线
        guides = { -- 自定义连接线样式
          mid_item = '├─',
          last_item = '└─',
          nested_top = '│ ',
          whitespace = '  ',
        },
        filter_kind = false, -- 显示所有符号类型
      }
    end,
    keys = { -- 配置快捷键
      { '<F9>', ':AerialToggle<CR>', desc = 'Toggle Aerial' },
    },
  },
}

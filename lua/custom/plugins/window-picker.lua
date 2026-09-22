return {
  's1n7ax/nvim-window-picker',
  name = 'window-picker',
  event = 'VeryLazy',
  version = '2.*',
  opts = {
    hint = 'floating-big-letter',
    filter_rules = {
      include_current_win = false,
      autoselect_one = true,
      bo = {
        filetype = { 'neo-tree', 'notify' },
        buftype = { 'terminal', 'quickfix' },
      },
    },
  },
  keys = {
    {
      '<leader>wp',
      function()
        local picked_window_id = require('window-picker').pick_window()
        if picked_window_id then
          vim.api.nvim_set_current_win(picked_window_id)
        end
      end,
      desc = '[W]indow [P]ick',
    },
  },
}

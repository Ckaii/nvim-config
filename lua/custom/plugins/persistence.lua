return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = { options = { 'buffers', 'curdir', 'tabpages', 'winsize' } },
  keys = {
    {
      '<leader>Sr',
      function() require('persistence').load() end,
      desc = '[S]ession [R]estore (this project)',
    },
    {
      '<leader>Sl',
      function() require('persistence').load { last = true } end,
      desc = '[S]ession restore [L]ast',
    },
    {
      '<leader>Sd',
      function() require('persistence').stop() end,
      desc = "[S]ession [D]on't save on exit",
    },
  },
}

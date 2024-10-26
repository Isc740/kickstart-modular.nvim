return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      -- size = 40,
      open_mapping = [[<c-`>]],
      direction = 'horizontal',
      shade_terminals = true,
      shading_factor = 2,
      -- close_on_exit = true,
      shell = vim.o.shell,
      -- float_opts = {
      --   border = 'curved',
      -- },
    }
  end,
}

return{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function ()
    local toggleterm = require("toggleterm")
    toggleterm.setup({
      open_mapping = [[<A-\>]], -- key map to toggle terminal
      hide_numbers = true, -- hide the number column in toggleterm buffers
      autochdir = true,
      start_in_insert = true,
      auto_scroll = false,
      shade_terminals = true,
      direction = 'float',
      float_opts = {
          border = 'curved',
          width = 150,
          height = 30,
          winblend = 3,
          title_pos = 'left',
        },
    })
  end
}

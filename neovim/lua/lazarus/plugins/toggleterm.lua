return{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function ()
    local toggleterm = require("toggleterm")
    toggleterm.setup({
      open_mapping = [[<A-`>]], -- key map to toggle terminal
      hide_numbers = true, -- hide the number column in toggleterm buffers
      autochdir = true,
      start_in_insert = true,
      auto_scroll = true,
    })
  end
}

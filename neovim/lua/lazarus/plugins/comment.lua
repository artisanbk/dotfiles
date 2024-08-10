return{ -- clever comment
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile"},
  config = true  -- runs require('Comment').setup()
}

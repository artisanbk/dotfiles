return{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function ()
    local ibl = require("ibl")
    local highlight = {"CursorColumn", "Whitespace",}
    ibl.setup({
      exclude = {
        filetypes = {"help", "dashboard"}
      },
      indent = {highlight = highlight, char=""},
      whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
      },
      scope = {enabled = true},
    })
  end
}

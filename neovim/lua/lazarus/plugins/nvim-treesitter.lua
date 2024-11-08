return {
  "nvim-treesitter/nvim-treesitter",
  config = function ()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
        ensure_installed = {
          "c",
          "cpp",
          "lua",
          "vim",
          "vimdoc",
          "rust",
          "ron",
        },
        modules = {},
        auto_install = true,
        ignore_install = {},
        sync_install = false,
        highlight = { enable = true, disable = {"latex",}, },
        indent = { enable = true },
      })
  end
}

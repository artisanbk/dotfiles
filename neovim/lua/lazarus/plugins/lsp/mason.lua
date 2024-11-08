return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim", -- auto install linters and all that when neovim is booted up
  },
  config = function()
    -- import mason
    local mason = require("mason")
    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    -- local mason_tool_installer = require("mason-tool-installer") -- useful for first time installs

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "asm_lsp",        -- assembly
        "autotools_ls",   -- automake, Make
        "lua_ls",         -- Lua
        "markdown_oxide", -- Markdown
        "sqls",           -- SQL
        "taplo",          -- TOML
      },
    })
  end
}

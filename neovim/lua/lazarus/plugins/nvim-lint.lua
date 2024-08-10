return{
  "mfussenegger/nvim-lint",
  event={"BufReadPre", "BufNewFile"},
  config = function ()
    local lint = require("lint")
    lint.linters_by_ft = { -- apply linting by filetypes
      python = {"pylint"},
    }
    -- grouping autocommands together in neovim
    local  lint_augroup = vim.api.nvim_create_augroup("lint", {clear = true})
    vim.api.nvim_create_autocmd(
      {"BufEnter", "BufWritePost"}, -- "InsertLeave" removed to help with speed. See `:h events` for events guide.
      {
        --pattern = {"*.ts","*.js"}, -- apply linting rules for specific linting servers for the mentioned file types
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      }
    )
  end
}

return{
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- invoke plugin at Insert Mode. Use `:h events` for info.
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for sys paths
    { -- rust support
      "Saecki/crates.nvim",
      event = {"BufRead Cargo.toml"},
      opts = {
        completion = {cmp = {enabled = true},},
      },
    },
    "onsails/lspkind.nvim", -- cute pictograms
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- completion source for nvim-cmp
    "rafamadriz/friendly-snippets", -- useful snippets from different languages
  },

  opts = function (_, opts)
    opts.sources = opts.sources or {}
    table.insert(opts.sources, {name = "crates"})
  end,

  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    -- local lspkind = require("lspkind")
    require("luasnip.loaders.from_vscode").lazy_load() -- vscode style snippets
    cmp.setup({
      completion = { completeopt = "menu, menuone, preview, noselect", },
      snippet = { -- how nvim-cmp interacts with snippet engine
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
    },
    mapping = cmp.mapping.preset.insert({ -- keybinds for complettion engine
      ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- prev suggestion
      ["<Tab>"] = cmp.mapping.select_next_item(), -- next suggestion
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<CR>"] = cmp.mapping.confirm({select=false}), -- enter to select suggestion
    }),
    sources = cmp.config.sources({ -- listed based on prority
      {name = "nvim_lsp"},
      {name = "luasnip"}, -- snippets
      {name = "buffer"}, -- text within current buffer
      {name = "path"}, -- file sys paths
    }),
    --formatting = { -- format lspkind for vscode pictograms in completion menu
    --    format = lspkind.cmp_format({
    --      maxwidth = 50,
    --      ellipsis_char = "...",
    --    }),
    --},
    })
  end
}

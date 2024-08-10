return{
  "nvimdev/dashboard-nvim",
  lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
  opts = function()
    local logo = [[
    
     ██████╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗   
    ██╔════╝██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝   
    ██║     ██████╔╝██║██╔██╗ ██║██║  ███╗█████╗     
    ██║     ██╔══██╗██║██║╚██╗██║██║   ██║██╔══╝     
    ╚██████╗██║  ██║██║██║ ╚████║╚██████╔╝███████╗██╗
     ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝
                                                 
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end
    return opts
  end,
}
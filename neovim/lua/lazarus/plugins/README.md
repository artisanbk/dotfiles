# telescope.nvim
You need to install `ripgrep` for fancy search capabilities.

# bufferline.nvim
Nice tabs.

# colorscheme.lua
Sets the theme for neovim.

# comment.lua
TODO

# dashboard-nvim.lua
Plugin to create cool lookin landing pages for neovim.
Invoke it by calling `nvim` on the command line.

# lualine.lua
Fancy bar at bottom of page that gives status updates and etc...

# nvim-cmp.lua
Autocompletion, linting capabilities plus a couple more.
`<S-Tab>` Selects the previous suggestion
`<Tab>` Selects next suggestion
`<C-Space>` Show suggestions
`<CR>` Select suggestion

# nvim-tree.lua
File explorer sidebar.
`<leader>ee` Toggle file explorer
`<leader>ef` Toggle file explorer on current file
`<leader>ex` Collapse directory in file explorer
`<leader>er` Refresh file explorer
`r` To rename files on the tree
`d` To delete
`g?` Use this in the tree to list all keybinds


# vim-tmux-navigator.lua
Window navigation tools.
`<C-h>` Focus right buffer
`<C-j>` Focus buffer below
`<C-k>` Focus buffer above
`<C-l>` Focus left buffer

# dressing.lua
Nice UI improvements. Uses `telescope` UI for lua commands embedded in Neovim such as
`:lua vim.ui.input({prompt = "Enter something: "}, function(input) print(input) end)`

# mason.lua
Portable package manager for neovim that runs everywhere it runs. Manages LSP servers, DAP servers, linters and formatters.

# autoclose.lua
Package that manages paranthesis and other useful closures such as `$ ... $` for TeX documents.

# nvim-lint.lua
Linting is the process of running a program that will analyse code for potential errors. Super important for languages like `Rust` if you don't want to always recompile to test for errors! :<

# toggleterm.lua
Embedded terminal for QOL improvements. See `:terminal` for the alternative.

# indent-backline.lua
Indentation guide.

# crates.lua & rustaceanvim
Rust stuff.

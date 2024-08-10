vim.cmd("let g:netrw_liststyle = 3") -- vim internal file explorer. Try `:Explore`

local opt = vim.opt -- so we dont have to repeat vim.opt.___ all the time

opt.mouse = "" -- disable mouse

opt.relativenumber = true

opt.wrap = true

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- when search with mixed cases, assume case-sensitive

-- theme shit
opt.background = "dark"
opt.signcolumn = "yes" -- see `:h sign-intro`

-- tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use sys clipboard as default register

-- split windows
opt.splitright = false
opt.splitbelow = true

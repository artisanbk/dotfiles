vim.g.mapleader = " " -- leader key set to space

local keymap = vim.keymap -- for consiseness

keymap.set("i", "jk", "<Esc>" , {desc = "Exit insert mode"})

keymap.set("n", "<Esc>", ":nohl<CR>", {desc = "Clear search highlights"})
keymap.set("n", "L", "$", {desc = "Goto end of line (same as $)"})
keymap.set("v", "L", "$", {desc = "Goto end of line (same as $)"})
keymap.set("n", "H", "_", {desc = "Goto start of line (same as _)"})
keymap.set("v", "H", "_", {desc = "Goto start of line (same as _)"})

-- window management
keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>=", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>x", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>l", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>h", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leade>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

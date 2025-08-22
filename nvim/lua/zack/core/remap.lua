local vim = vim
local opts = { noremap = true, silent = true }

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- SCROLL HALF PAGES
vim.keymap.set("n", "<C-q>", "<C-u>", opts)
vim.keymap.set("n", "<C-s>", "<C-d>", opts)

-- SCROLL UP BY A LINE
vim.keymap.set("n", "<C-Up>", "<C-y>", opts)
vim.keymap.set("n", "<C-Down>", "<C-e>", opts)

-- MOVEMENT KEY REBINDS
vim.keymap.set("n", "o", "k", opts)
vim.keymap.set("n", "l", "j", opts)
vim.keymap.set("n", "k", "h", opts)
vim.keymap.set("n", ";", "l", opts)
vim.keymap.set("v", "o", "k", opts)
vim.keymap.set("v", "l", "j", opts)
vim.keymap.set("v", "k", "h", opts)
vim.keymap.set("v", ";", "l", opts)

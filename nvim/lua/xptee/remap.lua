local vim = vim
vim.g.mapleader = " "

-- Open nvim explorer:
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Markdown preview:
vim.keymap.set("n", "<leader>mv", ":MarkdownPreview<CR>")
vim.keymap.set("n", "<leader>mc", ":MarkdownPreviewStop<CR>")

-- Move while in insert mode:
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })

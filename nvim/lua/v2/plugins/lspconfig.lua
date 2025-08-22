return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local vim = vim
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        vim.diagnostic.config({
            virtual_text = {
                prefix = "●",
                spacing = 4,
            },
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(ev)
                local opts = { buffer = ev.buf, silent = true }

                -- Show documentation for what is under cursor
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

                -- Mapping to restart lsp if necessary
                vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

                -- Go to implementation
                vim.keymap.set("n", "<leader>gi", function()
                    vim.lsp.buf.definition()
                end, opts);
            end,
        })
    end,
}

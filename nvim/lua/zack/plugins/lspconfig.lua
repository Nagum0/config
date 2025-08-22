return {
    "neovim/nvim-lspconfig",
    config = function()
        local vim = vim
        local lspconfig = require("lspconfig")

        -- Diagnostics
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
    end,
}

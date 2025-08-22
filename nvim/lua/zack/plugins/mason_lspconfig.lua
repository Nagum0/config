return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" }, -- ensures mason is loaded first
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")

        mason_lspconfig.setup({
            ensure_installed = { "lua_ls" },
            automatic_installation = true,
        })

        local servers = mason_lspconfig.get_installed_servers()
        for _, server_name in ipairs(servers) do
            lspconfig[server_name].setup({})
        end
    end,
}

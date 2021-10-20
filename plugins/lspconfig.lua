local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"
    lspconfig.gopls.setup {
        on_attach = attach,
        capabilities = capabilities,
        cmd = {"gopls", "serve"},
        settings = {
            gopls = {
                analyses = {
                    unusedparams = true,
                },
                staticcheck = true,
            },
        },
    }
end

return M

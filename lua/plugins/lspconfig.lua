-- LSP configuration for JavaScript, TypeScript, CSS, HTML, Java, Python
return {
  {
    "neovim/nvim-lspconfig",

    config = function()
      local capabilities =
        require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        ts_ls = {},
        html = {},
        cssls = {},
        pyright = {},
        prisma = {},
        dokcerls = {},
        docker_compose_language_service = {},
        
      }

      for name, config in pairs(servers) do
        config.capabilities = capabilities

        vim.lsp.config(name, config)
        vim.lsp.enable(name)
      end
    end,
  },
}

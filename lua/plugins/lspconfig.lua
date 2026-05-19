-- LSP: JS/TS, HTML, CSS, Python, Prisma, Docker, ESLint
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        ts_ls = {},
        html = {},
        cssls = {},
        pyright = {},
        prismals = {},
        dockerls = {},
        docker_compose_language_service = {},
        eslint = {},
      }

      for name, config in pairs(servers) do
        config.capabilities = capabilities
        vim.lsp.config(name, config)
        vim.lsp.enable(name)
      end
    end,
  },
}

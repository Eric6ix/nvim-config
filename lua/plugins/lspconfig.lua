-- LSP configuration for JavaScript, TypeScript, CSS, HTML, Java, Python
return {
  {
    "neovim/nvim-lspconfig",

    config = function()
      local servers = {
        ts_ls = {},
        html = {},
        cssls = {},
        jdtls = {},
        pyright = {},
      }

      for name, config in pairs(servers) do
        vim.lsp.config(name, config)
        vim.lsp.enable(name)
      end
    end,
  },
}

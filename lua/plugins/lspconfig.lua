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

        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                version = "LuaJIT",
              },

              diagnostics = {
                globals = { "vim" },
              },

              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },

              telemetry = {
                enable = false,
              },
            },
          },
        },

      }

      for name, config in pairs(servers) do
        config.capabilities = capabilities
        vim.lsp.config(name, config)
        vim.lsp.enable(name)
      end
    end,
  },
}

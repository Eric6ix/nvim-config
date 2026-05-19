-- Formatação via none-ls (prettier, black)
-- Diagnósticos ESLint: ver lspconfig.lua (eslint LSP)
return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.black,
        },
      })
      -- <leader>f (modo normal) — formata o arquivo inteiro
      vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format({ async = false })
      end, { desc = "Formatar buffer" })
    end,
  },
}

-- Formatting and linting using null-ls with convenient keymaps
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
          null_ls.builtins.diagnostics.eslint,
        },
      })
      -- <leader>f (modo normal) — formata o arquivo inteiro
      vim.api.nvim_set_keymap('n', '<leader>f', ':lua vim.lsp.buf.formatting_sync()<CR>', { noremap = true, silent = true })
    end,
  },
}

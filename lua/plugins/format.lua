-- Formatting and linting using null-ls with convenient keymaps
return {
  {
    "jose-elias-alvarez/null-ls.nvim",
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
      -- Format on <leader>f in normal mode
      vim.api.nvim_set_keymap('n', '<leader>f', ':lua vim.lsp.buf.formatting_sync()<CR>', { noremap = true, silent = true })
    end,
  },
}

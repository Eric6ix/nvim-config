return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.config")
      config.setup({
        ensure_installed = { "lua", "javascript", "html", "css", "java"},
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}

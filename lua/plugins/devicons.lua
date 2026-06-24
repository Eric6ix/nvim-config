-- Ícones Nerd Font: precisa carregar antes dos plugins que usam ícones
return {
  "nvim-tree/nvim-web-devicons",
  lazy = false,
  priority = 1000,
  config = function()
    require("nvim-web-devicons").setup({
      default = true,
      strict = true,
      color_icons = true,
      override = {},
    })
  end,
}

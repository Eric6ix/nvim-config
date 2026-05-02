return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set(
      "n",
      "<leader>b",
      "<cmd>Neotree filesystem reveal left<CR>",
      { desc = "Open Neo-tree" }
    )
  end,
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    default_component_configs = {
      indent = {
        with_markers = true,
        indent_marker = "│",
        last_indent_marker = "└",
        expander_collapsed = "",
        expander_expanded = "",
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "󰜌",
        default = "󰈔",
      },
      git_status = {
        symbols = {
          added = "󰐕",
          modified = "",
          deleted = "✖",
          renamed = "󰁕",
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },

  keys = {
    {
      "<leader>b",
      "<cmd>Neotree filesystem reveal left<CR>",
      desc = "Open Neo-tree",
    },
  },
}

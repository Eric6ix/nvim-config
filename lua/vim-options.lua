vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.g.use_nerdfont = true

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "󰌵",
    },
  },
})

-- > / Shift+. alterna entre janelas (splits) visíveis na tela
vim.keymap.set("n", ">", "<C-w>w", { desc = "Próxima janela" })
-- Shift+, alterna na direção oposta (útil em pares com >)
vim.keymap.set("n", "<", "<C-w>W", { desc = "Janela anterior" })

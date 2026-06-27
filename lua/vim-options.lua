vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.g.use_nerdfont = true

-- Neovim aberto pela interface gráfica nem sempre herda ~/.local/bin do shell
local local_bin = vim.fn.expand("~/.local/bin")
if vim.fn.isdirectory(local_bin) == 1 then
  local path = vim.env.PATH or ""
  if not path:find(local_bin, 1, true) then
    vim.env.PATH = local_bin .. ":" .. path
  end
end

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

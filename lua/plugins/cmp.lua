
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      require('luasnip.loaders.from_vscode').lazy_load()
      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        -- Atalhos do menu de autocompletar (modo insert)
        mapping = cmp.mapping.preset.insert({
          -- <C-b> / <C-f> — rola documentação do item (cima / baixo)
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          -- <C-Space> — abre o menu de completar manualmente
          ["<C-Space>"] = cmp.mapping.complete(),
          -- <C-e> — fecha o menu sem confirmar
          ["<C-e>"] = cmp.mapping.abort(),
          -- <CR> — confirma a sugestão selecionada
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          -- <Tab> — próximo item; ou expande/avança snippet LuaSnip
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          -- <S-Tab> — item anterior; ou volta no snippet LuaSnip
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        })
      })
    end,
  },
}

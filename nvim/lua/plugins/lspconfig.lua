return {
  "neovim/nvim-lspconfig",

  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.ts_ls.setup({})
    lspconfig.lua_ls.setup({})
    lspconfig.jsonls.setup({})

    vim.diagnostic.config({
      underline = true,
      virtual_text = false,
      update_in_insert = false,
      severity_sort = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.HINT] = "󱠂",
          [vim.diagnostic.severity.INFO] = "",
        },
      },
    })
  end,
}

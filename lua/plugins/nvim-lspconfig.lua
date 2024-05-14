local config = function()
  local lspconfig = require("lspconfig")

  -- Lua
  lspconfig.lua_ls.setup({
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" }
        },
        workspace = {
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.stdpath("config") .. "/lua"] = true
          }
        }
      }
    }
  })

  -- C++
  lspconfig.clangd.setup({})

  -- Python
  lspconfig.pyright.setup({})
end

return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = config
}

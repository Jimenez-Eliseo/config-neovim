-- lua/utils/lsp/mason.lua
local ok_m, mason = pcall(require, "mason")
if not ok_m then return end

mason.setup({
  ui = {
    icons = {
      package_installed = "✅",
      package_pending = "⏳",
      package_uninstalled = "⚠️",
    }
  }
})

local ok_ml, mlsp = pcall(require, "mason-lspconfig")
if ok_ml then
  mlsp.setup({
    -- ✅ Solo instala, NO configures aquí
    ensure_installed = { "lua_ls", "vtsls" },
    automatic_installation = true,
    handlers = {},
  })
end

pcall(function()
  require("mason-tool-installer").setup({
    ensure_installed = require("utils.lsp.tools"),
  })
end)

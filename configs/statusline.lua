local M = {}

local st_modules = require "nvchad_ui.statusline.default"

M.ctags = function(mods)
    local msg = ""

    for i, name in ipairs(mods) do
      print (name)
      if name == "ctags" then
        msg = " ♨ "
      end
    end

  return msg
end

return {
  LSP_status = function()
    return vim.fn["gutentags#statusline_cb"](M.ctags) .. (st_modules.LSP_status() or "")
  end,
}
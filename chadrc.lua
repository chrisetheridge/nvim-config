---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "aquarium",
  theme_toggle = { "aquarium", "one_light" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    separator_style = "block",
    theme = "default",
    overriden_modules = function()
      local st_modules = require "nvchad_ui.statusline.default"

      return {
        cwd = function()
          if vim.bo.filetype == "clojure" then
            local repl_text = (
                "%#user.repl.winbar# "
                .. "%#St_LspStatus_Icon#  "
                .. "%#St_cwd_text#"
                .. "%#user.repl.winbar# "
                .. "%{%v:lua.require'custom.tools.nrepl'.get_repl_status('no REPL')%}"
                .. "%#user.repl.winbar# "
                )

            return repl_text .. st_modules.cwd()
          end

          return st_modules.cwd()
        end,
      }
    end,
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

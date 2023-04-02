-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.g.maplocalleader = ","

require "custom.commands"

require "custom.autocommands"

require "custom.configs.neovide"
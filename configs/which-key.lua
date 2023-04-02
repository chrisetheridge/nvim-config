local wk = require("which-key")

wk.setup({
    window = { border = "double" },
    layout = { align = "center" },
    plugins = {
        spelling = {
            enabled = true,
            suggestions = 20,
        },
    },
    hidden = {
        "<silent>",
        "<cmd>",
        "<Cmd>",
        "<CR>",
        "call",
        "lua",
        "^:",
        "^ ",
        "<Plug>",
        "^%(",
        "%)$",
    },
})

local function save_all_quit()
    vim.cmd("wa")
    vim.cmd("qa!")
end
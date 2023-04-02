---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = {
      ":",
      "enter command mode",
      opts = {
        nowait = true
      }
    }
  }
}

M.disabled = {
  n = { 
    ["<leader>b"] = "", 
  }
}

-- more keybinds!
M.custom = {
  n = {
    -- DocsView
    ["<leader>dv"] = { ":DocsViewUpdate<cr>", "show docsview" },
    -- Workspaces
    ["<leader>wa"] = { vim.lsp.buf.add_workspace_folder, "Workspace Add Folder" },
    ["<leader>wr"] = { vim.lsp.buf.remove_workspace_folder, "Workspace Remove Folder" },
    -- Oil
    ["<leader>oi"] = { ":Oil .<cr>", "Oil Dir Editor" },
    -- Harpoon
    ["<leader>ba"] = { function()
      require("harpoon.mark").add_file()
    end, "Mark File" },
    ["<leader>bb"] = { function()
      require("harpoon.ui").toggle_quick_menu()
    end, "Menu" },
    ["<leader>bl"] = { function()
      require("harpoon.ui").nav_next()
    end, "Next File" },
    ["<leader>bh"] = { function()
      require("harpoon.ui").nav_prev()
    end, "Prev File" },
    -- Gitsigns
    ["<leader>zb"] = { ":Gitsigns blame_line<cr>", "Blame line" },
    ["<leader>zp"] = { ":Gitsigns preview_hunk<cr>", "Preview hunk" },
    ["<leader>zs"] = { ":Gitsigns stage_hunk<cr>", "Stage hunk" },
    ["<leader>zu"] = { ":Gitsigns undo_stage_hunk<cr>", "Undo stage hunk" },
    ["<leader>zr"] = { ":Gitsigns reset_hunk<CR>", "Reset hunk" },
    ["<leader>zS"] = { ":Gitsigns stage_buffer<cr>", "Stage buffer" },
    ["<leader>zR"] = { ":Gitsigns reset_buffer<cr>", "Reset buffer" },
    ["<leader>zn"] = { ":Gitsigns next_hunk<cr>", "Next hunk" },
    ["<leader>zN"] = { ":Gitsigns prev_hunk<cr>", "Prev hunk" },
    ["<leader>ztb"] = { ":Gitsigns toggle_current_line_blame<cr>", "Curent line blame" },
    ["<leader>ztd"] = { ":Gitsigns toggle_deleted<cr>", "Deleted" },
    -- Undo tree 
    ["<leader>U"] = { ":UndotreeToggle<cr>", "Undo Tree" },
    -- Term
    ["<leader>tv"] = { ":vsplit | term<cr>", "Vert Split Termial" }, 
    ["<leader>ts"] = { ":split | term<cr>", "Split Terminal" }, 
    -- Neogit / git
    ["<leader>gg"] = { ":Neogit<cr>", "Status" },
    ["<leader>gp"] = { ":Git push<cr>", "Push" }, 
    ["<leader>gP"] = { ":Git push --force<cr>", "Force Push" }, 
    ["<leader>gf"] = { ":Git pull<cr>", "Pull" },
    ["<leader>gb"] = { ":Telescope git_branches<cr>", "Branches" },
    -- Neotree
    ["<leader>e"] = { ":Neotree toggle<cr>", "Toggle Neo Tree" },
    ["<leader>E"] = { ":Neotree focus<cr>", "Focus Neo Tree" },
    -- Writing
    ["<leader>s"] = { ":write<cr>", "Save buffer" },
    ["<leader>S"] = { ":wa<cr>", "Save all" },
    -- Windows
    ["<leader>q"] = { "<c-w>q", "Close window" },
    -- [] = {},
    -- [] = {},
    -- [] = {},
    -- [] = {},
    -- Searching 
    ["<leader>r"] = { ":Telescope resume<cr>", "Resume last search" },
    -- Telescope
    ["<leader>ff"] = { ":Telescope find_files<cr>", "Files" },
    ["<leader>fc"] = { ":Telescope current_buffer_fuzzy_find<cr>", "In buffer" },
    ["<leader>fg"] = { ":Telescope live_grep<cr>", "Live grep" },
    ["<leader>fb"] = { ":Telescope buffers<cr>", "Buffers" },
    ["<leader>fk"] = { ":Telescope keymaps<cr>", "Keymaps" },
    ["<leader>fr"] = { ":Telescope oldfiles cwd_only=true<cr>", "Recent files" },
  }
}

return M

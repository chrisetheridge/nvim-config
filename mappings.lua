---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- l = {
--   -- name = "LSP",
-- },
-- -- R = { name = "REST" },


-- more keybinds!
M.custom = {
  n = {
    -- DocsView
    ["<leader>dv"] = { ":DocsViewUpdate<cr>", "show docsview" },
    -- Workspaces
    ["<leader>wa"] = { vim.lsp.buf.add_workspace_folder, "Workspace Add Folder" },
    ["<leader>wr"] = { vim.lsp.buf.remove_workspace_folder, "Workspace Remove Folder" },
    -- Oil
    ["<leader>oi"] = { ":Oil .<cr>", "Oil Dir Editor", },
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
  },
  -- },
  -- z = {
  --   -- name = "Gitsigns",
  --   b = { ":Gitsigns blame_line<cr>", "Blame line" },
  --   p = { ":Gitsigns preview_hunk<cr>", "Preview hunk" },
  --   s = { ":Gitsigns stage_hunk<cr>", "Stage hunk" },
  --   u = { ":Gitsigns undo_stage_hunk<cr>", "Undo stage hunk" },
  --   r = { ":Gitsigns reset_hunk<CR>", "Reset hunk" },
  --   S = { ":Gitsigns stage_buffer<cr>", "Stage buffer" },
  --   R = { ":Gitsigns reset_buffer<cr>", "Reset buffer" },
  --   n = { ":Gitsigns next_hunk<cr>", "Next hunk" },
  --   N = { ":Gitsigns prev_hunk<cr>", "Prev hunk" },
  --   t = {
  --     -- name = "Toggle",
  --     b = { ":Gitsigns toggle_current_line_blame<cr>", "Curent line blame" },
  --     d = { ":Gitsigns toggle_deleted<cr>", "Deleted" },
  --   },
  --   d = { ":Gitsigns diffthist<cr>", "Diff history" },
  --   D = { ":Gitsigns diffhis ~<cr>", "Diff ~history" },
  -- },
  -- U = { ":UndotreeToggle<cr>", "Undo Tree" },

  -- t = {
  --   -- name = "Terminal",
  --   v = { ":vsplit | term<cr>", "Vert Split Termial" },
  --   s = { ":split | term<cr>", "Split Terminal" },
  -- },
  -- x = {
  --   -- name = "Git",
  --   g = { ":Neogit<cr>", "Status" },
  --   p = { ":Git push<cr>", "Push" },
  --   P = { ":Git push --force<cr>", "Force Push" },
  --   f = { ":Git pull<cr>", "Pull" },
  --   b = { ":Telescope git_branches<cr>", "Branches" },
  --   -- b = { ":FzfLua git_branches<cr>", "Branches" },
  -- },
  -- e = { ":Neotree toggle<cr>", "Toggle Neo Tree" },
  -- E = { ":Neotree focus<cr>", "Focus Neo Tree" },
  -- s = { ":write<cr>", "Save buffer" },
  -- S = { ":wa<cr>", "Save all" },
  -- -- x = { save_all_quit, "Save and quit" },
  -- q = { "<c-w>q", "Close window" },
  -- r = { ":Telescope resume<cr>", "Resume last search" },
  -- -- r = { ":FzfLua resume<cr>", "Resume last search" },
  -- f = {
  --   -- name = "Find",
  --   F = { ":FzfLua<cr>", "Fzf" },
  --   -- f = { ":FzfLua files<cr>", "Files" },
  --   -- G = { ":FzfLua git_files<cr>", "Git Files" },
  --   -- c = { ":FzfLua grep_curbuf<cr>", "In buffer" },
  --   -- g = { ":FzfLua live_grep<cr>", "Live grep" },
  --   -- b = { ":FzfLua buffers<cr>", "Buffers" },
  --   -- k = { ":FzfLua keymaps<cr>", "Keymaps" },
  --   -- r = { ":FzfLua oldfiles cwd_only=true<cr>", "Recent files" },

  --   f = { ":Telescope find_files<cr>", "Files" },
  --   c = { ":Telescope current_buffer_fuzzy_find<cr>", "In buffer" },
  --   g = { ":Telescope live_grep<cr>", "Live grep" },
  --   b = { ":Telescope buffers<cr>", "Buffers" },
  --   k = { ":Telescope keymaps<cr>", "Keymaps" },
  --   r = { ":Telescope oldfiles cwd_only=true<cr>", "Recent files" },
  -- },
  -- L = { ":Lazy<cr>", "Lazy" },
  -- m = { ":Mason<cr>", "Mason" },
}

return M

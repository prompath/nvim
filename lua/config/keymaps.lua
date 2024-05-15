local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer", noremap = true, silent = true })

-- Indenting
keymap.set("v", "<", "<gv", { desc = "Indent Selection" })
keymap.set("v", ">", ">gv", { desc = "Dedent Selection" })

-- Comments
keymap.set("n", "<C-_>", "gc", { desc = "Comment Line", noremap = false })
keymap.set("v", "<C-_>", "gc", { desc = "Comment Selection", noremap = false })

-- Move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", noremap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", noremap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", noremap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", noremap = true })

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Buffers
keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Persistence
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {desc = "Restore Session"})
vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {desc = "Restore Last Session"})
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {desc = "Don't Save Current Session"})

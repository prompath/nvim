local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer", noremap = true, silent = true })

-- Indenting
keymap.set("v", "<", "<gv", { desc = "Indent Selection" })
keymap.set("v", ">", ">gv", { desc = "Dedent Selection" })

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gc", { noremap = false })

-- Move to window using the <ctrl> hjkl keys
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", noremap = true })

-- Resize window using <ctrl> arrow keys
vim.api.nvim_set_keymap("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.api.nvim_set_keymap("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.api.nvim_set_keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.api.nvim_set_keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Buffers
vim.api.nvim_set_keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.api.nvim_set_keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.api.nvim_set_keymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

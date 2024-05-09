local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

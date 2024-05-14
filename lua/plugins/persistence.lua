return {
  "folke/persistence.nvim",
  lazy = false,
  event = "BufReadPre",
  opts = { options = vim.opt.sessionoptions:get() },
}

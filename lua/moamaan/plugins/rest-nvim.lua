return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = "http", -- Load only for .http files
  config = function()
    vim.g.rest_nvim = {
      default_content_type = "application/json",
      skip_ssl_verification = false, -- Set to true if you have SSL issues
    }
    local keymap = vim.keymap
    keymap.set("n", "<leader>rr", "<cmd>Rest run<CR>", { noremap = true, silent = true })
    keymap.set("n", "<leader>rp", "<cmd>Rest preview<CR>", { noremap = true, silent = true })
    keymap.set("n", "<leader>rl", "<cmd>Rest run last<CR>", { noremap = true, silent = true })
  end,
}

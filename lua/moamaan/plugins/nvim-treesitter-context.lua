return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesitter-context").setup({
      enable = true, -- Enable context tracking
      max_lines = 3, -- Show up to 3 lines of context (adjust as needed)
      trim_scope = "outer", -- Hide when leaving the function
      mode = "cursor", -- Show context for the current function under the cursor
      separator = "─", -- Optional: Adds a visual separator
    })
  end,
}

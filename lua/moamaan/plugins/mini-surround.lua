return {
  "echasnovski/mini.surround",
  version = "*", -- Always use the latest version
  config = function()
    require("mini.surround").setup({
      -- Default config (you can customize this)
      mappings = {
        add = "sa", -- Add surrounding
        delete = "sd", -- Delete surrounding
        find = "sf", -- Find surrounding
        find_left = "sF", -- Find surrounding (reverse)
        highlight = "sh", -- Highlight surrounding
        replace = "sr", -- Replace surrounding
        update_n_lines = "sn", -- Update `n_lines`
      },
      n_lines = 50, -- How far to search for surrounding

      custom_surroundings = {
        ["`"] = { output = { left = "`", right = "`" } }, -- for inline code
        -- Optional: You can add more, like Markdown bold or LaTeX
        ["*"] = { output = { left = "*", right = "*" } }, -- bold or italic
        ["_"] = { output = { left = "_", right = "_" } }, -- italic
        ["~"] = { output = { left = "~~", right = "~~" } }, -- strikethrough
        -- For Markdown fenced code block:
        ["3"] = {
          output = function()
            return {
              left = "```",
              right = "```",
            }
          end,
        },
      },
    })
  end,
}

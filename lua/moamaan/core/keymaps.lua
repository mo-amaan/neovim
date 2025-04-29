vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Common keymaps regardless of environment
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-b>", "<C-b>zz")
keymap.set("n", "<C-f>", "<C-f>zz")

-- Only load these keymaps if NOT in VSCode
if not vim.g.vscode then
  keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

  -- increment/decrement numbers
  keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
  keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

  -- window management
  keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
  keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
  keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
  keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

  keymap.set("n", "<leader>to", "<cld>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
  keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
  keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
  keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
  keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
  
  vim.api.nvim_set_keymap("n", "<leader>rt", ':!open -a "Google Chrome" %<CR>', { noremap = true, silent = true })

  -- for rest-nvim
  -- to run API request under the cursor
  keymap.set("n", "<leader>rr", "<cmd>Rest Run<CR>", { noremap = true, silent = true, desc = "Run API under cursor" })
  --  preview the last api response
  keymap.set(
    "n",
    "<leader>rp",
    "<cmd>Rest Preview<CR>",
    { noremap = true, silent = true, desc = "Preview last api response" }
  )
  -- run the last API request again
  keymap.set(
    "n",
    "<leader>rl",
    "<cmd>Rest run last<CR>",
    { noremap = true, silent = true, desc = "Run the last API request again" }
  )
else
  -- VSCode-specific keymaps (if you need any)
  -- Example: integrating with VSCode commands
  keymap.set("n", "<leader>e", "<Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>")
  keymap.set("n", "<leader>f", "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>")
  keymap.set("n", "<leader>gs", "<Cmd>call VSCodeNotify('workbench.view.scm')<CR>")
end
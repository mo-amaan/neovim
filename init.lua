-- Detect if running inside VSCode
vim.g.vscode = vim.g.vscode ~= nil

require("moamaan.core.init")
-- Conditionally load plugins based on environment
if vim.g.vscode then
  require("moamaan.vscode")
else
  require("moamaan.lazy")
end
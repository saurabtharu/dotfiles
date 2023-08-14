--- ================ Indentation ======================

-- Show tabs and whitespaces
vim.opt.list = true
-- To differentiate between the whitespaces
vim.opt.listchars = { tab = ">-", trail = "-"}
vim.opt.smartindent = true
-- Respect indentation when starting a new line
vim.opt.autoindent = true
-- Expand tabs to 4 spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Wrap lines at convenient points
vim.opt.linebreak = true

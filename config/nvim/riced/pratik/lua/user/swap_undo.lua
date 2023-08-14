--- ================ Swap files and Undo ====================

-- Turn off unnecessary files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wb = false

-- Keep undo history across sessions, by storing in file.
vim.opt.undodir = vim.fn.stdpath("data") .. "/backups"
vim.opt.undofile = true

--- ================ Search ===========================

-- Provides tab-completion for all file related tasks
vim.opt.path = "**"
-- Highlight searches by default
vim.opt.hlsearch = true
-- Find the next match as we type the search
vim.opt.incsearch = true
-- Ignore case when searching...
vim.opt.ignorecase = true
-- ...unless we type a capital
vim.opt.smartcase = true

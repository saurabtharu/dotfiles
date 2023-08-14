--- ================ Folds ============================

-- fold based on tree-sitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- don't fold by default
vim.opt.foldenable = false

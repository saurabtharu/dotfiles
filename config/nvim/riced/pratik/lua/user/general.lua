--- ================ General Config ====================

-- Highlight cursorline when in normal mode and disable it when in insert mode
vim.opt.cursorline = true
-- defining the cursorline autocmds inside a group
local cursorline_group = vim.api.nvim_create_augroup('cursorline_group', { clear = true })
vim.api.nvim_create_autocmd('InsertEnter', {
    callback = function() vim.opt.cursorline = false end,
    desc = "Disable the cursorline inside Insert mode",
    group = cursorline_group,
})
vim.api.nvim_create_autocmd('InsertLeave', {
    callback = function() vim.opt.cursorline = true end,
    desc = "Enable the cursorline once again once we leave Insert mode",
    group = cursorline_group,
})

-- Hybrid numbers are good
vim.opt.rnu = true
vim.opt.nu = true

-- Show incomplete cmds down the bottom
vim.opt.showcmd = true

-- Copy into system (+) register
vim.opt.clipboard = 'unnamedplus'

-- Auto line break after exceeding 100 columns
vim.opt.tw = 100

-- We don't need to see things like -- INSERT -- anymore
vim.opt.showmode = false

-- Disable language support for things I don't use
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0

-- have a fixed column for the diagnostics to appear in
-- this removes the jitter when warnings/errors flow in
vim.wo.signcolumn = "yes"

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- For proper latex experience
vim.g.tex_flavour = "latex"

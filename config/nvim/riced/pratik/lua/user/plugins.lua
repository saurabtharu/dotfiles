--- ================ Plugins ====================

-- Using lazy.nvim for plugin management
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "folke/tokyonight.nvim",
    "nvim-lualine/lualine.nvim",
    "neovim/nvim-lspconfig",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    -- Autocompletion with LSPs
    "hrsh7th/cmp-nvim-lsp",
    -- Snippets for other contexts
    "hrsh7th/cmp-buffer",
    "FelipeLema/cmp-async-path",
    -- Main snippets plugin
    "hrsh7th/nvim-cmp",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "rust-lang/rust.vim",
    "simrat39/rust-tools.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {
        "nvim-telescope/telescope.nvim",
        dependencies = "nvim-telescope/telescope-fzf-native.nvim",
    },
    -- snippets by luasnip
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "<CurrentMajor>.*",
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { { "nvim-lua/plenary.nvim" } },
    },
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({})
        end,
    }
})

require("lualine").setup()
require("nvim-web-devicons").setup()
require("nvim-tree").setup()

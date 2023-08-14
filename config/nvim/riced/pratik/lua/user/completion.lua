--- ================ Completion =======================

-- enable ctrl-n and ctrl-p to scroll through matches
vim.opt.wildmenu = true

-- Setup language servers
local lspconfig = require("lspconfig")

-- Merge the defaults lspconfig provides with the capabilities nvim-cmp adds
local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.clangd.setup({
})
lspconfig.lua_ls.setup({})
-- we're using rust-tools for Rust
local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>cd", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
lspconfig.pyright.setup({})
lspconfig.texlab.setup({
    settings = {
        texlab = {
            build = {
                executable = "tectonic",
                onSave = false,
                args = { "-X", "build", "--keep-logs", "--keep-intermediates" },
                forwardSearchAfter = true,
                forwardSearch = {
                    executable = "sioyek",
                    args = {
                        "--inverse-search",
                        "nvim --server /run/user/1000/nvim.socket --remote-send \"%2gg<esc>\" %1",
                        "--reuse-window",
                        "--forward-search-file",
                        "%f",
                        "--forward-search-line",
                        "%l",
                        "%p"
                    },
                },
            }
        }
    }
})

require('luasnip.loaders.from_vscode').lazy_load()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
-- Setup nvim-cmp for snippets
local cmp = require("cmp")
local luasnip = require("luasnip")
cmp.setup({
    snippet = {
        -- we must specify a snippet engine
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        -- Accept currently selected item.
        -- Set `select` to `false` to only
        -- confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip', option = { show_autosnippets = true } },
        { name = 'buffer' },
        { name = 'async_path' },
        { name = 'neorg' },
    })
})

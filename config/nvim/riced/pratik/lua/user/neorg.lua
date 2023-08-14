--- ================ Neorg Settings ===========================

require("neorg").setup({
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        -- Exports norg documents to other formats
        ["core.export"] = {},
        -- Adds pretty icons to your documents
        ["core.norg.concealer"] = {
            config = {
                icons = {
                    todo = {
                        uncertain = {
                            icon = "❓",
                        },
                        cancelled = {
                            icon = "🗑",
                        },
                        done = {
                            icon = "✔",
                        },
                        on_hold = {
                            icon = "⏸",
                        },
                        pending = {
                            icon = "🕛",
                        },
                    }
                }
            },
        },
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
                -- Binds the `<localleader>m` key in `norg` mode to execute Looking Glass
                hook = function(keybinds)
                    keybinds.map("norg", "n", "<localleader>m", "<cmd>Neorg keybind all core.looking-glass.magnify-code-block<CR>")
                end,
            },
        },
        -- Provide completion in neorg
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp",
            },
        },
        ["core.norg.dirman"] = { -- Manages Neorg workspaces
            config = {
                workspaces = {
                    articles = vim.fn.expand("~/Documents/Org/articles"),
                    random = vim.fn.expand("~/Documents/Org/random"),
                    notes = vim.fn.expand("~/Documents/Org/notes"),
                },
                default_workspace = "notes"
            },
        },
    },
})

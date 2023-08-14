--- ================ General Key Bindings ==========================

-- leader key
vim.g.mapleader = " "
-- local leader
vim.g.maplocalleader = ";"

-- The '/' is too difficult to reach... remap it!!
vim.keymap.set('n', '\\', '/', {
    remap = true,
    desc = "Search for string"
})

-- Keybinding to format code with clang-format
vim.keymap.set('', "<c-k>",
    ":py3f /usr/share/clang/clang-format.py<CR>",
    {
    desc = "Invoke clang-format on the current buffer"
    }
)
vim.keymap.set('i', "<c-k><c-o>",
    ":py3f /usr/share/clang/clang-format.py<CR>",
    {
    desc = "Invoke clang-format on the current buffer"
    }
)

-- Save a file with leader-w
vim.keymap.set('', "<leader>w",
    "<cmd>wall<CR>",
    {
    remap = true,
    desc = "Save all opened buffers"
    }
)

-- Turn on spell checking with leader-s.
vim.keymap.set('', "<leader>s",
    function()
        vim.opt.spell = not vim.opt.spell:get()
    end,
    {
    desc = "Toggle between spell checking"
    }
)

-- Toggle highlight search
vim.keymap.set('', "<leader>hs",
    function()
        vim.opt.hlsearch = not vim.opt.hlsearch:get()
    end,
    {
    desc = "Toggle hightlight search"
    }
)

-- Configure key bindings for Nvim LSP
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    -- TODO: buffer = true everywhere, yuck
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>',
    {
        buffer = true,
        desc = "Display hover information about the symbol under the cursor",
    })

    vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>',
    {
        buffer = true,
        desc = "Jump to the definition",
    })

    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>',
    {
        buffer = true,
        desc = "Jump to the declaration",
    })

    vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>',
    {
        buffer = true,
        desc = "Lists all the implementations for the symbol under the cursor",
    })

    vim.keymap.set('n', 'go', '<cmd>Telescope lsp_type_definitions<cr>',
    {
        buffer = true,
        desc = "Jumps to the definition of the type symbol",
    })

    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>',
    {
        buffer = true,
        desc = "List all the references",
    })

    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>',
    {
        buffer = true,
        desc = "Display a function's signature information",
    })

    vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>',
    {
        buffer = true,
        desc = "Renames all references to the symbol under the cursor",
    })

    vim.keymap.set('n', '<leader>cd', '<cmd>lua vim.lsp.buf.code_action()<cr>',
    {
        buffer = true,
        desc = "Select a code action available at the current cursor position",
    })
    vim.keymap.set('x', '<leader>cd', '<cmd>lua vim.lsp.buf.range_code_action()<cr>',
    {
        buffer = true,
        desc = "Select a code action available at the current cursor position",
    })

    vim.keymap.set('n', 'gl', '<cmd>Telescope diagnostics<cr>',
    {
        buffer = true,
        desc = "Show diagnostics in a floating window",
    })

    -- Move to the previous diagnostic
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>',
    {
        buffer = true,
        desc = "Move to the previous diagnostic",
    })

    -- Move to the next diagnostic
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>',
    {
        buffer = true,
        desc = "Move to the next diagnostic",
    })
  end
})

-- Toggle Nvim Tree
vim.keymap.set('n', "<leader>n",
    "<cmd>NvimTreeToggle<cr>",
    {
    desc = "Open or close Nvim Tree"
    }
)

-- Telescope keybindings
vim.keymap.set('n', "<leader>ff",
    "<cmd>Telescope find_files<cr>",
    {
    desc = "Telescope find files"
    }
)
vim.keymap.set('n', "<leader>fg",
    "<cmd>Telescope live_grep<cr>",
    {
    desc = "Telescope live grep"
    }
)
vim.keymap.set('n', "<leader>fb",
    "<cmd>Telescope buffers<cr>",
    {
    desc = "Telescope buffers"
    }
)
vim.keymap.set('n', "<leader>fh",
    "<cmd>Telescope help_tags<cr>",
    {
    desc = "Telescope help tags"
    }
)
vim.keymap.set('n', "<leader>fr",
    "<cmd>Telescope oldfiles<cr>",
    {
    desc = "Telescope recent files"
    }
)

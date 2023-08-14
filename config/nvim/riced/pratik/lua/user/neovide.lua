--- ================ Neovide Settings ===========================

-- set gui font, when we're in neovide
if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font:h10.5"
    -- hide the mouse when typing
    vim.g.neovide_hide_mouse_when_typing = true
    -- don't redraw all the time
    vim.g.neovide_no_idle = true
    vim.g.neovide_remember_window_size = true
    -- start in fullscreen mode
    vim.g.neovide_fullscreen = true
    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
      change_scale_factor(1.25)
    end)
    vim.keymap.set("n", "<C-->", function()
      change_scale_factor(1/1.25)
    end)
end

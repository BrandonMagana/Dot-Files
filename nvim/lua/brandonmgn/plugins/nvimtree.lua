-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    update_cwd = true,
    open_on_setup = true,
    open_on_setup_file = true,
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    view = {
        side = "left",
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    filters = {
        dotfiles = false,
    }
})

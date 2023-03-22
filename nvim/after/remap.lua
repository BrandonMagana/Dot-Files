vim.keymap.set("n", "<leader>pn;", vim.cmd.Ex, { desc = '[P]roject na[V}igation' })
vim.keymap.set("v",  "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v",  "K", ":m '<-2<CR>gv=gv")

require("brandonmgn.remap")

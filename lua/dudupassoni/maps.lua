vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope (Essa droga n vai no arquivo certo)

vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")

-- Neotree (tbm n vai)

vim.keymap.set("n", "<leader>t", "<CMD>Neotree<CR>")

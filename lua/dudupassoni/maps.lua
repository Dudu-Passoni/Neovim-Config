vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope (Essa droga n vai no arquivo certo)

vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")

-- Neotree (tbm n vai)

vim.keymap.set("n", "<leader>t", "<CMD>Neotree<CR>")

-- Mover texto selecionado para cima e para baixo no modo visual

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover seleção para baixo" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover seleção para cima" })

-- Mapear <Space>y para +y
--
vim.keymap.set('n', '<Space>y', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', '<Space>y', '"+y', { noremap = true, silent = true })

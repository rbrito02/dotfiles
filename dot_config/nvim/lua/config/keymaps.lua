vim.g.mapleader = " "
vim.keymap.set("n", "-", ":Oil<cr>", {
	desc = "file explorer",
})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {
	desc = "move selection down",
})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {
	desc = "move selection up",
})

vim.keymap.set("n", "J", "mzJ`z", {
	desc = "Joins Line Below",
})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {
	desc = "move halfway down page",
})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {
	desc = "move halfway up page",
})
vim.keymap.set("n", "n", "nzzzv", {
	desc = "goto next search result",
})
vim.keymap.set("n", "N", "Nzzzv", {
	desc = "goto prev search result",
})

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], {
	desc = "copy to system",
})
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Navigate up pane"})
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Navigate down pane"})
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Navigate left pane"})
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Navigate right pane"})
vim.keymap.set("n", "<leader>hs", ":wincmd s<CR>", { desc = "Horizontal split"})
vim.keymap.set("n", "<leader>vs", ":wincmd v<CR>", { desc = "Vertical split"})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><CV-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
-- 	desc = "refactor word",
-- })
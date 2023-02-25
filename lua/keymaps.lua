vim.g.mapleader = " "

local map = require("utils").map

map("i", "jk", "<Esc>")
map("n", "jk", "i")

map("n", "<leader>q", ":q!<CR>")
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>s", ":wq<CR>")
map("i", "<leader>s", ":wq<CR>")

map("n", "<leader>nh", ":nohl<CR>")

map("n", "<leader>sv", "<C-w>v")
map("n", "<leader>sh", "<C-w>s")
map("n", "<leader>se", "<C-w>=")
map("n", "<leader>sx", ":close<CR>")

map("n", "<leader>to", ":tabnew<CR>")
map("n", "<leader>tx", ":tabclose<CR>")
map("n", "<leader>tn", ":tabn<CR>")
map("n", "<leader>tp", ":tabp<CR>")

-- for plugins
-- packer sync
map("n", "<leader>ps", ":PackerSync<CR>")
map("n", "<leader>pi", ":PackerInstall<CR>")
-- nvim tree
map("n", "<leader>e", ":NvimTreeToggle<CR>")
-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fs", ":Telescope live_grep<CR>")
map("n", "<leader>fc", ":Telescope grep_string<CR>")
map("n", "<leader>fb", ":Telescope buffer<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")


require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- -- Normal mode: Move line up/down
-- map("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
-- map("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
-- -- Visual mode: Move selected block up/down
-- map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
-- map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
--
-- -- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- --
--
-- map({"n", "v"}, "\x1bj", ":m .+1<CR>==", { desc = "Alt-j fallback" })
-- map({"n", "v"}, "\x1bk", ":m .-2<CR>==", { desc = "Alt-k fallback" })

-- lua/mappings.lua

map("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })

map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

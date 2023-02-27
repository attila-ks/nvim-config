-- Set <space> as the leader key
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Faking netrw being setup, so it won't show up.
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

local keymap = vim.keymap

-- Keymaps for better default experience
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<leader>e", vim.diagnostic.open_float)
keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- TODO: Check if these remap important functionalities!
-- Switch to the next buffer
keymap.set("n", "<leader>n", ":bnext<CR>", { silent = true })
-- Switch to the previous buffer
keymap.set("n", "<leader>p", ":bprevious<CR>", { silent = true })
-- Close the current buffer
keymap.set("n", "<leader>d", ":bdelete<CR>", { silent = true })

-- Split window vertically
keymap.set("n", "<leader>sv", "<C-w>v")
-- Split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s")
-- Make split windows equal width
keymap.set("n", "<leader>se", "<C-w>=")
-- Close current split window
keymap.set("n", "<leader>sx", ":close<CR>")

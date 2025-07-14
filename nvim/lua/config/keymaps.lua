-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-d>", "gg<S-v>G")

keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("v", "K", ":m-2<cr>gv=gv", { silent = true })
keymap.set("v", "J", ":m'>+<cr>gv=gv", { silent = true })

keymap.set("n", "<D-.>", vim.lsp.buf.code_action, { desc = "LSP Code Action", silent = true })

-- Substitue
keymap.set("n", "s", require("substitute").operator, { noremap = true })
keymap.set("n", "ss", require("substitute").line, { noremap = true })
keymap.set("n", "S", require("substitute").eol, { noremap = true })
keymap.set("x", "s", require("substitute").visual, { noremap = true })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
keymap.set("n", "gb", "<C-t>", { desc = "Go back" })

-- Use Black Hole Register for deletes
-- keymap.set({ "n", "v" }, "<leader-x>", '"_x')
-- keymap.set({ "n", "v" }, "<leader-d>", '"_d')

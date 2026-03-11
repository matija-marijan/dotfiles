-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Override LazyVim's Ctrl+/ terminal to use toggle instead of creating new terminal
-- vim.keymap.set({ "n", "t" }, "<c-/>", function() Snacks.terminal.toggle(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
-- vim.keymap.set({ "n", "t" }, "<c-_>", function() Snacks.terminal.toggle(nil, { cwd = LazyVim.root() }) end, { desc = "which_key_ignore" })

vim.keymap.set("i", "<S-Tab>", "<C-d>", { desc = "Unindent" })

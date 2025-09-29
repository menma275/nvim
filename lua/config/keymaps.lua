vim.keymap.set("n", "<C-w>", ":bd<CR>")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
vim.keymap.set("n", "<leader>d", function()
  vim.diagnostic.open_float(nil, {
    border = "rounded",
    focusable = true,
    max_width = 80,
    wrap = true,
  })
end, { desc = "Show diagnostics" })

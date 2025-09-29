vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown", "typescript", "typescriptreact" },
  callback = function()
    local ft = vim.bo.filetype

    -- Disable conceallevel for certain filetypes
    if ft == "json" or ft == "jsonc" or ft == "markdown" then
      vim.wo.conceallevel = 0
    end

    -- Enable wrapping for TypeScript files
    if ft == "typescript" or ft == "typescriptreact" then
      vim.wo.wrap = true
      vim.wo.linebreak = true
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.tidal",
  callback = function()
    vim.bo.filetype = "haskell"
  end,
})

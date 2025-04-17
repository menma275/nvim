vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.typ",
  callback = function()
    vim.cmd("!typst compile %")
    vim.cmd("echo 'Compiled: ' .. expand('%:r') .. '.pdf'")
    vim.cmd("!open %:r.pdf")
  end,
})
return {
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = false,
  },
}

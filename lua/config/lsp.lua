vim.diagnostic.config({
  float = {
    border = "rounded", -- 枠つきにすると見やすい
    focusable = true, -- カーソルでスクロール可能
    max_width = 80, -- 最大幅を制限
    wrap = true, -- 折り返し表示
  },
})

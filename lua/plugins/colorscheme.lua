return {
  -- {
  --   "navarasu/onedark.nvim",
  --   priority = 1000, -- ensure it loads first
  --   config = function()
  --     require("onedark").setup({
  --       style = "warmer", -- change the style to warmer
  --     })
  --     require("onedark").load()
  --   end,
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
      })
    end,
  },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   name = "github-theme",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("github-theme").setup({})
  --     vim.cmd("colorscheme github_dark_default")
  --   end,
  -- },
  {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },
}

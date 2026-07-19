return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        -- disable_background = true,
        styles = {
          bold = true,
          italic = false,
          transparency = true,
        },
      })
    end,
  },
  {
    "thekylehuang/cole.nvim",
    priority = 1000,
  },
  {
    "wtfox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "HoNamDuong/hybrid.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'datsfilipe/vesper.nvim',
    config = function()
      require('vesper').setup({
        transparent = false, -- Boolean: Sets the background to transparent
        italics = {
          comments = true,   -- Boolean: Italicizes comments
          keywords = true,   -- Boolean: Italicizes keywords
          functions = true,  -- Boolean: Italicizes functions
          strings = true,    -- Boolean: Italicizes strings
          variables = true,  -- Boolean: Italicizes variables
        },
        overrides = {},      -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {}
      })
    end
  },
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      -- custom options here
      transparent_background = false,                                        -- set background to transparent
      gamma = 1.00,                                                          -- adjust the brightness of the theme
      styles = {
        comments = { italic = true },                                        -- style for comments
        keywords = { italic = true },                                        -- style for keywords
        identifiers = { italic = true },                                     -- style for identifiers
        functions = {},                                                      -- style for functions
        variables = {},                                                      -- style for variables
      },
      custom_highlights = {} or function(highlights, palette) return {} end, -- extend highlights
      custom_palette = {} or function(palette) return {} end,                -- extend palette
      terminal_colors = true,                                                -- enable terminal colors
    },
  }
}

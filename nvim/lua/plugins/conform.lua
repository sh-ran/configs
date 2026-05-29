return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = {
        -- To fix auto-fixable lint errors.
        "ruff_fix",
        -- To run the Ruff formatter.
        "ruff_format",
        -- To organize the imports.
        "ruff_organize_imports",
      },
      -- You can customize some of the format options for the filetype (:help conform.format)
      rust = { "rustfmt", lsp_format = "fallback" },
      -- Conform will run the first available formatter
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  }
}

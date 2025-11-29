return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require('fzf-lua').setup({
      defaults = {
        git_icons = true,
        file_icons = true,
        color_icons = false
      }
    })
  end
}

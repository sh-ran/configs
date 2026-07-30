local km = vim.keymap
local fzf = require("fzf-lua")

-- Core pickers
km.set("n", "<C-p>", fzf.files, { desc = "Find Files" })
km.set("n", "<leader>fg", fzf.live_grep, { desc = "Live Grep" })
km.set("n", "<leader>fw", fzf.grep_cword, { desc = "Grep Word Under Cursor" })
km.set("v", "<leader>fs", fzf.grep_visual, { desc = "Grep Selection" })
km.set("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
km.set("n", "<leader>fo", fzf.oldfiles, { desc = "Recent Files" })
km.set("n", "<leader>fh", fzf.helptags, { desc = "Help Tags" })

-- Utility pickers
km.set("n", "<leader>fm", fzf.marks, { desc = "Marks" })
km.set("n", "<leader>fk", fzf.keymaps, { desc = "Keymaps" })
km.set("n", "<leader><leader>", fzf.resume, { desc = "Resume Last Picker" })

-- LSP (via fzf-lua)
km.set("n", "<leader>fd", fzf.lsp_definitions, { desc = "Definitions" })
km.set("n", "<leader>fr", fzf.lsp_references, { desc = "References" })
km.set("n", "<leader>fs", fzf.lsp_document_symbols, { desc = "Document Symbols" })

-- Diagnostics
km.set("n", "<leader>cl", function()
  vim.diagnostic.open_float(0, { scope = "line" })
end, { desc = "Line Diagnostics" })

-- Neotree
km.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", { desc = "Toggle File Tree" })

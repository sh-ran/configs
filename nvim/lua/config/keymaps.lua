local km = vim.keymap

km.set("n", "<leader>p", require("fzf-lua").files, { desc = "FZF Files" })

km.set("n", "<leader><leader>", require("fzf-lua").resume, { desc = "FZF Resume" })

-- km.set("n", "<leader>r", require("fzf-lua").registers, { desc = "Registers" })

km.set("n", "<leader>m", require("fzf-lua").marks, { desc = "Marks" })

km.set("n", "<leader>k", require("fzf-lua").keymaps, { desc = "Keymaps" })

km.set("n", "<leader>f", require("fzf-lua").live_grep, { desc = "FZF Grep" })

km.set("v", "<leader>8", require("fzf-lua").grep_visual, { desc = "FZF Selection" })

km.set("n", "<leader>7", require("fzf-lua").grep_cword, { desc = "FZF Word" })

km.set("n", "<leader>cj", require("fzf-lua").lsp_definitions, { desc = "Jump to Definition" })

km.set("n", "<leader>b", require("fzf-lua").buffers, { desc = "Buffers" })

km.set("n", "<leader>cl", function()
	vim.diagnostic.open_float(0, { scope = "line" })
end, { desc = "Line Diagnostics" })

-- km.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
-- km.set("n", "<leader>gs", ":Neotree git_status reveal float<CR>", {})
-- km.set("n", "<leader>b", ":Neotree buffers reveal float<CR>", {})

-- Neotree
km.set("n", "-", "<CMD>Neotree position=right<CR>", { desc = "Open parent dir" })
km.set("n", "<leader>-", "<CMD>Neotree close<CR>", { desc = "Open parent dir" })

-- ToggleTerm spwan
km.set("n", "<leader>th", "<CMD>ToggleTerm direction=horizontal<CR>", { desc = "Open parent dir" })
km.set("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", { desc = "Open parent dir" })

-- ToggleTerm exit keybinds
km.set("t", "<esc>", [[<C-\><C-n>]], opts)
km.set("n", "<leader>tk", [[<C-\><C-n><C-W>k]], opts)

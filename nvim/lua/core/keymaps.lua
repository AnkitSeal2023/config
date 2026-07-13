vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==")
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==")
vim.keymap.set("n", "V", "^v$", {})
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "\\", "<Cmd>Neotree toggle left reveal<CR>", { desc = "NeoTree reveal", silent = true })
vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<A-n>", vim.cmd.tabnew)

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

-- Fix case typos for saving and quitting
vim.api.nvim_create_user_command("W", "w", { nargs = "*" })
vim.api.nvim_create_user_command("Q", "q", { nargs = 0 })
vim.api.nvim_create_user_command("Wq", "wq", { nargs = "*" })
vim.api.nvim_create_user_command("Wa", "wa", { nargs = "*" })
vim.api.nvim_create_user_command("Wqa", "wqa", { nargs = 0 })
vim.api.nvim_create_user_command("Qa", "qa", { nargs = 0 })

-- Fix exclamation mark typos using abbreviations instead
vim.cmd([[
  cabbrev W! w!
  cabbrev Q! q!
  cabbrev Wq! wq!
]])

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

require("core.keymaps.barbarkeymaps")

vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>")
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>")
vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

vim.keymap.set("n", "<leader>cs", ":Telescope colorscheme<CR>")

-- conform keymaps:
-- Bind formatting to <leader>f for Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	require("conform").format({
		lsp_format = "fallback", -- Use LSP if no custom formatter is found
		async = false, -- Set to true if you don't want to freeze Neovim
		timeout_ms = 500, -- Stop formatting if it takes longer than 500ms
	})
end, { desc = "Format file or range" })

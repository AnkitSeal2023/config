return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
	config = function()
		local opts = { noremap = true, silent = true }

		-- Move to previous/next
		vim.keymap.set("n", "<A-,>", "<Cmd>bprev<CR>", opts)
		vim.keymap.set("n", "<A-.>", "<Cmd>bnext<CR>", opts)

		-- Re-order to previous/next
		vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
		vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

		-- Goto buffer in position...
		vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
		vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
		vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
		vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
		vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
		vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
		vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
		vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
		vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
		vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

		-- Pin/unpin buffer
		vim.keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

		-- Goto pinned/unpinned buffer
		--                 :BufferGotoPinned
		--                 :BufferGotoUnpinned

		-- Close buffer
		vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

		-- Wipeout buffer
		--                 :BufferWipeout

		-- Close commands
		--                 :BufferCloseAllButCurrent
		--                 :BufferCloseAllButPinned
		--                 :BufferCloseAllButCurrentOrPinned
		--                 :BufferCloseBuffersLeft
		--                 :BufferCloseBuffersRight

		-- Magic buffer-picking mode
		vim.keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
		vim.keymap.set("n", "<C-s-p>", "<Cmd>BufferPickDelete<CR>", opts)

		-- Sort automatically by...
		vim.keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
		vim.keymap.set("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
		vim.keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
		vim.keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
		vim.keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

		-- Other:
		-- :BarbarEnable - enables barbar (enabled by default)
		-- :BarbarDisable - very bad command, should never be used
	end,
}

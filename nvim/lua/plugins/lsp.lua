return {
	"neovim/nvim-lspconfig",
	config = function()
		-- Special Lua Config, as recommended by neovim help docs
		vim.lsp.config("lua_ls", {
			on_init = function(client)
				client.server_capabilities.documentFormattingProvider = false
				if client.workspace_folders then
					local path = client.workspace_folders[1].name
					if
						path ~= vim.fn.stdpath("config")
						and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
					then
						return
					end
				end
				client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
					runtime = {
						version = "LuaJIT",
						path = { "lua/?.lua", "lua/?/init.lua" },
					},
					workspace = {
						checkThirdParty = false,
						library = vim.tbl_extend("force", vim.api.nvim_get_runtime_file("", true), {
							"${3rd}/luv/library",
							"${3rd}/busted/library",
						}),
					},
				})
			end,
			root_markers = {
				{
					"init.lua",
					".emmyrc.json",
					".luarc.json",
				},
				".git",
			},

			settings = {
				Lua = {
					format = { enable = false },
				},
				hint = {
					enable = true,
				},
			},
		})

		vim.lsp.config("vscode-html-language-server", {
			cmd = function(dispatchers, config)
				local cmd = "vscode-html-language-server"
				if (config or {}).root_dir then
					local local_cmd = vim.fs.joinpath(config.root_dir, "node_modules/.bin", cmd)
					if vim.fn.executable(local_cmd) == 1 then
						cmd = local_cmd
					end
				end
				return vim.lsp.rpc.start({ cmd, "--stdio" }, dispatchers)
			end,
			filetypes = { "html" },
			root_markers = { "package.json", ".git" },
			---@type lspconfig.settings.html
			settings = {},
			init_options = {
				provideFormatter = true,
				embeddedLanguages = { css = true, javascript = true },
				configurationSection = { "html", "css", "javascript" },
			},
		})

		vim.lsp.enable("lua_ls")
		vim.lsp.enable("gopls")
		vim.lsp.enable("pyright")
		vim.lsp.enable("clangd")
		vim.lsp.enable("ts_ls")
		vim.lsp.enable("tailwindcss")
		vim.lsp.enable("emmet_language_server")
		vim.lsp.enable("bashls")
		vim.lsp.enable("vscode-html-language-server")
		vim.lsp.enable("jsonls")
		vim.lsp.enable("cssls")
		vim.lsp.enable("protols")
	end,
}

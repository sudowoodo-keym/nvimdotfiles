return {
	{
		"hrsh7th/nvim-cmp",
<<<<<<< HEAD
		lazy = false,
		enabled = true,
	},
	{ "hrsh7th/cmp-nvim-lsp", lazy = false },
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
=======
		enabled = true,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
>>>>>>> 7fbc9d3 (fixed a few things)
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
<<<<<<< HEAD
		lazy = false,
		opts = {
			auto_instal = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
=======
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "pyright" },
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
>>>>>>> 7fbc9d3 (fixed a few things)
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
<<<<<<< HEAD
			lspconfig.html.setup({
=======
			lspconfig.pyright.setup({
>>>>>>> 7fbc9d3 (fixed a few things)
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
<<<<<<< HEAD
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Get references" })
=======
			vim.keymap.set("n", "<leader>ga", vim.lsp.buf.references, { desc = "Get references" })
>>>>>>> 7fbc9d3 (fixed a few things)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
		end,
	},
}

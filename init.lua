-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-treesitter/nvim-treesitter",
        lazy = true,
		branch = "main",
		build = ":TSUpdate",
	},
}
local opts = {}
require("config.lazy")
require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

local config = require("nvim-treesitter.config")
config.setup({
	ensure_installed = { "lua", "javascript", "html", "css", "c", "python" },
	highlight = { enable = true },
	indent = { enable = true },
})
vim.lsp.config('harper-ls', {
    settings = {
        ["harper-ls"] = {
            linters = {
                SpellCheck = false,
                SpelledNumbers = false,
                SentenceCapitalizaiton = false,
            },
        },
    },
})

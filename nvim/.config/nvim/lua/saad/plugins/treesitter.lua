return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		{
			"windwp/nvim-ts-autotag",
			opts = {
				opts = {
					enable_close = true,
					enable_rename = true,
					enable_close_on_slash = false,
				},
			},
		},
	},
	config = function()
		local ts = require("nvim-treesitter")

		vim.treesitter.language.register("html", "htmldjango")

ts.setup({
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"hcl",
				"helm",
				"toml",
				"regex",
				"bash",
				"lua",
				"python",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"terraform",
				"vimdoc",
				"c",
				"tmux",
			},
			auto_install = true,
			sync_install = false,
			ignore_install = {},
		})
	end,
}

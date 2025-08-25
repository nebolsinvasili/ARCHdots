return {
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = {
					"bash",
					"css",
					"dockerfile",
					"json", "json5",
					"lua",
					"python",
					"vim",
					"yaml", "toml",
					"c", "cpp",
					"go",
					"rust",
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
				}
			})
		end
	}
}

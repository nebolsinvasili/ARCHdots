return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local colors = {
			normal = "#7E9CD8",
			insert = "#98BB6C",
			visual = "#FFA066",
			replace = "#E46876",
			command = "#E6C384",
			
			outerbg = "#16161D",
			white = '#CCCCCC',
			grey = '#404040',
			darkgray = "#16161d",
			black = '#080808',
			
			innerbg = nil,
			outerbg = "#16161D",
		}

		local bubbles_theme = {
			inactive = {
				a = { fg = colors.white, bg = colors.outerbg },
				b = { fg = colors.gray, bg = colors.grey },
				c = { fg = colors.gray, bg = colors.innerbg },
			},
			visual = {
				a = { fg = colors.black, bg = colors.visual },
				b = { fg = colors.gray, bg = colors.grey },
				c = { fg = colors.gray, bg = colors.innerbg },
			},
			replace = {
				a = { fg = colors.black, bg = colors.replace },
				b = { fg = colors.gray, bg = colors.grey },
				c = { fg = colors.gray, bg = colors.innerbg },
			},
			normal = {
				a = { fg = colors.black, bg = colors.normal },
				b = { fg = colors.gray, bg = colors.grey },
				c = { fg = colors.gray, bg = colors.innerbg },
			},
			insert = {
				a = { fg = colors.black, bg = colors.insert },
				b = { fg = colors.gray, bg = colors.grey },
				c = { fg = colors.gray, bg = colors.innerbg },
			},
			command = {
				a = { fg = colors.black, bg = colors.command },
				b = { fg = colors.gray, bg = colors.grey },
				c = { fg = colors.gray, bg = colors.innerbg },
			},
		}
		require('lualine').setup {
			options = {
				theme = bubbles_theme,
				component_separators = '|',
				section_separators = {left = '', right = ''}
			},
			sections = {
				lualine_a = {{'mode', separator = {left = ''}, right_padding = 2}},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_y = {'progress'},
				lualine_z = { {'location', separator = {right = ''}, left_padding = 2} }
			},
			inactive_sections = {
				lualine_a = {'filename'},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {'location'}				
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end,
}

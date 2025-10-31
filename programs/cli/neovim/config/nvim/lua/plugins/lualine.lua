return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin/nvim",
	},
	config = function()
		local theme = require("core.theme-manager")
		local palette = theme.current.palette

		local custom_catppuccin = {
			-- We are going to use lualine_c an lualine_x as left and
			-- right section. Both are highlighted by c theme .  So we
			-- are just setting default looks o statusline
			normal = {
				a = { bg = palette.blue, fg = palette.crust, gui = "bold" },
				b = { bg = palette.surface0, fg = palette.text },
				c = { bg = nil, fg = palette.subtext1 },
			},
			insert = {
				a = { bg = palette.green, fg = palette.crust, gui = "bold" },
				b = { bg = palette.surface0, fg = palette.text },
				c = { bg = nil, fg = palette.subtext1 },
			},
			visual = {
				a = { bg = palette.peach, fg = palette.crust, gui = "bold" },
				b = { bg = palette.surface0, fg = palette.text },
				c = { bg = nil, fg = palette.subtext1 },
			},
			replace = {
				a = { bg = palette.red, fg = palette.crust, gui = "bold" },
				b = { bg = palette.surface0, fg = palette.text },
				c = { bg = nil, fg = palette.subtext1 },
			},
			command = {
				a = { bg = palette.yellow, fg = palette.crust, gui = "bold" },
				b = { bg = palette.surface0, fg = palette.text },
				c = { bg = nil, fg = palette.subtext1 },
			},
			inactive = {
				a = { bg = palette.surface1, fg = palette.overlay0 },
				b = { bg = palette.surface1, fg = palette.overlay0 },
				c = { bg = nil, fg = palette.overlay0 },
			},
		}

		local conditions = {
			buffer_not_empty = function()
				return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
			end,
			hide_in_width = function()
				return vim.fn.winwidth(0) > 80
			end,
			check_git_workspace = function()
				local filepath = vim.fn.expand("%:p:h")
				local gitdir = vim.fn.finddir(".git", filepath .. ";")
				return gitdir and #gitdir > 0 and #gitdir < #filepath
			end,
		}

		local nvim_tree_shift = {
			function()
				len = vim.api.nvim_win_get_width(require("nvim-tree.view").get_winnr()) - 1
				title = "Nvim-Tree"
				left = (len - #title) / 2
				right = len - left - #title

				return string.rep(" ", left) .. title .. string.rep(" ", right)
			end,

			-- function ()
			-- 	return string.rep(' ',
			-- 		vim.api.nvim_win_get_width(require'nvim-tree.view'.get_winnr()) - 1)
			-- end,
			cond = require("nvim-tree.view").is_visible,
			color = "NvimTreeNormal",
		}

		local mode = {
			"mode",
			fmt = function(str)
				return str
			end,
			padding = { left = 1, right = 1 },
		}

		local branch = {
			"b:gitsigns_head",
			icon = " ",
			color = { fg = palette.blue },
		}

		local filename = {
			"filename",
			file_status = true,
			path = 4,
			symbols = { modified = " ", readonly = " " },
		}

		local diagnostics = {
			"diagnostics",
			sources = { "nvim_diagnostic" },
			sections = { "error", "warn", "info", "hint" },
			symbols = { error = " ", warn = " ", info = " ", hint = " " },
			colored = true,
			update_in_insert = true,
			always_visible = false,
			padding = { left = 1, right = 3 },
		}
		local diff = {
			"diff",
			colored = true,
			symbols = { added = " ", modified = " ", removed = " " },
			padding = { left = 2, right = 10 },
		}
		local lsp = {
			-- LSP server name .
			function()
				local msg = "No Active Lsp"
				local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
				local clients = vim.lsp.get_active_clients()
				if next(clients) == nil then
					return msg
				end
				for _, client in ipairs(clients) do
					local filetypes = client.config.filetypes
					if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
						return client.name
					end
				end
				return msg
			end,
			icon = " LSP:",
			symbols = {
				-- Standard unicode symbols to cycle through for LSP progress:
				spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
				-- Standard unicode symbol for when LSP is done:
				done = "✓",
				-- Delimiter inserted between LSP names:
				separator = " ",
			},
			color = { fg = "#ffffff", gui = "bold" },
			padding = { left = 1, right = 1 },
			ignore_lsp = {}, -- List of LSP names to ignore (e.g., `null-ls`):
		}
		local filetype = {
			"filetype",
			color = { fg = palette.text },
			padding = { left = 1, right = 1 },
		}

		local fileformat = {
			"fileformat",
			symbols = {
				unix = " ",
				dos = " ",
				mac = " ",
			},
		}

		local encoding = {
			"encoding",
			color = { fg = palette.text },
		}

		local location = {
			"location",
			color = { fg = palette.crust },
		}

		local config = {
			options = {
				icons_enabled = true,
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				disabled_filetypes = { "alpha" },
				globalstatus = false,
				theme = custom_catppuccin,
			},
			sections = {
				lualine_a = {
					mode,
				},
				lualine_b = {
					branch,
				},
				lualine_c = {
					filename,
				},
				lualine_x = {
					diagnostics,
					diff,
					lsp,
					filetype,
				},
				lualine_y = {
					-- encoding,
					fileformat,
				},
				lualine_z = {
					location,
				},
			},
			inactive_sections = {
				lualine_a = {
					mode,
				},
				lualine_b = {
					branch,
				},
				lualine_c = {
					filename,
				},
				lualine_x = {
					diagnostics,
					diff,
					lsp,
					filetype,
				},
				lualine_y = {
					-- encoding,
					fileformat,
				},
				lualine_z = {
					location,
				},
			},
			tabline = { -- If you want tabline to shift too
				-- lualine_a = { nvim_tree_shift }
			},
			extensions = {
				"fugitive",
				"nvim-tree",
				"lazy",
				"mason",
				"man",
			},
		}

		-- -- Inserts a component in lualine_c at left section
		-- local function ins_left(component)
		-- 	table.insert(config.sections.lualine_c, component)
		-- end
		--
		-- -- Inserts a component in lualine_x at right section
		-- local function ins_right(component)
		-- 	table.insert(config.sections.lualine_x, component)
		-- end

		require("lualine").setup(config)
	end,
}

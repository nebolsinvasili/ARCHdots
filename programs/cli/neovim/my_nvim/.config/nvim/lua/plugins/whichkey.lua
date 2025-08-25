return {
	"folke/which-key.nvim",
	event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
	
  config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "file" }, -- group
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers", mode = "n" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help tags", mode = "n" },
			{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find live grep (Words)", mode = "n" },
			
			{ "<leader>b", group = "buffer" }, -- group
			{ "<leader>bb", "<cmd>Neotree left buffers<cr>", desc = "Buffer Manager", mode = "n" },
			{ "<leader>bn", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer", mode = "n" },
			{ "<leader>bp", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer", mode = "n" },
			{ "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "Close buffer", mode = "n" },
			{ "<leader>bs", "<cmd>BufferLineSortByTabs<cr>", desc = "Sort buffers", mode = "n" },

			{ "<leader>g", group = "git" }, -- group
			{ "<leader>gg", "<cmd>Neotree left git_status<cr>", desc = "Git Manager", mode = "n" },
			{ "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Find Branches", mode = "n" },
			{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Find Commits", mode = "n" },
			{ "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Find Statuses", mode = "n" },

			{ "<leader>l", group = "LSP" }, -- group
			{ "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find document Symbols", mode = "n" },
			{ "<leader>lr", "<cmd>Telescope lsp_references<cr>", desc = "Find References", mode = "n" },
			{ "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", desc = "Find Definitions", mode = "n" },

			{ "<leader>t", group = "terminal" }, -- group
			{ "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal Float", mode = "n" },
			{ "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Terminal Horizontal", mode = "n" },
			{ "<leader>tv", "<cmd>ToggleTerm direction=vertical size=40<cr>", desc = "Terminal Vertical", mode = "n" },

			{ "<leader>u", group = "UI" }, -- group
			{ "<leader>uh", "<cmd>vsplit<cr>", desc = "Horizontal Split", mode = "n" },
			{ "<leader>uv", "<cmd>split<cr>", desc = "Vertical Split", mode = "n" },

		},
		{
			-- Nested mappings are allowed and can be added in any order
			-- Most attributes can be inherited or overridden on any level
			-- There's no limit to the depth of nesting
			mode = { "n", "v" }, -- NORMAL and VISUAL mode
			{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
			{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
			{ "<leader>e", "<cmd>Neotree left focus<cr>", desc = "File Manager" },
		})
  end,
}

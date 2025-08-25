return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    	
    config = function()
      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "󰌵", texthl = "DiagnosticSignHint"})

      require("neo-tree").setup({
				enable_git_status = true,
        enable_diagnostics = true,
				source_selector = {
          winbar = true,
          statusline = false
        },
				window = {
					mappings = {
						["P"] = {
							"toggle_preview",
							config = {
								use_float = false,
								-- use_image_nvim = true,
								-- title = 'Neo-tree Preview',
							},
						},
					}
				},
				filesystem = {
          filtered_items = {
            visible = false, -- when true, they will just be displayed differently than normal items
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_hidden = false,
					},
				},
      })
    end,
}

return {
  'williamboman/mason.nvim',
  build = ':MasonUpdate',

  config = function()
    require('mason').setup {
      ui = {
        ---@since 1.11.0
        -- The backdrop opacity. 0 is fully opaque, 100 is fully transparent.
        backdrop = 100,
	icons = {
	  package_pending = " ",
	  package_installed = " ",
	  package_uninstalled = " ",
	},
      },
      max_concurrent_installers = 10,
    }
  end,
}

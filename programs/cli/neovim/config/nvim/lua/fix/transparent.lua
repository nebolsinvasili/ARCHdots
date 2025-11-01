return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
			-- стандартные группы, делаем прозрачными
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			-- дополнительные группы
			extra_groups = {},
			-- группы, которые не очищаем
			exclude_groups = {},
			-- callback после очистки
			on_clear = function()
				-- например, можно включить прозрачность для плагинов:
				-- vim.cmd("hi NormalFloat guibg=NONE")
			end,
		})
		require("transparent").clear_prefix("NeoTree")
	end,
}

return {
	-- Detect tabstop and shiftwidth automatically
	"NMAC427/guess-indent.nvim",

	-- Autopairs

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},

	-- Show pending keybinds
	{ "folke/which-key.nvim", opts = {} },

	{
		"abecodes/tabout.nvim",
		lazy = false,
		opts = require("config.plugins.tabout"),
		dependencies = { -- These are optional
			"nvim-treesitter/nvim-treesitter",
			"L3MON4D3/LuaSnip",
		},
		event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility
	},
}

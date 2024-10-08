return {

	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = function()
			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			-- vim.cmd.colorscheme("tokyonight-night")

			-- You can configure highlights by doing something like:
			-- vim.cmd.hi 'Comment gui=none'
		end,
		config = function()
			require("tokyonight").setup({
				-- transparent = true,
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		init = function()
			-- vim.cmd.colorscheme("gruvbox")
		end,
	},
	-- -- Lazy
	-- {
	-- 	"olimorris/onedarkpro.nvim",
	-- 	priority = 1000, -- Ensure it loads first
	-- 	init = function()
	-- 		-- vim.cmd.colorscheme("onedark")
	-- 	end,
	-- },
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		init = function()
			-- vim.cmd.colorscheme("kanagawa-dragon")
		end,
		-- Lazy
	},
	{
		"vague2k/vague.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("vague")
			require("vague").setup({
				-- optional configuration here
			})
		end,
	},
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here
		-- config = function()
		--     vim.g.zenbones_darken_comments = 45
		--     vim.cmd.colorscheme('zenbones')
		-- end
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		priority = 1000,
		config = function()
			require("ayu").setup({
				mirage = true,
			})
		end,
		init = function()
			-- vim.cmd.colorscheme("ayu-mirage")
		end,
	},
}

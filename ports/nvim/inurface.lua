-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}
-- UI
M.base_30 = {
	white = "#E8E8E4",
	black = "#151515", -- usually your theme bg --#151729
	darker_black = "#E8E8E4", -- 6% darker than black
	black2 = "#44475A", -- 6% lighter than black
	one_bg = "#44475A", -- 10% lighter than black
	one_bg2 = "#626284", -- 6% lighter than one_bg
	one_bg3 = "#626284", -- 6% lighter than one_bg2
	grey = "#44475A", -- 40% lighter than black (the % here depends so choose the perfect grey!)
	grey_fg = "#626284", -- 10% lighter than grey
	grey_fg2 = "#626284", -- 5% lighter than grey
	light_grey = "#626284",
	red = "#FC284F",
	baby_pink = "#FF54A7",
	pink = "#FF54A7",
	line = "#44475A", -- 15% lighter than black
	green = "#6DD660",
	vibrant_green = "#6DD660",
	nord_blue = "#5866FF",
	blue = "#5866FF",
	seablue = "#5866FF",
	yellow = "#FEC760", -- 8% lighter than yellow
	sun = "#FEC760", --#FAEE55
	purple = "#AD73FF", --#CD53FF
	dark_purple = "#AD73FF", --#FF54A7
	teal = "#22CAFF",
	orange = "#FD7F50",
	cyan = "#22CAFF",
	statusline_bg = "#151515",
	lightbg = "#282A36",
	pmenu_bg = "#282A36",
	folder_bg = "#AD73FF",
}
-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
	base00 = "#151515",
	base01 = "#282A36",
	base02 = "#44475A",
	base03 = "#44475A",
	base04 = "#626284",
	base05 = "#E8E8E4",
	base06 = "#282A36",
	base07 = "#282A36",
	base08 = "#5866FF",
	base09 = "#6DD660",
	base0A = "#AD73FF",
	base0B = "#FC284F",
	base0C = "#FD8F50",
	base0D = "#22CAFF",
	base0E = "#FF54A7",
	base0F = "#FEC760",
}
-- OPTIONAL
-- overriding or adding highlights for this specific theme only
-- defaults/treesitter is the filename i.e integration there,

M.polish_hl = {
	defaults = {
		Comment = {
			fg = "#626284", -- or M.base_30.cyan #FF54A7
			-- italic = true,
		},
	},

	treesitter = {
		["@variable"] = { fg = "#FEC760" },
		["@constant"] = { fg = "#6DD660" },
		["@lsp.type.const.rust"] = { fg = "#6DD660" },
		["@punctuation.bracket"] = { fg = "#E8E8E4" },
		["@punctuation.delimiter"] = { fg = "#E8E8E4" },
	},
}

M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "inurface")

return M

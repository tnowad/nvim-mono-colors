local config = require("mono-colors.config")

local colors = {
	white = "#ffffff",
	black = "#1e1e1e",
}

if vim.o.background == "light" then
	-- background colors
	colors.bg = config.transparent and "NONE" or "#bababa"
	colors.bgDark = "#080808"
	colors.bgDarker = "#121212"
	colors.bgFloat = "#212121"
	colors.bgOption = "#121212"
	-- foreground colors
	colors.fg = "#bababa"
	colors.fgAlt = "#fafafa"
	colors.fgCommand = "#dedede"
	colors.fgInactive = "#333333"
	colors.fgDisabled = "#787878"
	colors.fgLineNr = "#616161"
	colors.fgSelection = "#e8e8e8"
	colors.fgSelectionInactive = "#f5f5f5"
	-- border colors
	colors.border = "#121212"
	colors.borderFocus = "#303030"
	colors.borderDarker = "#1f1f1f"
	-- ui colors
	colors.blue = "#a3a3a3"
	colors.red = "#999999"
	colors.purple = "#9c9c9c"
	colors.redDark = "#4c4c4c"
	colors.orange = "#9c9c9c"
	colors.blueLight = "#a3a3a3"
	colors.comment = "#616161"
	colors.orangeLight = "#b5b5b5"
	colors.green = "#4c4c4c"
	colors.yellowDark = "#919191"
	colors.purpleDark = "#1c1c1c"
	colors.symbol = "#b2b2b2"
	colors.primary = "#ffffff"
	colors.terminalBrightBlack = "#4a4a4a"
else
	-- background colors
	colors.bg = config.transparent and "NONE" or "#212121"
	colors.bgDark = "#000000"
	colors.bgDarker = "#121212"
	colors.bgFloat = "#212121"
	colors.bgOption = "#121212"
	-- foreground colors
	colors.fg = "#bababa"
	colors.fgAlt = "#fafafa"
	colors.fgCommand = "#dedede"
	colors.fgInactive = "#333333"
	colors.fgDisabled = "#787878"
	colors.fgLineNr = "#616161"
	colors.fgSelection = "#e8e8e8"
	colors.fgSelectionInactive = "#f5f5f5"
	-- border colors
	colors.border = "#121212"
	colors.borderFocus = "#303030"
	colors.borderDarker = "#1f1f1f"
	-- ui colors
	colors.red = "#999999"
	colors.blue = "#a3a3a3"
	colors.orange = "#9c9c9c"
	colors.purple = "#9c9c9c"
	colors.blueLight = "#a3a3a3"
	colors.orangeLight = "#b5b5b5"
	colors.yellowDark = "#919191"
	colors.green = "#4c4c4c"
	colors.redDark = "#4c4c4c"
	colors.purpleDark = "#1c1c1c"
	colors.comment = "#616161"
	colors.symbol = "#b2b2b2"
	colors.primary = "#ffffff"
	colors.terminalBrightBlack = "#4a4a4a"
end

return colors

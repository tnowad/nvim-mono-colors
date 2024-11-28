local config = require("mono-colors.config")

local colors = {
	white = "#ffffff",
	black = "#1e1e1e",
}

if vim.o.background == "light" then
	-- background colors
	colors.bg = config.transparent and "NONE" or "#ffffff"
	colors.bgDark = "#dddddd"
	colors.bgDarker = "#f6f6f6"
	colors.bgFloat = "#E0E0E0"
	colors.bgOption = "#EDEDED"
	-- foreground colors
	colors.fg = "#616161"
	colors.fgAlt = "#212121"
	colors.fgCommand = "#333333"
	colors.fgInactive = "#9E9E9E"
	colors.fgDisabled = "#D0D0D0"
	colors.fgLineNr = "#a1a1a1"
	colors.fgSelection = "#424242"
	colors.fgSelectionInactive = "#757575"
	-- border colors
	colors.border = "#c2c3c5"
	colors.borderFocus = "#AAAAAA"
	colors.borderDarker = "#999999"
	-- ui colors
	colors.blue = "#adadad"
	colors.red = "#a2a2a2"
	colors.purple = "#a6a6a6"
	colors.redDark = "#5f5f5f"
	colors.orange = "#a5a5a5"
	colors.blueLight = "#adadad"
	colors.comment = "#717171"
	colors.orangeLight = "#bdbdbd"
	colors.green = "#5f5f5f"
	colors.yellowDark = "#9b9b9b"
	colors.purpleDark = "#343434"
	colors.symbol = "#bbbbbb"
	colors.primary = "#ffffff"
	colors.terminalbrightblack = "#5c5c5c"
else
	-- background colors
	colors.bg = config.transparent and "NONE" or "#212121"
	colors.bgDark = "#191919"
	colors.bgDarker = "#292929"
	colors.bgFloat = "#383838"
	colors.bgOption = "#282828"
	-- foreground colors
	colors.fg = "#c1c1c1"
	colors.fgAlt = "#fafafa"
	colors.fgCommand = "#e0e0e0"
	colors.fgInactive = "#484848"
	colors.fgDisabled = "#848484"
	colors.fgLineNr = "#717171"
	colors.fgSelection = "#eaeaea"
	colors.fgSelectionInactive = "#f5f5f5"
	-- border colors
	colors.border = "#2a2a2a"
	colors.borderFocus = "#444444"
	colors.borderDarker = "#353535"
	-- ui colors
	colors.red = "#a2a2a2"
	colors.blue = "#adadad"
	colors.orange = "#a5a5a5"
	colors.purple = "#a6a6a6"
	colors.blueLight = "#adadad"
	colors.orangeLight = "#bdbdbd"
	colors.yellowDark = "#9b9b9b"
	colors.green = "#5f5f5f"
	colors.redDark = "#5f5f5f"
	colors.purpleDark = "#343434"
	colors.comment = "#717171"
	colors.symbol = "#bbbbbb"
	colors.primary = "#ffffff"
	colors.terminalBrightBlack = "#5c5c5c"
end

return colors

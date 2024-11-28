local colors = require("mono-colors.colors")

local M = {}

function M.highlights()
	return {
		CmpItemAbbr = { fg = colors.text_primary },
		CmpItemAbbrDeprecated = { fg = colors.text_primary, strikethrough = true },
		CmpItemKind = { fg = colors.text_primary },
		CmpItemMenu = { fg = colors.text_primary },
		CmpItemAbbrMatch = { fg = colors.text_primary, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.text_primary, bold = true },

		-- kind support
		CmpItemKindSnippet = { fg = colors.text_primary },
		CmpItemKindKeyword = { fg = colors.text_primary },
		CmpItemKindText = { fg = colors.text_primary },
		CmpItemKindMethod = { fg = colors.text_primary },
		CmpItemKindConstructor = { fg = colors.text_primary },
		CmpItemKindFunction = { fg = colors.text_primary },
		CmpItemKindFolder = { fg = colors.text_primary },
		CmpItemKindModule = { fg = colors.text_primary },
		CmpItemKindConstant = { fg = colors.text_primary },
		CmpItemKindField = { fg = colors.text_primary },
		CmpItemKindProperty = { fg = colors.text_primary },
		CmpItemKindEnum = { fg = colors.text_primary },
		CmpItemKindUnit = { fg = colors.text_primary },
		CmpItemKindClass = { fg = colors.text_primary },
		CmpItemKindVariable = { fg = colors.text_primary },
		CmpItemKindFile = { fg = colors.text_primaryLight },
		CmpItemKindInterface = { fg = colors.text_primary },
		CmpItemKindColor = { fg = colors.text_primary },
		CmpItemKindReference = { fg = colors.text_primary },
		CmpItemKindEnumMember = { fg = colors.text_primary },
		CmpItemKindStruct = { fg = colors.text_primary },
		CmpItemKindValue = { fg = colors.text_primary },
		CmpItemKindEvent = { fg = colors.text_primary },
		CmpItemKindOperator = { fg = colors.text_primary },
		CmpItemKindTypeParameter = { fg = colors.text_primary },
		CmpItemKindCopilot = { fg = colors.text_primaryLight },
	}
end

return M

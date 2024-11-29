local colors = require("mono-colors.colors")
local config = require("mono-colors.config")
local utils = require("mono-colors.utils")
local cmp = require("mono-colors.integrations.cmp")
local theme = {}

local function set_groups()
	local groups = {
		-- base
		Normal = { fg = colors.text_primary, bg = colors.background_primary },
		LineNr = { fg = colors.text_secondary },
		ColorColumn = { bg = utils.shade(colors.ui_container_primary, 0.5, colors.background_primary) },
		Conceal = {},
		Cursor = { fg = colors.background_primary, bg = colors.text_primary },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = colors.background_secondary },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = colors.messages_info },
		DiffAdd = { bg = colors.background_primary, fg = colors.messages_success },
		DiffChange = { bg = colors.background_primary, fg = colors.messages_warning },
		DiffDelete = { bg = colors.background_primary, fg = colors.messages_error },
		DiffText = { bg = colors.background_primary, fg = colors.messages_info },
		EndOfBuffer = { fg = colors.ui_container_secondary },
		TermCursor = { link = "Cursor" },
		TermCursorNC = { link = "Cursor" },
		ErrorMsg = { fg = colors.messages_error, bold = true, italic = true },
		VertSplit = { fg = colors.ui_border, bg = colors.background_primary },
		Winseparator = { link = "VertSplit" },
		SignColumn = { link = "Normal" },
		Folded = { fg = colors.text_primary, bg = colors.background_secondary },
		FoldColumn = { link = "SignColumn" },
		IncSearch = {
			bg = utils.mix(colors.messages_warning, colors.background_primary, 0.30),
			fg = colors.background_primary,
		},
		Substitute = { link = "IncSearch" },
		CursorLineNr = { fg = colors.text_highlight },
		MatchParen = { fg = colors.messages_error, bg = colors.background_primary },
		ModeMsg = { link = "Normal" },
		MsgArea = { link = "Normal" },
		-- MsgSeparator = {},
		MoreMsg = { fg = colors.messages_info },
		NonText = { fg = utils.shade(colors.background_primary, 0.30) },
		NormalFloat = { bg = colors.background_secondary },
		NormalNC = { link = "Normal" },
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { bg = colors.ui_container_secondary },
		PmenuSbar = { bg = utils.shade(colors.messages_info, 0.5, colors.background_primary) },
		PmenuThumb = { bg = utils.shade(colors.background_primary, 0.20) },
		Question = { fg = colors.messages_info },
		QuickFixLine = { fg = colors.messages_info },
		SpecialKey = { fg = colors.ui_separator },
		StatusLine = { fg = colors.text_primary, bg = colors.background_primary },
		StatusLineNC = { fg = colors.text_secondary, bg = colors.background_secondary },
		TabLine = { bg = colors.background_secondary, fg = colors.text_secondary },
		TabLineFill = { link = "TabLine" },
		TabLineSel = { bg = colors.background_primary, fg = colors.text_secondary },
		Search = { bg = utils.shade(colors.messages_warning, 0.40, colors.background_primary) },
		SpellBad = { undercurl = true, sp = colors.messages_error },
		SpellCap = { undercurl = true, sp = colors.messages_info },
		SpellLocal = { undercurl = true, sp = colors.ui_container_secondary },
		SpellRare = { undercurl = true, sp = colors.messages_warning },
		Title = { fg = colors.messages_info },
		Visual = { bg = utils.shade(colors.messages_info, 0.40, colors.background_primary) },
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = colors.messages_warning },
		Whitespace = { fg = colors.ui_separator },
		WildMenu = { bg = colors.ui_container_secondary },
		Comment = { fg = colors.ui_separator, italic = config.italics.comments or false },

		Constant = { fg = colors.messages_error },
		String = { fg = colors.messages_warning, italic = config.italics.strings or false },
		Character = { fg = colors.messages_warning },
		Number = { fg = colors.text_highlight, bold = true },
		Boolean = { fg = colors.messages_info },
		Float = { link = "Number" },

		Identifier = { fg = colors.text_primary },
		Function = { fg = colors.text_primary },
		Method = { fg = colors.ui_container_secondary },
		Property = { fg = colors.messages_info },
		Field = { link = "Property" },
		-- Repeat = {},
		Parameter = { fg = colors.text_primary },
		Statement = { fg = colors.messages_error },
		Conditional = { fg = colors.messages_error },
		Label = { fg = colors.messages_info },
		Operator = { fg = colors.messages_error },
		Keyword = { link = "Statement", italic = config.italics.keywords or false },
		Exception = { fg = colors.messages_error },

		PreProc = { link = "Keyword" },
		-- Include = {},
		Define = { fg = colors.ui_container_secondary },
		Macro = { link = "Define" },
		PreCondit = { fg = colors.messages_error },

		Type = { fg = colors.text_primary },
		Struct = { link = "Type" },
		Class = { link = "Type" },

		Attribute = { link = "Character" },
		Punctuation = { fg = colors.ui_separator },
		Special = { fg = colors.ui_separator },

		-- SpecialComment = {},
		SpecialChar = { fg = colors.messages_error },
		Tag = { fg = colors.messages_warning },
		Delimiter = { fg = colors.ui_separator },
		Debug = { fg = colors.ui_container_secondary },

		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Ignore = { fg = colors.background_primary },
		Error = { link = "ErrorMsg" },
		-- LspReferenceText = {},
		-- LspReferenceRead = {},
		-- LspReferenceWrite = {},
		-- LspCodeLens = {},
		-- LspCodeLensSeparator = {},
		-- LspSignatureActiveParameter = {},
		Todo = { fg = colors.messages_warning, bold = true },

		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = colors.messages_info },
		DiagnosticHint = { fg = colors.messages_warning },
		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticUnderlineError = { undercurl = true, link = "DiagnosticError" },
		DiagnosticUnderlineWarn = { undercurl = true, link = "DiagnosticWarn" },
		DiagnosticUnderlineInfo = { undercurl = true, link = "DiagnosticInfo" },
		DiagnosticUnderlineHint = { undercurl = true, link = "DiagnosticHint" },
		-- DiagnosticFloatingError = {},
		-- DiagnosticFloatingWarn = {},
		-- DiagnosticFloatingInfo = {},
		-- DiagnosticFloatingHint = {},
		-- DiagnosticSignError = {},
		-- DiagnosticSignWarn = {},
		-- DiagnosticSignInfo = {},
		-- DiagnosticSignHint = {},

		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		["@text"] = { fg = colors.text_primary },
		["@texcolors.literal"] = { link = "Property" },
		-- ["@texcolors.reference"] = {},
		["@texcolors.strong"] = { link = "Bold" },
		["@texcolors.italic"] = { link = "Italic" },
		["@texcolors.title"] = { link = "Keyword" },
		["@texcolors.uri"] = { fg = colors.messages_info, sp = colors.messages_info, underline = true },
		["@texcolors.underline"] = { link = "Underlined" },
		["@symbol"] = { fg = colors.symbol },
		["@texcolors.todo"] = { link = "Todo" },
		["@comment"] = { link = "Comment" },
		["@punctuation"] = { link = "Punctuation" },
		["@punctuation.bracket"] = { fg = colors.text_secondary },
		["@punctuation.delimiter"] = { link = "Delimiter" },
		["@punctuation.separator.keyvalue"] = { fg = colors.text_secondary },

		["@texcolors.diff.add"] = { fg = colors.text_secondary },
		["@texcolors.diff.delete"] = { fg = colors.text_secondary },

		["@constant"] = { link = "Constant" },
		["@constancolors.builtin"] = { link = "Keyword" },
		-- ["@constancolors.macro"] = {},
		-- ["@define"] = {},
		-- ["@macro"] = {},
		["@string"] = { link = "String" },
		["@string.escape"] = { fg = utils.shade(colors.text_secondary, 0.45) },
		["@string.special"] = { fg = utils.shade(colors.text_secondary, 0.45) },
		-- ["@character"] = {},
		-- ["@character.special"] = {},
		["@number"] = { link = "Number" },
		["@boolean"] = { link = "Boolean" },
		-- ["@float"] = {},
		["@function"] = { link = "Function", italic = config.italics.functions or false },
		["@function.call"] = { link = "Function" },
		["@function.builtin"] = { link = "Function" },
		-- ["@function.macro"] = {},
		["@parameter"] = { link = "Parameter" },
		["@method"] = { link = "Function" },
		["@field"] = { link = "Property" },
		["@property"] = { link = "Property" },
		["@constructor"] = { fg = colors.text_secondary },
		-- ["@conditional"] = {},
		-- ["@repeat"] = {},
		["@label"] = { link = "Label" },
		["@operator"] = { link = "Operator" },
		["@exception"] = { link = "Exception" },
		["@variable"] = { fg = colors.text_primary, italic = config.italics.variables or false },
		["@variable.builtin"] = { fg = colors.text_primary, italic = config.italics.variables or false },
		["@type"] = { link = "Type" },
		["@type.definition"] = { fg = colors.text_primary },
		["@type.builtin"] = { fg = colors.text_secondary },
		["@type.qualifier"] = { fg = colors.text_secondary },
		["@keyword"] = { link = "Keyword" },
		-- ["@storageclass"] = {},
		-- ["@structure"] = {},
		["@namespace"] = { link = "Type" },
		["@annotation"] = { link = "Label" },
		-- ["@include"] = {},
		-- ["@preproc"] = {},
		["@debug"] = { fg = colors.text_secondary },
		["@tag"] = { link = "Tag" },
		["@tag.delimiter"] = { fg = colors.text_secondary },
		["@tag.attribute"] = { fg = colors.text_secondary },
		["@attribute"] = { link = "Attribute" },
		["@error"] = { link = "Error" },
		["@warning"] = { link = "WarningMsg" },
		["@info"] = { fg = colors.text_primary },

		-- Specific languages
		-- overrides
		["@label.json"] = { fg = colors.text_primary }, -- For json
		["@label.help"] = { link = "@texcolors.uri" }, -- For help files
		["@texcolors.uri.html"] = { underline = true }, -- For html

		-- semantic highlighting
		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@text" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.macro"] = { link = "@label" },
		["@lsp.type.decorator"] = { link = "@label" },
		["@lsp.typemod.function.declaration"] = { link = "@function" },
		["@lsp.typemod.function.readonly"] = { link = "@function" },
	}

	-- integrations
	groups = vim.tbl_extend("force", groups, cmp.highlights())

	-- overrides
	groups =
		vim.tbl_extend("force", groups, type(config.overrides) == "function" and config.overrides() or config.overrides)

	for group, parameters in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

function theme.setup(values)
	setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) })
end

function theme.colorscheme()
	if vim.version().minor < 8 then
		vim.notify("Neovim 0.8+ is required for mono-colors colorscheme", vim.log.levels.ERROR, { title = "Min Theme" })
		return
	end

	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = "mono-colors"

	set_groups()
end

return theme

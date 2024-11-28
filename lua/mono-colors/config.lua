local config = {
	defaults = {
		italics = {
			comments = true,
			keywords = true,
			functions = true,
			strings = true,
			variables = true,
			bufferline = false,
		},
		overrides = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config

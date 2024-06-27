local Config = require("config")

return Config:init()
	:append(require("config.appearance"))
	:append(require("config.fonts"))
	:append(require("colors.custom"))
	:append(require("config.general")).options

-- Set the package.path for plugins configuration
package.path = vim.fn.stdpath("config") .. "/lua/plugins/configs/?.lua;" .. package.path
package.path = vim.fn.stdpath("config") .. "/lua/plugins/configs/?/init.lua;" .. package.path

-- Set basic VIM configs
require("core.options")

-- Bootstrap Lazy.nvim
require("core.lazy")

-- Initialize plugins
require("plugins")

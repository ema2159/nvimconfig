return function()
	require("lualine").setup({
		sections = {
			lualine_x = { "encoding", "filesize", "fileformat", "filetype" },
		},
	})
end

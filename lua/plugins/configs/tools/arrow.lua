return function()
  local arrow = require("arrow")

  arrow.setup({
    show_icons = true,
    leader_key = ";", -- Recommended to be a single key
    global_bookmarks = true, -- if true, arrow will save files globally (ignores separate_by_branch)
  })
end

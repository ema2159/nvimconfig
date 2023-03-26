return function()
  require("illuminate").configure({
    filetypes_denylist = {
      "NeogitStatus",
      "dashboard",
    },
  })
end

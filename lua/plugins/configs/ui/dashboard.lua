local function browse_files()
  local extensions = require("telescope").extensions
  return extensions.file_browser.file_browser
end

local function recent_files()
  local builtin = require("telescope.builtin")
  return builtin.oldfiles
end

local function themes()
  local builtin = require("telescope.builtin")
  return builtin.colorscheme
end

return function()
  require("dashboard").setup({
    theme = "doom",
    config = {
      header = {
        [[          ____          ]],
        [[         /.../\         ]],
        [[        /.../--\        ]],
        [[       /.../----\       ]],
        [[      /.../------\      ]],
        [[     /.../---/\---\     ]],
        [[    /.../---/\\\---\    ]],
        [[   /.../---/\\\\\---\   ]],
        [[  /.../===/__\\\\\---\  ]],
        [[ /............\\\\\---\ ]],
        [[/..............\\\\\---\]],
        [[\\\\\\\\\\\\\\\\\\\\\--/]],
        [[ \\\\\\\\\\\\\\\\\\\\\/ ]],
        [[                        ]],
        [[  Not Emmacs anymore :( ]],
        [[                        ]],
      },
      center = {
        {
          icon = "  ",
          icon_hl = "Title",
          desc = "Recent Files",
          desc_hl = "String",
          key = "r",
          keymap = "SPC f r",
          key_hl = "Number",
          action = recent_files(),
        },
        {
          icon = "  ",
          icon_hl = "Title",
          desc = "File Browser",
          desc_hl = "String",
          key = "b",
          keymap = "SPC f b",
          key_hl = "Number",
          action = browse_files(),
        },
        {
          icon = "  ",
          icon_hl = "Title",
          desc = "Themes",
          desc_hl = "String",
          key = "t",
          keymap = "SPC o t",
          key_hl = "Number",
          action = themes(),
        },
      },
    },
  })
end

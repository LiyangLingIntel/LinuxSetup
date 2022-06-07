-- themes
-- onehalfdark
--vim.cmd('colorscheme onehalfdark')
--vim.cmd('colorscheme onehalflight')
-- space-vim-dark
--vim.cmd('colorscheme space-vim-dark')
-- aylin
--vim.cmd('colorscheme aylin')
-- tokyo night
-- Example config in Lua
-- vim.g.tokyonight_style = "storm" -- storm, night, day
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#cb5550" }
--vim.cmd('colorscheme tokyonight')

local M = {}
function M.config()
    -- theme config

    -- onedark
    require("onedark").load()

    -- github theme
    --require("github-theme").setup({
    --  theme_style = "dark",
    --  function_style = "italic",
    --  sidebars = {"qf", "vista_kind", "terminal", "packer"},
    --  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    --  --colors = {hint = "orange", error = "#ff0000"},
    --  -- Overwrite the highlight groups
    --  overrides = function(c)
    --    return {
    --      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
    --      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
    --      -- this will remove the highlight groups
    --      TSField = {},
    --    }
    --  end
    --})
end
return M

local M = {}
function M.config()
    -- nvim-treesitter config
    require("nvim-treesitter.configs").setup {
        -- ensure_installed = "maintained", -- for installing all maintained parsers
        ensure_installed = { "bash", "c", "cpp", "cuda", "comment", "html", "json", "lua", "python", "vim", "vue" }, -- for installing specific parsers
        sync_install = true, -- install synchronously
        ignore_install = { }, -- parsers to not install
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true, -- enable standard vim highlighting
        },
        rainbow = {
          enable = true,
          -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
          -- colors = {}, -- table of hex strings
          -- termcolors = {} -- table of colour name strings
        }
    }
end
return M

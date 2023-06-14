local M = {}
function M.config()
  -- nvim-treesitter config
  require("nvim-treesitter.configs").setup {
    -- ensure_installed = "maintained", -- for installing all maintained parsers
    ensure_installed = { "bash", "c", "cpp", "cuda", "comment", "html", "json", "lua", "python", "vim", "vue" }, -- for installing specific parsers
    sync_install = true, -- install synchronously
    ignore_install = {}, -- parsers to not install
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false, -- enable standard vim highlighting
    },
    rainbow = {
      enable = true,
      -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
      -- Which query to use for finding delimiters
      query = 'rainbow-parens',
      -- Highlight the entire buffer all at once
      strategy = require('ts-rainbow').strategy.global,
    }
  }
end

return M

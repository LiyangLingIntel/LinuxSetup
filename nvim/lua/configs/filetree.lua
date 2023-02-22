local M = {}
function M.config()
  -- nvim-tree config
  require 'nvim-tree'.setup {
    disable_netrw        = true,
    hijack_netrw         = true,
    ignore_ft_on_setup   = {},
    auto_reload_on_write = true,
    open_on_tab          = false,
    hijack_cursor        = false,
    update_cwd           = false,
    diagnostics          = {
      enable = false,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
    update_focused_file  = {
      enable      = true,
      update_cwd  = true,
      ignore_list = {}
    },
    system_open          = {
      cmd  = nil,
      args = {}
    },
    filters              = {
      dotfiles = true,
      custom = {}
    },
    git                  = {
      enable = true,
      ignore = true,
      timeout = 500,
    },
    view                 = {
      width = 50,
      hide_root_folder = false,
      side = 'left',
      mappings = {
        custom_only = false,
        list = {}
      },
      number = false,
      relativenumber = false,
      signcolumn = "yes"
    },
    trash                = {
      cmd = "trash",
      require_confirm = true
    },
    actions              = {
      change_dir = {
        global = false,
      },
      open_file = {
        quit_on_open = false,
      }
    }
  }
  vim.cmd([[
    let g:nvim_tree_icons = {
        \ 'default': '',
        \ 'symlink': '',
        \ 'git': {
        \   'unstaged': "✗",
        \   'staged': "✓",
        \   'unmerged': "",
        \   'renamed': "➜",
        \   'untracked': "★",
        \   'deleted': "",
        \   'ignored': "◌"
        \   },
        \ 'folder': {
        \   'arrow_open': "",
        \   'arrow_closed': "",
        \   'default': "",
        \   'open': "",
        \   'empty': "",
        \   'empty_open': "",
        \   'symlink': "",
        \   'symlink_open': "",
        \   }
        \ }
    ]])
end

function M.open_nvim_tree(data)

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- open the tree
  require("nvim-tree.api").tree.open()
end

return M

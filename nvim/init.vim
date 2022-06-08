lua require('core.init')

set guifont=SFMono\ NERD\ Font:h16
set clipboard^=unnamed,unnamedplus

if has('unix')
    set dictionary+=/usr/share/dict/words
else
    set dictionary+=~/AppData/Local/nvim/words
endif

if exists('g:vscode')
  " lua require("theme.github_light").config()
  " use default theme for vscode mode
else
  lua require("theme.onedark").config()
endif


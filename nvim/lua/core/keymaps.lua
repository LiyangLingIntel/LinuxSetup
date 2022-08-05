vim.g.mapleader = ";"

-- keymaps
-- f: file tree
vim.keymap.set("n", '<leader>ft', 'NvimTreeToggle')
vim.keymap.set("n", '<leader>ff', 'NvimTreeFocus')
-- y: telescope
vim.keymap.set("n", '<leader>yo', "Telescope find_files")
vim.keymap.set("n", '<leader>yg', "Telescope live_grep")
vim.keymap.set("n", '<leader>yb', "Telescope buffers")
-- c: quick command
vim.keymap.set('n', '<leader>ce', ':e<space>')
--vim.keymap.set("n", '<leader>cw', 'w')
--vim.keymap.set("n", '<leader>cW', 'wa')
--vim.keymap.set("n", '<leader>cE', 'e!')
--vim.keymap.set("n", '<leader>cq', 'q')
--vim.keymap.set("n", '<leader>cQ', 'q!')
--vim.keymap.set("n", '<leader>cx', 'x')

-- w: window
vim.keymap.set('n', '<leader>wh', '<c-w>h')
vim.keymap.set('n', '<leader>wj', '<c-w>j')
vim.keymap.set('n', '<leader>wk', '<c-w>k')
vim.keymap.set('n', '<leader>wl', '<c-w>l')
vim.keymap.set('n', '<leader>w1', '<c-w>o')
vim.keymap.set("n", '<leader>wx', 'x')
vim.keymap.set("n", '<leader>w2', 'sp')
vim.keymap.set("n", '<leader>w3', 'vs')

-- window resize
vim.keymap.set('n', '<m-9>', '<c-w><')
vim.keymap.set('n', '<m-0>', '<c-w>>')
vim.keymap.set('n', '<m-->', '<c-w>-')
vim.keymap.set('n', '<m-=>', '<c-w>+')
vim.keymap.set('n', '<m-r>', 'resize<space>')
vim.keymap.set('n', '<m-t>', 'vertical resize<space>')

-- b: buffer
vim.keymap.set("n", '<leader>bn', 'bn')
vim.keymap.set("n", '<leader>bp', 'bp')
vim.keymap.set("n", '<leader>bd', 'Bdelete')

-- p: plugins
vim.keymap.set("n", '<leader>pi', 'PackerInstall')
vim.keymap.set("n", '<leader>pc', 'PackerClean')

-- l/g/w: language
-- l: general
-- g: goto
-- w: workspace
-- c: lsp saga
vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist)
vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.formatting)
vim.keymap.set('n', '<leader>lb', ':SymbolsOutline<cr>')
vim.keymap.set('n', '<f4>', ':SymbolsOutline<cr>')

vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition)
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>gp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>gn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references)

vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end)

vim.keymap.set("n", "<leader>ca", ':Lspsaga code_action<cr>')
vim.keymap.set("n", "<F12>", ':Lspsaga code_action<cr>')
vim.keymap.set("n", "<leader>cf", ':Lspsaga lsp_finder<cr>')
vim.keymap.set("n", "<leader>cr", ':Lspsaga rename<cr>')
vim.keymap.set("n", "<leader>cp", ':Lspsaga preview_definition<cr>')
vim.keymap.set("n", "<leader>el", ':Lspsaga show_line_diagnostics<cr>')
vim.keymap.set("n", "<leader>ew", ':Lspsaga show_cursor_diagnostics<cr>')
vim.keymap.set("n", "<leader>en", ':Lspsaga diagnostic_jump_next<cr>')
vim.keymap.set("n", "<leader>ep", ':Lspsaga diagnostic_jump_prev<cr>')

-- t: terminal
vim.keymap.set("n", '<leader>tt', 'FloatermToggle')
vim.keymap.set("n", '<leader>tn', 'FloatermNew')

-- b: git blamer
vim.keymap.set("n", '<leader>gb', 'BlamerToggle')

-- e: esymotion
vim.keymap.set('n', '<leader>e', '<Plug>(easymotion-s2)')

-- clang-format
vim.keymap.set("n", '<C-K>', ':pyf ~/devenvs/LinuxSetup/vim/.vim/tools/clang-format.py')
vim.keymap.set("i", '<C-K><c-o>', ':pyf ~/devenvs/LinuxSetup/vim/.vim/tools/clang-format.py')
vim.keymap.set("n", '<C-F><C-K>', 'ggvG :pyf ~/devenvs/LinuxSetup/vim/.vim/tools/clang-format.py')

-- h: git
vim.keymap.set('n', '<leader>hu', ':Gitsigns undo_stage_hunk<cr>')
vim.keymap.set('n', '<leader>hn', ':Gitsigns next_hunk<cr>')
vim.keymap.set('n', '<leader>hc', ':Gitsigns preview_hunk<cr>')
vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<cr>')
vim.keymap.set('n', '<leader>hR', ':Gitsigns reset_buffer')
vim.keymap.set('n', '<leader>hb', ':Gitsigns blame_line<cr>')
vim.keymap.set('n', '<leader>hd', ':Gitsigns diffthis<cr>')
vim.keymap.set('n', '<leader>hs', ':<C-U>Gitsigns select_hunk<CR>')

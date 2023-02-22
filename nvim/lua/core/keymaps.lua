vim.g.mapleader = ";"

-- keymaps
-- f: file tree
vim.keymap.set('n', '<F3>', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>ft', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>ff', ':NvimTreeFocus<cr>')
-- y: telescope
vim.keymap.set("n", '<leader>yo', ":Telescope find_files<cr>")
vim.keymap.set("n", '<leader>yg', ":Telescope live_grep<cr>")
vim.keymap.set("n", '<leader>yb', ":Telescope buffers<cr>")

-- w: window
vim.keymap.set('n', '<leader>wh', '<c-w>h')
vim.keymap.set('n', '<leader>wj', '<c-w>j')
vim.keymap.set('n', '<leader>wk', '<c-w>k')
vim.keymap.set('n', '<leader>wl', '<c-w>l')
vim.keymap.set('n', '<leader>w1', '<c-w>o')
vim.keymap.set('n', '<leader>wx', ':x<cr>')
vim.keymap.set('n', '<leader>w2', ':sp<cr>')
vim.keymap.set('n', '<leader>w3', ':vs<cr>')

-- window resize
vim.keymap.set('n', '<m-9>', '<c-w><')
vim.keymap.set('n', '<m-0>', '<c-w>>')
vim.keymap.set('n', '<m-->', '<c-w>-')
vim.keymap.set('n', '<m-=>', '<c-w>+')

-- b: buffer
vim.keymap.set('n', '<leader>bn', ':bn<cr>')
vim.keymap.set('n', '<leader>bp', ':bp<cr>')
vim.keymap.set('n', '<leader>bd', ':Bdelete<cr>')

-- p: plugins
vim.keymap.set('n', '<leader>pi', ':PackerInstall<cr>')
vim.keymap.set('n', '<leader>pc', ':PackerClean<cr>')

-- s: search
vim.keymap.set('n', '<leader>ss', '/')
vim.keymap.set('n', '<leader>sw', '/\\<lt>\\><left><left>')

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
vim.keymap.set('n', '<leader>tt', ':FloatermToggle<cr>')
vim.keymap.set('n', '<leader>tn', ':FloatermNew<cr>')

-- b: git blamer
vim.keymap.set("n", '<leader>gb', ':BlamerToggle<cr>')

-- e: esymotion
vim.keymap.set('n', '<leader>e', '<Plug>(easymotion-s2)')

-- clang-format
vim.keymap.set("n", '<C-K>', ':pyf ~/devenvs/LinuxSetup/vim/.vim/tools/clang-format.py<cr>')
vim.keymap.set("v", '<C-K>', ":'<,'> :pyf ~/devenvs/LinuxSetup/vim/.vim/tools/clang-format.py<cr>")
vim.keymap.set("i", '<C-K><c-o>', ':pyf ~/devenvs/LinuxSetup/vim/.vim/tools/clang-format.py<cr>')
vim.keymap.set("n", '<C-F><C-K>', 'ggvG :pyf ~/devenvs/LinuxSetup/vim/.vim/tools/clang-format.py<cr>')
vim.keymap.set("n", '<leader>fp', ':Autopep8<cr>')
vim.keymap.set("v", '<leader>fp', ':Autopep8<cr>')

-- h: git
vim.keymap.set('n', '<leader>hu', ':Gitsigns undo_stage_hunk<cr>')
vim.keymap.set('n', '<leader>hn', ':Gitsigns next_hunk<cr>')
vim.keymap.set('n', '<leader>hc', ':Gitsigns preview_hunk<cr>')
vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<cr>')
vim.keymap.set('n', '<leader>hR', ':Gitsigns reset_buffer')
vim.keymap.set('n', '<leader>hb', ':Gitsigns blame_line<cr>')
vim.keymap.set('n', '<leader>tb', ':Gitsigns toggle_current_line_blame')
vim.keymap.set('n', '<leader>hd', ':Gitsigns diffthis<cr>')
vim.keymap.set('n', '<leader>hs', ':<C-U>Gitsigns select_hunk<CR>')
vim.keymap.set('n', '<leader>td', ':Gitsigns toggle_deleted')

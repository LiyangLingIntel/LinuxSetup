# NeoVim config

This config is a folk of [leslie255/nvim-config](https://github.com/leslie255/nvim-config) with some self defined configuration.

## Setup
0. Use the latest version of NVIM(0.7.0+)

1. This setup uses packer.nvim for the package manager, so first install packer.nvim by following the [official instructions](https://github.com/wbthomason/packer.nvim#quickstart)
```shell
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Clone or link this folder to `~/.config/nvim`:
```shell
$ ln -s /path/to/LinuxSetup/nvim ~/.config/nvim
```

3. When you first enter `nvim`, you will see a bunch of mess because the plugins aren't installed yet, so run `:PackerInstall` to install the plugins<br>
> Note that there is a chance that the download would timeout and `packer.nvim` would report install failed, in this case run `:PackerInstall` again

4. This setup uses the modern LSP system for langauge support, things like auto-complete, symbols tree, etc..., **which requires a LSP server outside the editor**. Fortunately [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) manages to configure most of the LSP server options for us, all we need to do is to install the LSP servers themselves:<br>
In `lua/configs/autocomplete.lua`, line `51`, edit the list of LSP servers, a complete list of supported LSP servers is listed [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md). After that install the corresponding servers on your OS, auto-complete should pop up for supported languages now :)

5. Final step, smart highlighting using treesitter!<br>
The default vim regex-based highlighting is pretty lame, for NVIM, [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) offered an advanced code highlighting that can make your code much cleaner<br>
You can use the `:TSInstall <lang>` command to install a parser for a language<br>
Alternatively, in `lua/configs/treesitter.lua`, line `6`, you can have a list of parsers that will be updated everytime you use the `:TSUpdate` or `:TSUpdateSync` command (the latter is for synchronized updating), or you can just install all maintained parsers by uncommenting line `5` and commenting line `6`

6. To make `Telescope` can be fully worked.
`conda install -c conda-forge ripgrep` to install `ripgrep` and which `live_grep` depends on.

## Plugins

There are a bunch of plugins included in `nvim/lua/core/plugins.lua` and their usage can be refered in `nvim/lua/core/keymaps.lua`. 
Exclusions are listed here.

* [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) 
  * `shift + i`: toggle show hidden git ignored files
  * `shifg + h`: toggle show hidden dot files (ie. .vim)
  * `BackSpace`: fold directory

* [Comment](https://github.com/numToStr/Comment.nvim)

  All you need to remember is 
  * `gcc` for Line style comment 
  * `gbc` for Block style comment if applicable



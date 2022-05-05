# Vim Configuration

* Move related files to home folder

  ```shell
  cp .vim/ .vimrc ~/ -r
  ```

* Check if [vim-plug](https://github.com/junegunn/vim-plug) works, or reinstall it

  ```shell
  :PlugInstall
  ```

* Check and Install vim plugins

  * [NerdTree](https://github.com/preservim/nerdtree)
  * [vim-log-highlighting](https://github.com/MTDL9/vim-log-highlighting)
  * [vim-airline](https://github.com/vim-airline/vim-airline)
  * [auto-pairs](https://github.com/jiangmiao/auto-pairs)
  * [rainbow_parentheses](https://github.com/kien/rainbow_parentheses.vim)
  * [LeaderF](https://github.com/Yggdroot/LeaderF)
    * Install the C extension for better performance, python is required

    ```shell
    :LeaderfInstallCExtension
    ```

  * [nerdcommenter](https://github.com/preservim/nerdcommenter)
  * [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
    ```shell
    $ sudo apt install ctags -y
    ```
  * [vim-fugitive](https://github.com/tpope/vim-fugitive)
  * [vim-flatbuffers](https://github.com/dcharbon/vim-flatbuffers)
  * [COC](https://github.com/neoclide/coc.nvim)
    * configuration is in [coc-settings.json](./.vim/coc-settings.json)
    * [Coc入坑指南](https://zhuanlan.zhihu.com/p/71846145)
    * Language Server
      * C/C++/Objective-C

        ```shell
        # Ubuntu
        $ sudo apt-get install clangd-12
        $ sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
        # MacOS 
        $ brew install llvm
        ```

        in vim, run `:CocInstall coc-clangd`, `coc-clangd` will try to find `clangd` from your `$PATH`, if not found, you can run `:CocCommand clangd.install` to install the [latest release](https://github.com/clangd/clangd/releases) from GitHub
      * CMake

        ```shell
        pip install cmake-language-server
        ```

        in vim, run `:CocInstall coc-cmake`
      * [Markdown](https://github.com/fannheyward/coc-markdownlint)
        in vim, run `:CocInstall coc-markdownlint`
        Provides codeAction for current file or line to disable markdownlint, triggered by <Plug>(coc-codeaction) and <Plug>(coc-codeaction-line)


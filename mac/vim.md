

## vim 支持系统剪切板

brew install macvim

vim --version | grep clip

    +clipboard       +job             +path_extra      +user_commands
    +eval            +mouse_dec       +statusline      -xterm_clipboard

如果是系统 bash, vim ~/.bash_profile 增加

    alias vim=/usr/local/Cellar/macvim/8.0-130/MacVim.app/Contents/MacOS/Vim

如果是系统 zsh, vim ~/.zshrc 增加

## 参考

https://coderwall.com/p/j9wnfw/vim-tmux-system-clipboard
https://www.v2ex.com/t/96300

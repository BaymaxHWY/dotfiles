# Dotfile

zsh、tmux、nvim、alacritty

# Need Download Tools
1. rust
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
2. exa -> replace ls
`cargo install exa`
3. ripgrep -> replace grep
`cargo install ripgrep && strip ~/.cargo/bin/ripgrep`
4. tldr 
`pip3 install tldr`
5. fd
`cargo install fd-find`
6. bottom
`cargo install bottom --locked`

# how to use
> need `stow` to install the dotfiles

`stow nvim`
`stow --target=/absolute/path/to/dir {nvim/tmux/alacritty/zsh}`

1. zsh
*need install zsh*
`stow zsh && chsh -s $(which zsh)`

2. neovim

must version >= 8.0

# #!/bin/sh

# dotfiles
ln -vsf ~/dotfiles/.vimrc ~/
ln -vsf ~/dotfiles/.gitconfig ~/
ln -vsf ~/dotfiles/.bash_profile ~/
ln -vsf ~/dotfiles/.tmux_conf ~/

# NeoBundle(vim)
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# install Vundle
mkdir -p bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install all plugins
vim +PluginInstall +qall

# symlink ~/.vimrc to ~/.vim/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc

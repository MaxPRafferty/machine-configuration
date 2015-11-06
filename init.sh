npm install -g gulp
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
(cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive)
(cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer)
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/CtrlP
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/bling/vim-bufferline.git ~/.vim/bundle/bufferline
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx
git clone https://github.com/ternjs/tern_for_vim.git ~/.vim/bundle/tern
(cd ~/.vim/bundle/tern && npm install)
(cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git)
npm install -g eslint_d
git clone https://github.com/powerline/fonts.git ~/powerline-fonts
(cd ~/poweline-fonts/ && ./setup.sh)

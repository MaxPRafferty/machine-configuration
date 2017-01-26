npm install -g gulp
npm install -g eslint_d
npm install -g eslint-plugin-react
npm install -g eslint-plugin-babel
npm install -g babel-eslint
npm install -g diff-so-fancy
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
(cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive)
(cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer)
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/CtrlP
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/lambdatoast/elm.vim.git ~/.vim/bundle/elm.vim
git clone https://github.com/bling/vim-bufferline.git ~/.vim/bundle/bufferline
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx
git clone https://github.com/ternjs/tern_for_vim.git ~/.vim/bundle/tern
git clone git://github.com/tpope/vim-abolish.git ~/.vim/bundle/vim-abolish
git clone git@github.com:osyo-manga/vim-over.git ~/.vim/bundle/vim-over
git clone git@github.com:sjbach/lusty.git ~/.vim/bundle/lusty
(cd ~/.vim/bundle/tern && npm install)
(cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git)
npm install -g eslint_d
git clone https://github.com/powerline/fonts.git ~/powerline-fonts
(cd ~/poweline-fonts/ && ./setup.sh)
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/fugitive
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/surround

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"


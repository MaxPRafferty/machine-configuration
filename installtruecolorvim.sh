CWD=$(pwd)
rm -rf ~/truecolorvim
hg clone https://bitbucket.org/ZyX_I/vim ~/truecolorvim
cd ~/truecolorvim
hg update 24-bit-xterm #from https://gist.github.com/othree/6087586
#hg bookmark 24-bit-xterm #from https://www.reddit.com/r/vim/comments/2ozwe4/24_bit_vim_in_osx_iterm2_a_reality/
(cd src && ./configure --with-features=huge --enable-termtruecolor --enable-pythoninterp  --enable-rubyinterp --enable-gui=auto )
#also good config instructions: https://kowalcj0.wordpress.com/2013/11/19/how-to-compile-and-install-latest-version-of-vim-with-support-for-x11-clipboard-ruby-python-2-3/
make && sudo make install
cd $CWD
unset CWD


hg clone ssh://hg@bitbucket.org/ZyX_I/vim
hg bookmark 24-bit-xterm
./configure --with-features=huge --enable-rubyinterp --enable-termtruecolor
make && sudo make install


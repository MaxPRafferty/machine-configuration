CWD=$(pwd)
rm -rf ~/truecolorvim
hg clone https://bitbucket.org/ZyX_I/vim ~/truecolorvim
cd ~/truecolorvim
hg bookmark 24-bit-xterm
./configure --with-features=huge --enable-rubyinterp --enable-termtruecolor  --enable-pythoninterp --disable-darwin --enable-gui=auto --enable-clipboard --with-x
make && sudo make install
cd $CWD
unset CWD


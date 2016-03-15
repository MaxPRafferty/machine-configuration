mkdir -p ~/.vim
cp ./.vimrc ~/.vimrc
#cp -R ./.vim ~/.vim
cp -R ./.vim/colors/ ~/.vim/colors/
cp -R ./.vim/autoload/ ~/.vim/autoload/
cp -R ./.vim/plugin/ ~/.vim/plugin/
cp ./.bash_profile ~/.bash_profile
cp ./.bashrc ~/.bashrc
cp ./.cfgcolors ~/.cfgcolors
git config --global alias.ls "log --color --graph --pretty=format:%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn] --decorate --date=relative"
git config --global core.editor "vim"

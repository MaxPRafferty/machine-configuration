defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
source ~/.cfgcolors
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/jslint:/usr/local/go/bin
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced #from http://stackoverflow.com/questions/1550288/mac-os-x-terminal-colors, not sure exactly what this does
export TERM="xterm-color" 
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$(parse_git_branch)\[\033[00m\] '
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


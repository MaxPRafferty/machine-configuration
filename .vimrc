syntax on
set background=dark
execute pathogen#infect()
filetype plugin indent on
set wildmode=longest,list,full "filename autocompletion tab order
set wildmenu "do autocompletion
set hlsearch "highlight searched words
set number "line numbers
hi LineNr   cterm=bold ctermbg=16 ctermfg=black gui=bold guibg=gray guifg=white "force black line number column regardless of theme
set tabstop=4
set listchars=trail:▓,precedes:«,extends:»,eol:¬,tab:▫▬,space:· "requires vim patch 7.4.710 to display whitespace replacements
set list
filetype plugin indent on "not sure what this one actually does, from http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
set expandtab


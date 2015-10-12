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
set shiftwidth=4
set listchars=trail:▓,precedes:«,extends:»,eol:¬,tab:▫▬,space:· "requires vim patch 7.4.710 to display whitespace replacements
set list
filetype plugin indent on "not sure what this one actually does, from http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
set expandtab
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '/Users/max/.node/bin/eslint'
let g:syntastic_javascript_eslint_tail = "--rulesdir /Users/max/nomi21/eslint-rules" 
colorscheme sourcerer
syntax on

filetype plugin indent on
let mapleader = "\\"
let &t_8f="\e[38;2;%ld;%ld;%ldm"
let &t_8b="\e[48;2;%ld;%ld;%ldm"
set guicolors
syntax on
set backspace=2
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
"set listchars=trail:▓,precedes:«,extends:»,eol:¬,tab:▫▬,space:· "requires vim patch 7.4.710 to display whitespace replacements
set list
filetype plugin indent on "not sure what this one actually does, from http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
set expandtab
set clipboard=unnamed
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default

colorscheme hybrid
"cursor options
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=lightblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

"**KEY MAPPINGS**
"quicknav
nmap <C-h> 5h
nmap <C-j> 5j
nmap <C-k> 5k
nmap <C-l> 5l
nmap <C-a> 0
nmap <C-e> $
imap <C-a> <esc>0i
imap <C-e> <esc>$i
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

"quickest 2 buffer switch
nmap <Leader>j :b#<Enter>

"un/indenting
nmap <Tab> V>
nmap <S-Tab> V<
vmap <Tab> >
vmap <S-Tab> <

"Quick single char insert
nmap <Space> i_<Esc>r
nmap <S-Space> a_<Esc>r
"^doesnt work on many machines.
"http://stackoverflow.com/questions/279959/how-can-i-make-shiftspacebar-page-up-in-vim
"for solutions

"buffer control
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <C-Tab> :bnext

cabbrev E Explore
"**PLUGIN SETTINGS**
"JSX highlighing
let g:jsx_ext_required = 0
"ctrlp ignore folders
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn|node_modules)$' }
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules
"syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_path_to_python_interpreter = "/usr/local/bin/python"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
"let g:syntastic_javascript_eslint_exec = '/usr/local/bin/eslint_d'
let g:syntastic_javascript_eslint_exec = '/usr/local/bin/eslint_m'
"let g:syntastic_javascript_eslint_exec = '/usr/local/bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exec = '/Users/max/.node/bin/eslint'
"let g:syntastic_javascript_eslint_tail = '--rulesdir /Users/max/nomi21/eslint-rules'
"let g:syntastic_javascript_eslint_args = '-g ~/code/platform-front/.eslintrc'

"powerline setup
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

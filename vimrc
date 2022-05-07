syntax on
filetype plugin indent on
set softtabstop=2
set shiftwidth=2
set expandtab

set hls
set backupcopy=yes

set number
set cc=80

set mouse=a

execute pathogen#infect()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set wildignore+=*.swp
autocmd BufWritePre * %s/\s\+$//e

let NERDTreeRespectWildIgnore=1

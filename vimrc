packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('vim-jp/syntax-vim-ex')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('scrooloose/nerdtree')
call minpac#add('Xuyuanp/nerdtree-git-plugin')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('tpope/vim-fugitive')
call minpac#add('jiangmiao/auto-pairs')

" Load the plugins right now. (optional)
" packloadall

colorscheme desert
syntax on
set backspace=2
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set number
set relativenumber
set updatetime=250
set timeoutlen=1000
set ttimeoutlen=10
set laststatus=2                        " Show the status line
set smartindent                         " Smart identation"

:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q

" NERDTree
map <C-a> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader><Right> <C-W><C-L> 
nnoremap <Leader><Left> <C-W><C-H> 
nnoremap <Leader><Up> <C-W><C-K> 
nnoremap <Leader><Down> <C-W><C-J> 

" Airline conf
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_theme='badwolf'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

" Split stuff
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
set splitbelow
set splitright

" PLS STAPH stuff
map q <Nop>

" HOWAMI MISING DIS OMG
set t_Co=256

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

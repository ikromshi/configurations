" Basic settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
syntax on

" Start defining plugins
call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" End defining plugins
call plug#end()

colorscheme sonokai

" NERDTree Configuration
" Automatically open NERDTree when Vim starts
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0

" Tagbar Configuration
nmap <F8> :TagbarToggle<CR>

" FZF Configuration (optional if you choose this over CtrlP)
set rtp+=~/.fzf


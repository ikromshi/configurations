" Basic settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
let mapleader = " "
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
Plug 'voldikss/vim-floaterm'
call plug#end()


" Sonokai Configuration
if has('termguicolors')
        set termguicolors
endif
let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1
colorscheme sonokai
let g:lightline = {'colorscheme' : 'sonokai'}
let g:sonokai_transparent_background = 1
highlight Normal guibg=#2A2F38


" NERDTree Configuration
" type :NT to toggle NERDTree
command NT NERDTreeToggle
" press space + n to toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif


" FloatTerm Configuration
nnoremap <leader>t :FloatermToggle<CR>
tnoremap <Esc> <C-\><C-n>


" Floaterm look
hi Floaterm guibg=#3d4455 guifg=#e6e6e6
hi FloatermBorder guibg=#4a5060 guifg=#6a7080


" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0


" Tagbar Configuration
nmap <F8> :TagbarToggle<CR>


" FZF Configuration (optional if you choose this over CtrlP)
set rtp+=~/.fzf

set nocompatible              " be iMproved, required
filetype off                  " required

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'yegappan/mru'
Plug 'jlanzarotta/bufexplorer'
Plug 'sheerun/vim-polyglot'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Initialize plugin system
call plug#end()
filetype plugin indent on    " required

" Reconfigure leader
let mapleader = ","
" NERDTree config
nnoremap <leader>m :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
" autocmd vimenter * ++nested colorscheme gruvbox
" bufexplorer config
nnoremap <leader>. :BufExplorer<CR>

" Rainbow brackets
let g:rainbow_active = 1

" set Vim-specific sequences for RGB colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax enable
colorscheme 2077

" indentation
:set shiftwidth=2
:set autoindent
:set smartindent

" set line numbers
set number

" fuzzy search
let $FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
nnoremap <leader>f :call fzf#run({'sink': 'e', 'down': '40%'})<CR>

" prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0


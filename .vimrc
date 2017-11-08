" vim preferences file

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'editorconfig/editorconfig-vim'
Plugin 'saltstack/salt-vim.git'
" Plugin 'python-mode/python-mode'
Plugin 'hashivim/vim-terraform.git'
Plugin 'dbsr/vimpy.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

" split below
nnoremap <C-K> <C-W><C-J>
" split above
nnoremap <C-I> <C-W><C-K>
" split left
nnoremap <C-J> <C-W><C-H>
" split right


let python_highlight_all=1
syntax on
nnoremap <C-L> <C-W><C-L>

" set foldmethod=indent
" set foldlevel=99

nnoremap <space>f za

" PEP8 stuff

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.xml set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace "/\s\+$/"

set encoding=utf-8

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" git commits
autocmd FileType gitcommit setlocal spell cc=80 tw=79

set nu
set backspace=indent,eol,start

nnoremap <C-Left> <A-Left>

let python_highlight_all=1
syntax on

" Nerdtree stuff
let mapleader = ","

nnoremap <Leader><Enter> :NERDTreeToggle<Enter>

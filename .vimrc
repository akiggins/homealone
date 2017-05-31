" Of course
set nocompatible

" Required Vundle setup
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Bundle 'gmarik/vundle'
" Bundle 'kien/ctrlp.vim'
" Bundle 'scrooloose/nerdcommenter'
" Bundle 'scrooloose/nerdtree'
" Bundle 'vim-scripts/pyflakes.vim'
" Bundle 'vim-scripts/taglist.vim'
" Bundle 'tpope/vim-fugitive'
" Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'xolox/vim-misc'
" Bundle 'xolox/vim-session'
" Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'vim-scripts/Vimball'
" Bundle 'derekwyatt/vim-fswitch'
" Bundle 'bling/vim-airline'
" Bundle 'vim-scripts/groovyindent'
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype off
syntax on
filetype plugin indent on

let g:zenburn_high_Contrast=1
"colorscheme desert
"colorscheme xterm16
set t_Co=256
 colorscheme zenburn
" set guifont=ter-c20b:h15
set guifont=Terminus
if has("gui_macvim")
    set guifont=Anonymous\ Pro:h18
    endif
    set fileencodings=utf-8
    set nocompatible
    set modelines=0
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    " set encoding=utf-8
    set scrolloff=3
    set autoindent
    set showmode
    set showcmd
    set hidden
    set wildmenu
    set wildmode=list:longest
    set visualbell
    set cursorline
    set ttyfast
    set ruler
    set backspace=indent,eol,start
    set laststatus=2
    set relativenumber
    set undofile
    let mapleader = ","
    nnoremap / /\v
    vnoremap / /\v
    set ignorecase
    set smartcase
    set gdefault
    set incsearch
    set showmatch
    set hlsearch
    nnoremap <leader><space> :noh<cr>
    nnoremap <tab> %
    vnoremap <tab> %
    set nowrap
    set textwidth=132
    set textwidth=0 wrapmargin=0
    set formatoptions=qrn1
    "set colorcolumn=85
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>
    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
    nnoremap j gj
    nnoremap k gk
    inoremap <F1> <ESC>
    nnoremap <F1> <ESC>
    vnoremap <F1> <ESC>
    nnoremap ; :
    nnoremap <leader>w <C-w>v<C-w>l
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
    nnoremap <F11> :RainbowParenthesesToggle<cr>
    "nnoremap <F12> :NERDTreeToggle<cr>
    nnoremap <F12> :NERDTreeTabsToggle<cr>
    nnoremap <F10> :call SessionManagerToggle()<cr><cr>

    :let g:session_autoload = 'yes'
    :let g:session_autosave = 'yes'

    nnoremap <silent> <F8> :TlistToggle<CR>

    let g:DoxygenToolkit_authorName="Anton Romanov" 
    let g:DoxygenToolkit_licenseTag="AS IS"
    let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_confirm_extra_conf = 0
    "let g:ycm_autoclose_preview_window_after_insertion = 0
    nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
    if filereadable("/usr/local/bin/python2.7")
      let g:ycm_path_to_python_interpreter = '/usr/local/bin/python2.7'
      endif
      set errorformat^=%-G%f:%l:\ warning:%m

      let g:nerdtree_tabs_open_on_gui_startup = 0

set nocompatible
set fileformat=dos
set fileformats=dos,unix
let s:cpo_save=&cpo
set cpo&vim
map! <xHome> <Home>
map! <xEnd> <End>
map! <S-xF4> <S-F4>
map! <S-xF3> <S-F3>
map! <S-xF2> <S-F2>
map! <S-xF1> <S-F1>
map! <xF4> <F4>
map! <xF3> <F3>
map! <xF2> <F2>
map! <xF1> <F1>
map <xHome> <Home>
map <xEnd> <End>
map <S-xF4> <S-F4>
map <S-xF3> <S-F3>
map <S-xF2> <S-F2>
map <S-xF1> <S-F1>
map <xF4> <F4>
map <xF3> <F3>
map <xF2> <F2>
map <xF1> <F1>
map <F3> :NEXTCOLOR<cr>
map <F2> :PREVCOLOR<cr>
let &cpo=s:cpo_save
unlet s:cpo_save

nmap <silent> <Up> k
nmap <silent> <Down> j
nmap <silent> <Left> h
nmap <silent> <Right> l

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

source ~/.vim/plugin/cscope_maps.vim
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
syntax on
filetype indent plugin on
inoremap jk <ESC>
execute pathogen#infect()

augroup Python
    au BufNewFile *.py 0r ~/vim/skeleton.py
augroup end

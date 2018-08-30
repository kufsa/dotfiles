set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"
" After adding a plugin, remember to call :PluginInstall
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Enable syntax highlighting
let python_highlight_all=1
syntax on

" Move active section to new split
set splitbelow
set splitright

" Show Line limiter
highlight ColorColumn ctermbg=gray
set colorcolumn=120
colorscheme zenburn

" Show matching brackets
set showmatch
set nocompatible
set t_Co=256
set undofile

" Maximum number of changes that can be undone
set undolevels=1000
" Maximum number lines to save for undo on a buffer reload
set undoreload=10000
" Enable mouse
set mouse=a


" Hilight current line/col
"set cursorcolumn
set cursorline
" Show line numbers
set nu
" Relative line numbers
"set rnu
" Numbers of spaces of tab character
set tabstop=4
" Numbers of spaces to (auto)indent
set shiftwidth=4
" Insert spaces instead of tab chars
set expandtab
" Copy the last indent when inserting a new line
set autoindent
" Add/Delete &ts spaces when at beginning of line
set smarttab

" Highlight all search results
set hlsearch
" Hilight matching while typing
set incsearch
" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
" Fileformats
set ffs=unix
" Show command completions above the command line
set wildmenu
" Show size of selected area (visual mode)
set showcmd
" Occasions to show status line, 2=always
set laststatus=2
" Command line height
set cmdheight=1
" Fix backspace
set backspace=indent,eol,start

"set nowrap
"set textwidth=80

" Hilight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Toggle highlight current line and col
map <F4> :set  cursorline! <CR>


" Toggle relative line numbering
map <F6> :call ToggleRelativeNumber()<CR>
function! ToggleRelativeNumber()
    set rnu!
endfunction

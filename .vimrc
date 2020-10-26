" vim and vi are symlinked in /usr/local/bin to mvim script in MacVim folder in Applications#Settings for MacVim
" Douglas Black's vim config
" Colors {{{
syntax enable           " enable syntax processing
colorscheme jellybeans
" set termguicolors
" }}}
" Misc {{{
set backspace=indent,eol,start
set clipboard=unnamed
set hidden              " enables hidden buffer
set mouse+=a            " enables mouse support
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set backspace=indent,eol,start  " allows to backspace over anything
" }}}
" UI Layout {{{
set number              " show line numbers
set relativenumber      " enables relative numbering mode
set laststatus=2        " Always show the status line at the bottom
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set shortmess+=I        " disable the default Vim startup message.
set showmatch
set fillchars+=vert:┃
set noerrorbells visualbell t_vb=   " disable audible bells
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set smartcase           " search becomes case-sensitive if it contains any capital letters
set hlsearch            " highlight all matches
" }}}

" BAD HABIT PREVENTION
" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

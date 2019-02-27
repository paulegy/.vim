
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

inoremap jk <ESC>       " 'jk' will exit insert mode

cnoremap e<Space> e<Space><C-d>
cnoremap nt NERDTree
map <C-n> :NERDTreeToggle<CR>

" set list
set ruler               " show the current line/column number
set showcmd             " show incomplete commands
set showmode            " show the current mode
set noerrorbells        " bells are annoying
set visualbell        " visual bells piss me off

"Searching, Replacing and Inserting
"****************************************************************************
"
set incsearch           " incremental searching
set nobackup
set showmatch
set ignorecase          " searches in all lower case match any case
set smartcase           " searches with any upper case match exact case
set hlsearch            " highlight the matched text
set gdefault            " :s will replace all matches on a line
"set imsearch=1          " enable 'lmap' mappings in '/' searches

" search and replace on the word under the cursor
" just type #s and then the word to replace the current word
"noremap #s :%s/\<<C-R><C-W>\>\/

" Movement commands
" *****************************************************************************
"
"set whichwrap=h,l,~,[,]     " let the h,l, and cursor keys wrap over line break
"nooremap / /\v
"vnoremap / /\v
" map tab to move to the next split
nmap <Tab> <C-W>w
nmap <Bar> <C-w>v<C-w><Right> " map Bar to veritcal split and move to the right
nmap - <C-w>s<C-w><Down> " map Bar to veritcal split and move to the righti
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Space> za
"nmap <Space> <PageDown>  " page down on <Space>
"nmap <S-Space> <PageUp>  " page up on <Shift-Space>
"noremap <Ins> 2<C-V>        " scroll up (w/o moving cursor)
"noremap <Del> 2<C-E>        " scroll down (w/o moving cursor)
" ! need to decide what keys to map to
"nmap <C-W>w                 " move cursor to next window
"nmap <C-W>W                 " move cursor to prev window
set matchpairs+=<:>,\':\',\":\"     " make % work for these also
set relativenumber
set number
set undofile
set foldcolumn=3
set foldmethod=indent
set foldlevel=99
let g:ycm_server_python_interpreter = '/usr/bin/python'
set tags=/home/pegy/repos/staging/tags

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix


"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

if has('gui_running')
	  set background=dark
	    colorscheme solarized
    else
	      colorscheme zenburn
      endif

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .ideavimrc source ~/.ideavimrc
  autocmd bufwritepost source ~/.vimrc
endif

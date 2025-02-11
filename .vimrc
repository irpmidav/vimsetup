""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Vim configuratoin file                             "
"                                                                              "
"                        Initial version provided by:                          "
"                          LinuxTrainingAcademy.com                            "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins installation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatic installation of the vim-plug plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Register plugins in vim-plug
call plug#begin()

" List your plugins here
Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTree'] }
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
" Plug 'cdelledonne/vim-cmake'
Plug 'ilyachur/cmake4vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings and custom commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:mapleader=' '

nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""
" NERDTree configurations
"""""""""""""""""""""""""""""""""""""""

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

"""""""""""""""""""""""""""""""""""""""
" NERDCommenter configurations
"""""""""""""""""""""""""""""""""""""""

let g:NERDSpaceDelims = 1

"""""""""""""""""""""""""""""""""""""""
" cmake4vim configurations
"""""""""""""""""""""""""""""""""""""""

let g:cmake_build_dir_prefix=''
nmap <leader>c <Plug>(CMake)
nmap <leader>b <Plug>(CMakeBuild)
nmap <leader>i <Plug>(CMakeInfo)
nmap <leader>r <Plug>(CMakeRun)
nmap <leader>t :CtrlPCMakeTarget<CR>
nmap <leader>d :CtrlPCMakeBuildType<CR>

"""""""""""""""""""""""""""""""""""""""
" vim-cmake configurations
"""""""""""""""""""""""""""""""""""""""

" let g:cmake_statusline=1
" nnoremap <leader>c :execute 'CMakeGenerate ' . input('Configuration: ')<CR>
" nnoremap <leader>s :execute 'CMakeSwitch ' . input('Configuration: ')<CR>
" nnoremap <leader>r :execute 'CMakeRun ' . input('Target: ')<CR>
" nnoremap <leader>b :CMakeBuild<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""
" Specifiy a color scheme gruvbox
"""""""""""""""""""""""""""""""""""""""

let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
let g:gruvbox_termcolors=256
colorscheme gruvbox
set background=dark

"""""""""""""""""""""""""""""""""""""""
" Set the background to be transparent
"""""""""""""""""""""""""""""""""""""""

highlight Normal ctermbg=none

"""""""""""""""""""""""""""""""""""""""
" Specifiy a color scheme ron 
"""""""""""""""""""""""""""""""""""""""

" colorscheme ron

"""""""""""""""""""""""""""""""""""""""
" Higlight the current line
"""""""""""""""""""""""""""""""""""""""

set cursorline
highlight CursorLine cterm=none ctermbg=240
highlight CursorLineNr cterm=none ctermbg=240

" Save 1,000 items in history
set history=1000

" Show the line and column number of the cursor position
set ruler

" Display the incomplete commands in the bottom right-hand side of your screen.  
set showcmd

" Display completion matches on your status line
set wildmenu

" Show a few lines of context around the cursor
set scrolloff=5

" Highlight search matches
set hlsearch

" Enable incremental searching
set incsearch

" Ignore case when searching
set ignorecase

" Ignore case when autocomplete wildcards
set wildignorecase

" Override the 'ignorecase' option if the search pattern contains upper case characters.
set smartcase

" Turn on line numbering
set number

" Trun on relative line numbering
set relativenumber

" Turn on file backups
" set backup

" Don't line wrap mid-word.
set lbr

" Copy the indentation from the current line.
set autoindent

" Enable smart autoindenting.
set smartindent

" Set automatic C indenting.
" set cindent

" Use spaces instead of tabs
set expandtab

" Enable smart tabs
set smarttab

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4


" Map Y to act like D and C, i.e. yank until EOL, rather than act like yy
" map Y y$

" Remap VIM 0 to first non-blank character
" map 0 ^

" Easily create HTML unorded lists. 
" map <F3> i<ul><CR><Space><Space><li></li><CR><Esc>I</ul><Esc>kcit
" map <F4> <Esc>o<li></li><Esc>cit

" change the mapleader from \ to ,
" NOTE: This has to be set before <leader> is used.
" let mapleader=","

" Quickly save your file.
map <leader>w :w!<cr>

" Saves all buffers before calling make
augroup make_save_all
  autocmd!
  autocmd QuickFixCmdPre make wall
augroup end

set hidden

" Place new window below the current while spliting horizontally
set splitbelow
set splitright

" Fixes delay when exiting from insert mode in visual mode
set ttimeoutlen=100

" Set the make command to run in the build directory
" set makeprg=make\ build

" Enable quickfix window navigation for errors
" set errorformat=%f:%l:\ %m,%f:%l:%c:\ %m

" For more options see ":help option-list" and ":options".

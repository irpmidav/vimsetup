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
Plug 'ycm-core/YouCompleteMe'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings and custom commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:mapleader=' '

nmap <leader>w :wa<CR>
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l

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
" let g:cmake_compile_commands=1
" let g:cmake_compile_commands_link='.'
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

"""""""""""""""""""""""""""""""""""""""
" View configurations
"""""""""""""""""""""""""""""""""""""""

set history=1000                        " Save 1,000 items in history
set ruler                               " Show the line and column number of the cursor position
set showcmd                             " Display the incomplete commands in the bottom right-hand side of your screen.  
set wildmenu                            " Display completion matches on your status line
set scrolloff=5                         " Show a few lines of context around the cursor
set number                              " Turn on line numbering
set relativenumber                      " Trun on relative line numbering

"""""""""""""""""""""""""""""""""""""""
" Search configurations
"""""""""""""""""""""""""""""""""""""""

set hlsearch                            " Highlight search matches
set incsearch                           " Enable incremental searching
set ignorecase                          " Ignore case when searching
set wildignorecase                      " Ignore case when autocomplete wildcards
set smartcase                           " Override the 'ignorecase' option if the search pattern contains upper case characters.

"""""""""""""""""""""""""""""""""""""""
" Indentation and tabulation
"""""""""""""""""""""""""""""""""""""""

set linebreak                           " Don't line wrap mid-word.
set autoindent                          " Copy the indentation from the current line.
set smartindent                         " Enable smart autoindenting.
" set cindent                             " Set automatic C indenting.
set expandtab                           " Use spaces instead of tabs
set smarttab                            " Enable smart tabs
set shiftwidth=4                        " Make a tab equal to 4 spaces
set tabstop=4


"""""""""""""""""""""""""""""""""""""""
" Other vim configurations
"""""""""""""""""""""""""""""""""""""""
set hidden                              " Allows hidden buffers
set splitbelow                          " Place new window below the current while spliting horizontally
set splitright                          " Place new window on the right side of the current while spliting vertically
set ttimeoutlen=100                     " Fixes delay when exiting from insert mode in visual mode


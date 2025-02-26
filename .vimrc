""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Vim configuratoin file                             "
"                                                                              "
"                        Initial version provided by:                          "
"                          LinuxTrainingAcademy.com                            "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX 
" check and use tmux's 24-bit color support  (see < http://sunaku.github.io/
" tmux-24bit-color.html#usage > for more information).
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
"   if (has("nvim"))
"     " For Neovim 0.1.3 and 0.1.4 <https://github.com/neovim/neovim/pull/2198>
"     let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"   endif
"   " For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/
"   " commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"   " Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/
"   " vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"   " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"   if (has("termguicolors"))
"     set termguicolors
"   endif
" endif

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

Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTree'] }
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'morhetz/gruvbox'
" Plug 'ilyachur/cmake4vim'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'derekwyatt/vim-fswitch'
" Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings and custom commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:mapleader=' '

nnoremap <Leader>w :wa<CR>
nnoremap <Leader>q :qa<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""
" NERDTree configurations
"""""""""""""""""""""""""""""""""""""""

nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

"""""""""""""""""""""""""""""""""""""""
" cmake4vim configurations
"""""""""""""""""""""""""""""""""""""""

" let g:cmake_build_dir_prefix=''
" let g:cmake_compile_commands=1
" let g:cmake_compile_commands_link='.'
" command! Config CMake
" command! Build CMakeBuild
" command! Info CMakeInfo
" command! Run CMakeRun
" command! Target CtrlPCMakeTarget
" command! Type CtrlPCMakeBuildType
" nnoremap <Leader>b :wa<CR>:Build<CR> 
" nnoremap <Leader>r :wa<CR>:Run<CR>

"""""""""""""""""""""""""""""""""""""""
" YCM configurations
"""""""""""""""""""""""""""""""""""""""

" nnoremap <F2> :YcmCompleter GoToDefinition<CR>

"""""""""""""""""""""""""""""""""""""""
" UltiSnips configurations
"""""""""""""""""""""""""""""""""""""""

"  - ctrl-j to expand
"  - ctrl-j to go to next tabstop
"  - ctrl-k to go to previous tabstop
" let g:UltiSnipsExpandTrigger = '<C-j>'
" let g:UltiSnipsJumpForwardTrigger = '<C-j>'
" let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

"""""""""""""""""""""""""""""""""""""""
" fswitch configurations
"""""""""""""""""""""""""""""""""""""""

" nnoremap <F4> :FSHere<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""
" Specifiy a color scheme gruvbox
"""""""""""""""""""""""""""""""""""""""

" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_contrast_light='hard'
" let g:gruvbox_termcolors=256
" set background=light
" colorscheme gruvbox
" highlight Normal guifg=#000000 ctermfg=0

"""""""""""""""""""""""""""""""""""""""
" Set the background to be transparent
"""""""""""""""""""""""""""""""""""""""

" highlight Normal ctermbg=none

"""""""""""""""""""""""""""""""""""""""
" Specifiy a color scheme ron 
"""""""""""""""""""""""""""""""""""""""

colorscheme ron

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


set nocompatible "enable modern vim features not compatible in vi

" VUNDLE PLUGINS "

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Google code-fmt plugin "

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

" vim-orgmode plugin for managing todo lists
Plugin 'jceb/vim-orgmode'
let g:org_agenda_files = ['~/org/*.org']
" Needed to manage dates in vim-orgmode
Plugin 'tpope/vim-speeddating'
:nnoremap <C-b> <C-a>
:nnoremap <C-n> <C-x>
" for calendar integration in orgmode
Plugin 'mattn/calendar-vim'
let g:org_todo_keywords =
      \[['TODO(t)', 'ASSIGN(a)', 'WAITING(w)', '|', 'DONE(d)'],
      \['REPORT(r)', 'BUG(b)', '|', 'FIXED(f)'],
      \['CANCELED(c)']]
let g:org_todo_keyword_faces =
      \[
      \['TODO', [':foreground red', ':background black', ':weight bold']],
      \['ASSIGN', [':foreground yellow', ':background black', ':weight bold']],
      \['WAITING', [':foreground cyan', ':background black', ':weight bold']],
      \['BUG', [':foreground red', ':background black', ':weight bold']],
      \['REPORT', [':foreground white', ':background black', ':weight bold']],
      \['CANCELED', [':foreground red', ':background black', ':weight bold']]
      \]

" Vim airline for status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Remove mode indicator since it shows up in new statusline anyway
set noshowmode

" for marks
Plugin 'kshenoy/vim-signature'

" for directory navigation
Plugin 'scrooloose/nerdtree'

" for commenting with \cc \cs \cu
Plugin 'scrooloose/nerdcommenter'

" for visualizing undotree
Plugin 'mbbill/undotree'

" language pack
Plugin 'sheerun/vim-polyglot'

" for easy ctags management (needs to install exuberant-ctags first
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" for visualizing tags
Plugin 'majutsushi/tagbar'

" for autocompletion
Plugin 'valloric/youcompleteme'

" for being able to use a shell in vim :VimShellCurrentDir
" Need to run VimProcInstall first
Plugin 'shougo/vimproc.vim'
Plugin 'shougo/vimshell.vim'


" for url plugin
Plugin 'utl.vim'

" for bufexplorer
Plugin 'jlanzarotta/bufexplorer'

" for markdown preview with <leader>p
Plugin 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_hotkey='<leader>p'
let vim_markdown_preview_browser='Firefox'

" for viewing past yanked/deleted content
Plugin 'YankRing.vim'

" for narrow region with :NR
Plugin 'chrisbra/NrrwRgn'

" for snippets
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
Plugin 'honza/vim-snippets'

" For python consistency indentation
Plugin 'IndentConsistencyCop'

"TODO: add plugins for:
"tmux integration (panes and registers)

" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins;
"                     append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins;
"                     append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" DEFAULTS ------------------------------------------------------------- "
" Suggestions for good defaults:
" https://dougblack.io/words/a-good-vimrc.html

" UI defaults 

" show line numbers
set nu
" enable syntax processing
syntax enable
" set line where cursor is. Useful if you lose the cursor.
set cursorline
" set a color column at 80 characters cause long lines are ugly in code.
set colorcolumn=80
" auto complete graphical menu for commands.
set wildmenu
" doesn't redraw screen in middle of macros (leads to faster macros).
set lazyredraw
" highlights matching [{()}]
set showmatch

" Indentation Defaults (I prefer (2) spaces over tabs.
" gohttp://vim.wikia.com/wiki/Indenting_source_code for explanations

" reads tabs as n spaces
set tabstop=2
" writes and deletes tabs as n spaces
set softtabstop=2
" actually use spaces instead of tabs
set expandtab
set shiftwidth=2

" Searching defaults
" searches as characters are entered
set incsearch
" highlights search results
set hlsearch
" lets you turn off highlights with <leader><space>

" other defaults
" Allows you to open another buffer without saving current one
set hidden

" REMAPS ------------------------------------------------------------------ "

nnoremap <leader><space> :nohlsearch<CR>
" lets you move visually between lines in normal mode
nnoremap j gj
nnoremap k gk
" lets you skip the <C-w> when switching windows in normal mode
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" lets you resize with leader key in normal mode without <C-w>
nnoremap <leader>+ <C-w>+
nnoremap <leader>- <C-w>-
nnoremap <leader>< <C-w>>
nnoremap <leader>> <C-w><
nnoremap <leader>= <C-w>=

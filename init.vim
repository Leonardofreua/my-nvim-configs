"Plugins
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"Theme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_bold= '4'

"UltiSnips
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/snippets'

"Setting options
set hidden
set number
set relativenumber
set inccommand=split
set incsearch
set hlsearch
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

"Definitions
let mapleader = "\<space>"

"Adds a semicolon to the end of the line
nnoremap <leader>; A;<esc>
"Open vim configuration file
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
"Load init.vim
nnoremap <leader>cv :source ~/.config/nvim/init.vim<cr>
"Fast saving
nnoremap <leader>w :w!<cr>
"New empty line
nnoremap <leader> :a<cr><cr>.<cr>
"Undo all changes
nnoremap <leader>uu :u0<cr>
"Undo last change
nnoremap <leader>u :undo<cr>

"-------- Filters --------"

"Find files
nnoremap <c-p> :Files<cr>
"History files
nnoremap <c-e> :History<cr>
"Git commits
nnoremap <c-g> :Commits<cr>
"Normal mode mappings
nnoremap <c-m> :Maps<cr>
"Look for general occurrences
nnoremap <c-h> :Ag <space>

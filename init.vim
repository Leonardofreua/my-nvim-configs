
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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
call plug#end()

" Theme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_bold= '4'

" UltiSnips
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/snippets'

" Enable air-line smarttab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' >> '
let g:airline#extensions#tabline#left_alt_sep = '>>'

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Setting options
syntax enable
set hidden
set number
set relativenumber
set inccommand=split
set incsearch
set hlsearch
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
set clipboard=unnamedplus
set smarttab
set updatetime=300

" Definitions
let mapleader = "\<space>"

" Adds a semicolon to the end of the line
nnoremap <leader>; A;<esc>
" Open vim configuration file
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" Load init.vim
nnoremap <leader>cv :source ~/.config/nvim/init.vim<cr>
" Fast saving
nnoremap <leader>w :w!<cr>
" New empty line
nnoremap <leader> :a<cr><cr>.<cr>
" Undo all changes
nnoremap <leader>uu :u0<cr>
" Undo last change
nnoremap <leader>u :undo<cr>
" Select all content
map <C-a> <esc>ggVG<CR>
" Copy content
vmap <C-c> "*y
" Paste Content
nmap <C-v> "*p

" Trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" NERDTreeToggle
map <C-o> :NERDTreeToggle<CR>

" Switch between panes
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Resize the panes
nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

let g:elite_mode=0 " Disable arrows"
" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <C-Up>    :resize -2<CR>
    nnoremap <C-Down>  :resize +2<CR>
    nnoremap <C-Left>  :vertical resize -2<CR>
    nnoremap <C-Right> :vertical resize +2<CR>
endif

" Navigate between tabs
nnoremap <C-r>    :bprevious<CR>
nnoremap <C-t>    :bnext<CR>

"-------- Filters --------"

" Find files
nnoremap <c-p> :Files<cr>
" History files
nnoremap <c-e> :History<cr>
" Git commits
nnoremap <c-g> :Commits<cr>
" Normal mode mappings
nnoremap <c-m> :Maps<cr>
" Look for general occurrences
nnoremap <c-f> :Ag <space>
" Git status
nnoremap <leader>gst :GFiles?<CR>

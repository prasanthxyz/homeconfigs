set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'delimitMate.vim'
Plugin 'vim-airline'
Plugin 'ctrlp.vim'
" Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
" Plugin 'surround.vim'
Plugin 'tComment'
Plugin 'AutoComplPop'

" Gvim
"if has('gui_running')
set guifont=MonacoB\ Regular\ 10
set t_Co=256
"    colorscheme badwolf
"endif


" Leader
let mapleader=","

" For tComment
map <leader>c <c-_><c-_>

" Spellcheck
" set spellfile=~/.vim/spell/en.utf-8.add
" set spelllang=en
" noremap <leader>sp :SpellToggle<CR>
" if !exists(":SpellToggle")
" 	command SpellToggle if &spell | set nospell | else | set spell | endif
" endif


" Colors
set term=xterm-256color
" colorscheme desertEx-v2
colorscheme monokai
syntax enable

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" History management
set directory=~/.vim/swps


" Mouse
noremap <leader>mo :MouseToggle<CR>
if !exists(":MouseToggle")
	command MouseToggle if has('mouse') | if &mouse=="" | set mouse=a
				\ | else | set mouse= | endif | endif
endif

" Spaces, Tabs
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent

" UI Config
set relativenumber
set number
set showcmd
set cursorline
filetype plugin indent on
set wildmenu
set showmatch
map <C-k> :NERDTreeToggle<CR>

" Searching
set ignorecase
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
noremap <leader>hl :HLToggle<CR>
if !exists(":HLToggle")
	command HLToggle if &hlsearch | set nohlsearch | else | set hlsearch | endif
endif

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Movement
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

" TABS
nnoremap <S-Tab> :bp<CR>
nnoremap <Tab> :bn<CR>
nnoremap <C-t> :enew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
noremap <leader>q :bp <BAR> bw #<CR>


" RecentFiles
noremap <leader>o :call RecentFiles()<CR>:<C-U>call OpenRecentFile()<left>
function! RecentFiles()
	let i = 0
	while i < len(v:oldfiles)
		echo i ": " v:oldfiles[i]
		let i = i+1
	endw
endfunction

function! OpenRecentFile(i)
	e `=expand(v:oldfiles[a:i])`
endfunction


" Random
set undolevels=1000
inoremap jj <ESC>
noremap <leader>p "+p
noremap <leader>y "+y

" For traditional save-file
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>


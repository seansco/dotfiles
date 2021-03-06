" ----- vars -----
set colorcolumn=80    " highlight the 80th column
set cursorline        " highlight current line
set expandtab         " tabs are spaces, not tabs
set foldenable        " auto fold code
set foldmethod=indent
set hidden
set ignorecase        " case insensitive search
set noswapfile			  " disable swap
set nowrap            " wrap long lines
set nu                " Line numbers on
set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)
set shiftwidth=2      " an indentation every two columns
set si			         	" smart indent
set smartcase         " case sensitive when uc present
set softtabstop=2     " let backspace delete indent
set tabstop=2         " an indentation every two columns

filetype plugin indent on

" load plugins
"set rtp+=~/.config/nvim/bundle/*/ " <-- the Vim 7 way

" ----- Aesthetic -----
highlight ColorColumn ctermbg = 4
highlight CursorLine ctermbg  = 0

" ----- vars -----
let mapleader                 = ","
let NERDTreeIgnore            = [ 'node_modules', 'vendor', 'nbproject' ]

set bg=dark
:colorscheme solarized


" ----- Remaps -----
:imap jk <Esc>
:imap JK <Esc>
:imap kj <Esc>
:imap KJ <Esc>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

nnoremap <leader>x @q

" splits
nnoremap <silent> <leader>h :split<CR> 
nnoremap <silent> <leader>v :vsplit<CR> 

" shortcuts
nnoremap <silent> <leader>w :w<CR> 
nnoremap <silent> <leader>d :bd<CR> 
nnoremap <silent> <leader>q :q<CR> 
nnoremap <silent> <leader>f :NERDTreeToggle<CR> 
nnoremap <silent> <leader>sc :e /tmp/scratch.txt<CR> 
nnoremap <silent> <space> :noh<CR> 

" navigation
nnoremap j gj
nnoremap k gk
nnoremap td :tabclose<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tt :tabnew<CR>
vnoremap < <gv
vnoremap > >gv

vnoremap <silent> <leader>a :Tab /=<CR> 
vnoremap <silent> <leader>o :Tab /:<CR> 
vnoremap <silent> <leader>s :sort<CR> 

" snipmate
:imap <Tab> <Plug>snipMateNextOrTrigger
:smap <Tab> <Plug>snipMateNextOrTrigger
:imap <S-Tab> <Plug>snipMateBack
:smap <S-Tab> <Plug>snipMateBack


" ----- Filetype-specific -----
" specify custom file types
au BufNewFile,BufRead *.ejs    set filetype=html
au BufNewFile,BufRead *.hogan  set filetype=html
au BufNewFile,BufRead *.md     set filetype=markdown
au BufNewFile,BufRead *.vue    set filetype=html
au BufNewFile,BufRead *.go    set noexpandtab shiftwidth=2 tabstop=2

" apply 4 space indents to certain filetypes
autocmd FileType php setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4

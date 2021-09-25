" editor settings
" syntax highlighting
syntax on
" enable plugins for specific filetypes
filetype plugin on
" enable indents for specific filetypes
filetype indent on
" colorscheme
colorscheme slate
" add line numbers
set number
" incremental search
set incsearch
" change working directory to the current file
set autochdir
" expand tabs to spaces
set expandtab
" tabs are 4 spaces
set tabstop=4
" expand inserted tabs to 4 spaces
set softtabstop=4
" indent new line to that of previous line
set autoindent
" ignore case in patterns
set ignorecase
" ignore case in patterns unless there are capital letters
set smartcase
" show matching bracket briefly
set showmatch
" draw line the current line
set cursorline
" show command tab completion options
set wildmenu
" show line number and column of cursor
set ruler
" disable preview window on completion
set completeopt-=preview
" allow backspace over autoindent, eol, start
set backspace=indent,eol,start
" timeout for leader key
set timeout ttimeoutlen=50

" key mappings
" map escape sequences to alt combinations (enables alt keymaps)
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
" edit vimrc
nnoremap <silent> <Leader>v :edit ~/.vimrc<CR>
" toggle folds
nnoremap <silent> <Space> za
" file system navigation
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
" fold file block
nnoremap <silent> <Leader>f $V%zf
" map gundo to something useful
nnoremap <silent> <Leader>t :GundoToggle<CR>
" map goyo to something useful
nnoremap <silent> <Leader>g :Goyo<CR>
" jump between ale errors
nnoremap <silent> <C-j> :ALENext<CR>
nnoremap <silent> <C-k> :ALEPrevious<CR>

" plugins
" use vim-plug to load plugins
call plug#begin('~/.vim/plugged')
" autocompletion
Plug 'valloric/youcompleteme', { 'commit': 'd98f896' }
" file system explorer
Plug 'scrooloose/nerdtree'
" vim latex support
Plug 'lervag/vimtex'
" move lines
Plug 'matze/vim-move'
" vim comments
Plug 'tpope/vim-commentary'
" remove distractions when writing
Plug 'junegunn/goyo.vim'
" undo tree
Plug 'sjl/gundo.vim'
" syntax checker
Plug 'dense-analysis/ale'
" statusline
Plug 'vim-airline/vim-airline'
" change surroundings
Plug 'tpope/vim-surround'
" end plugin loading
call plug#end()

" plugin settings and fixes
" default *.tex files to latex
let g:tex_flavor = "latex"
" make gundo use python3
let g:gundo_prefer_python3 = 1
" airline disable whitespace
let g:airline#extensions#whitespace#enabled = 0
" disable vimtex quickfix window
let g:vimtex_quickfix_mode = 0
" set vimtex default pdf viewer
let g:vimtex_view_general_viewer = "evince"
" add commenting for matlab
autocmd FileType matlab setlocal commentstring=%\ %s
" youcompleteme color fix
highlight Pmenu guifg=#ffffaf guibg=#000000
" vimtex ycm compatibility
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
  let g:ycm_semantic_triggers.tex = [
        \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
        \ 're!\\hyperref\[[^]]*',
        \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\(include(only)?|input){[^}]*',
        \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
        \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
        \ ]

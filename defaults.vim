" .vimrc
"
" Appearance.
set tabstop=4 "tab size
set shiftwidth=4
set nowrap

" Syntax configurations
syntax on
" Detect file type.
filetype on

" Search settings.
set ignorecase

" 50 lines of command history and the autocomplete mode.
set history=50
set wildmode=list:longest,full


" * Text Formatting
" Wrap except for comments
"set formatoptions=t
"set textwidth=80
set autoindent
set cindent
" set paste

" Common typos.
" iabbrev teh the
" iabbrev w_for for (int i = 0; i < N; i++) {

" set tags=~/.tags
" if 0 
" colorscheme slate
" endif

filetype plugin on

"map <F1> :!make clean && make <CR>
"map <F1> :!make & <CR>
set spell spelllang=en_us
set nospell
set paste

" Autosaving views on exit and reload on open
" au BufWinLeave * silent! mkview 
autocmd BufWinEnter * silent! loadview 


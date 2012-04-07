" .vimrc
"
" Appearance.
set showmode
set showcmd
set ruler
set tabstop=4 "tab size
set shiftwidth=4
set nowrap

" Syntax configurations
syntax on
" Detect file type.
filetype on

" Search settings.
set nohlsearch
set ignorecase

" 50 lines of command history and the autocomplete mode.
set history=50
set wildmode=list:longest,full

" use [RO] for [readonly] to save space in the message line:
set shortmess+=r

" Hack for color terms.
if &term =~ "xterm"
  if has("terminfo")
    set t_Co=8
    set t_Sf=[3%p1%dm
    set t_Sb=[4%p1%dm
  else
    set t_Co=8
    set t_Sf=[3%dm
    set t_Sb=[4%dm
  endif
endif

 if &term =~ "screen"
   if has("terminfo")
     set t_Co=8
     set t_Sf=[3%p1%dm
     set t_Sb=[4%p1%dm
   else
     set t_Co=8
     set t_Sf=[3%dm
     set t_Sb=[4%dm
   endif
 endif

" * Text Formatting
" Wrap except for comments
"set formatoptions=t
"set textwidth=80
set autoindent
set cindent
" set paste

" * Test Editting 
" TODO read on dictionary / spell check.


" Common typos.
iabbrev teh the
iabbrev w_for for (int i = 0; i < N; i++) {


colorscheme darkblue

" set tags=~/.tags
" if 0 
" colorscheme slate
" endif

" setlocal spell spelllang=en_us

function! Write_For_Loop()
	execute "normal ifor (int i = 0; i < N; i++) {\<CR>}\<Esc>"
endfunction 
command! Wfor call Write_For_Loop()


function! Java_class()

python << __end
#from vim import *
import vim
curLine = int(vim.eval("line(\".\")"));
curFile = vim.eval("expand(\"%:t:r\")");
vim.command("call append(%d, \"public class %s \n {\")" % (curLine, curFile))
vim.command("call append(%d, \"}\")" % (curLine + 1))
__end

endfunction


filetype plugin on
"setlocal spell spelllang=en_us
"map <F1> :!make clean && make <CR>
map <F1> :!make & <CR>
set spell spelllang=en_us
set nospell
set paste

" Nerd Tree Settings
let NERDTreeDirArrows=0
let NERDTreeMinimalUI=1

" Shells
command CTB ConqueTerm bash
let g:ConqueTerm_CloseOnEnd = 0

" Autosaving views on exit and reload on open
" au BufWinLeave * silent! mkview 
au BufWinEnter * silent! loadview 


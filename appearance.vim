
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


" These for for bars at the bottom
" use [RO] for [readonly] to save space in the message line:
set shortmess+=r
set showmode
set showcmd
set ruler

" Search Options
set nohlsearch

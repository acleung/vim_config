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

:python import subprocess
:python import vim
:python fl = vim.eval("expand('%:p')")
:let window=system('xdotool getwindowfocus')
:python scad = subprocess.Popen("exec openscad "+fl, shell=True)
:call system("xdotool windowfocus ".window)
:autocmd VimLeave * :python scad.kill()

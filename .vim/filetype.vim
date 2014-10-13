if exists("did_load_filetypes")
	  finish
  endif
  augroup filetypedetect
    au! BufNewFile,BufRead *.scad setf openscad
  augroup END

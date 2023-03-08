syntax on
set belloff=all

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk_engines = {
        \ '_'                : '-lualatex',
        \ 'pdflatex'         : '-pdf',
        \ 'dvipdfex'         : '-pdfdvi',
        \ 'lualatex'         : '-lualatex',
        \ 'xelatex'          : '-xelatex',
        \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
        \ 'context (luatex)' : '-pdf -pdflatex=context', 
        \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
        \}
let g:vimtex_compiler_latexmk = {
        \ 'build_dir' : '', 
        \ 'callback' : 1,
        \ 'continuous' : 0,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
	\   '-pv'
        \ ],
        \}

call plug#end()

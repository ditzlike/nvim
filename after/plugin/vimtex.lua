vim.g.tex_flavor = 'lualatex'
vim.g.vimtex_compiler_latexmk_engines = {
	_ = '-lualatex',
}
vim.g.vimtex_compiler_latexmk = {
	executable = 'latexmk',
        options = {
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
        },
}

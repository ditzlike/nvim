set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/.vimrc

call plug#begin()
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
Plug 'justinmk/vim-sneak'

" LSP Plugins
" LSP-installation manager
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" CMP Plugins
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'simrat39/rust-tools.nvim'
" Snippet engine
Plug 'hrsh7th/vim-vsnip'

"   treesitter plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plugin for automatic quotes and paranthesis
Plug 'tmsvg/pear-tree'
call plug#end()

" Tab navigation like Firefox.
nnoremap <S-Tab> :tabprevious<CR>
nnoremap <Tab>   :tabnext<CR>
nnoremap <C-t>    :NERDTreeToggle<CR>
nnoremap <C-f>    :Telescope find_files<CR>

" navigate to beginning and end of line
nnoremap ö ^
nnoremap ä $
nnoremap dö d^
nnoremap dä d$
xnoremap ö ^
xnoremap ä $

nnoremap <F1> :below 20sp term://$SHELL<cr>i
tnoremap <F1> <C-\><C-n>:q!<Enter>
nnoremap <F2> <C-w>ji
tnoremap <F2> <C-\><C-n><C-w>k

" LSP+Mason+CMP Setups

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

lua <<EOF
-- require'lsp'
-- require'cmp'
-- require'rust'
require'user.mason'
require'user.cmp'
vim.g["sneak#label"] = true
EOF

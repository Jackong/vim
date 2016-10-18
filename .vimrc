call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

Plug 'tpope/vim-fugitive'

Plug 'c0r73x/neotags.nvim'
Plug 'majutsushi/tagbar'
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
map <C-b> :TagbarToggle<CR>

Plug 'ctrlpvim/ctrlp.vim'

" theme
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

" snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
let g:vim_markdown_folding_disabled = 1
let g:instant_markdown_autostart = 1

" golang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Shougo/neocomplete.vim'
let g:go_fmt_command = "goimports"
let g:neocomplete#enable_at_startup = 1

" js
Plug 'tpope/vim-sensible'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" html
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-Z>'

" lint
Plug 'scrooloose/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'Jackong/syntastic-local-stylelint.vim'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_css_checkers = ['stylelint']

call plug#end()

filetype plugin on

set background=dark
colorscheme gruvbox

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

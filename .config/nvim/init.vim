set number
syntax on

call plug#begin()
Plug 'navarasu/onedark.nvim'
" Plug 'dylanaraps/wal.vim'
" main coq plugin
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ coq Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" CHADTree, a sidebar file explorer
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
" vim taskline
Plug 'vim-airline/vim-airline'
" vim-airline themes
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:coq_settings = { 'auto_start': 'shut-up' }

nnoremap <leader>v <cmd>CHADopen<cr>
nnoremap <leader>l <cmd>call setqflist([])<cr>

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

let g:onedark_style = 'darker'
let g:onedark_transparent_background = 0
colorscheme onedark

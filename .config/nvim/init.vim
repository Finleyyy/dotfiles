set number
syntax on

call plug#begin()
Plug 'navarasu/onedark.nvim'
Plug 'dylanaraps/wal.vim'
Plug 'kevinhwang91/rnvimr'
call plug#end()

let g:onedark_style = 'darker'
let g:onedark_transparent_background = 1
colorscheme onedark

let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>


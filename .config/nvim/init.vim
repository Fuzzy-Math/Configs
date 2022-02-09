set syntax=on

"Set color scheme
if has('nvim') || has('termguicolors')
   set termguicolors
endif

if !has('gui_running')
   set t_Co=256
endif

let g:lightline = {'colorscheme': 'challenger_deep'}
let g:challenger_deep_termcolors = 16
set background=dark
colorscheme challenger_deep
"End color scheme

set rnu
set nu
set smarttab
set tabstop=3
set shiftwidth=3
set expandtab
set noshowmode


let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

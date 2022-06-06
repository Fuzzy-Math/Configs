set syntax=on

"Set color scheme
if has('nvim') || has('termguicolors')
   set termguicolors
endif

if has('TMUX')
   let &t_8f="<Esc>[38;2;%lu;%lu;%lum"
   let &t_8b="<Esc>[48;2;%lu;%lu;%lum"
endif

let g:lightline = {'colorscheme': 'challenger_deep'}
"let g:challenger_deep_termcolors = 16
set background=dark
colorscheme challenger_deep
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi StatusLine guibg=NONE ctermbg=NONE
"End color scheme

set rnu
set nu
set smarttab
set tabstop=3
set shiftwidth=3
set expandtab
set noshowmode

set tags=./tags;
let g:gutentags_ctags_exclude_wildignore = 1
let g:gutentags_ctags_exclude = [
  \'node_modules', '_build', 'build', 'CMakeFiles', '.mypy_cache', 'venv',
  \'*.md', '*.tex', '*.css', '*.html', '*.json', '*.xml', '*.xmls', '*.ui']

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

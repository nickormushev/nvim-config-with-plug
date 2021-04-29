let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_fix_on_save = 1

let g:ale_completion_enabled = 1

nmap <silent> <leader>ne :ALENext<cr>
nmap <silent> <leader>pe :ALEPrevious<cr>

" Error and warning signs.
let g:ale_sign_error = '⤫'
"'⚠'
let g:ale_sign_warning = "\uf071"
"let g:ale_sign_warning = '⚠️'

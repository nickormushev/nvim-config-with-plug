"Run goimports along gofmt on each save. Automatic dependencies
let g:go_fmt_command = "goimports"
"Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1
"Disables the quickfix menu that shows up when tests fail(vim-go)
let g:go_fmt_fail_silently = 1

"Vim-go highlithing
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1


"Debugging mappings
nnoremap <leader>dd :GoDebugStart<CR>
nnoremap <leader>dt :GoDebugTest<CR>
nnoremap <leader>di :GoDebugStep<CR>
nnoremap <leader>do :GoDebugStepOut<CR>
nnoremap <leader>dc :GoDebugContinue<CR>
nnoremap <leader>ds :GoDebugStop<CR>
nnoremap <leader>dn :GoDebugNext<CR>
nnoremap <leader>gt :GoTest<CR>
nnoremap <leader>gr :GoRefferers<CR>

"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:go_metalinter_autosave = 1

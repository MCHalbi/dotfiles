" Map ESC in terminal mode to return to normal mode
tnoremap <leader><Esc> <C-\><C-n>

" Open a buffer below in terminal mode
nnoremap <leader>t :bel 10sp \| term<CR>

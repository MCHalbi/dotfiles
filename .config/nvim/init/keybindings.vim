" Map ESC in terminal mode to return to normal mode
tnoremap <leader><Esc> <C-\><C-n>

" Open a buffer below in terminal mode
nnoremap <leader>t :bel 10sp \| term<CR>

vnoremap <leader><C-c> "+y
noremap <leader><C-v> "+p

nnoremap <F12> :call RunOdooModuleTests()<CR><CR>

" Split navigation
nnoremap <S-Up> <C-w><Up>
nnoremap <S-Down> <C-w><Down>
nnoremap <S-Left> <C-w><Left>
nnoremap <S-Right> <C-w><Right>
nnoremap ¡ <C-w><Up><C-w>_
nnoremap ¿ <C-w><Down><C-w>_

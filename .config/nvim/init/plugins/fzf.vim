nnoremap <C-p> :Files<CR>
nnoremap <leader><C-p> :GFiles<CR>
nnoremap <leader>B :GBranches<CR>
nnoremap <leader>H :History<CR>
nnoremap <leader>C :Commits<CR>

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>),
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

nnoremap <leader><C-g> :GGrep<CR>

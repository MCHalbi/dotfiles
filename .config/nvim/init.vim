let mapleader = " "
source ~/.config/nvim/init/appearance.vim
source ~/.config/nvim/init/color.vim
source ~/.config/nvim/init/tabs.vim
source ~/.config/nvim/init/folding.vim

source ~/.config/nvim/init/plugins.vim

luafile ~/.config/nvim/lsp.lua

" Completion config
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

autocmd BufEnter * lua require'completion'.on_attach()

nnoremap <C-p> :Files<CR>
nnoremap <leader><C-p> :GFiles<CR>
nnoremap <leader>B :GBranches<CR>

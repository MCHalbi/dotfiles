" Install plug.vim if not installed
let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs
      \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet autoload_plug_path

" Add plugins via vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'neovim/nvim-lspconfig'
  " Fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'
  Plug 'tpope/vim-fugitive'
  " SnipMate for snippets
  " (https://github.com/garbas/vim-snipmate)
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  " Airline - Nice status line
  " (https://github.com/vim-airline/vim-airline)
  Plug 'vim-airline/vim-airline'
  " nvim-cmp - Auto completion
  " (https://github.com/hrsh7th/nvim-cmp/)
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  " Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  " PlantUML preview
  Plug 'weirongxu/plantuml-previewer.vim'
  Plug 'tyru/open-browser.vim'
  " Keybindings for XML/HTML tag completion
  Plug 'https://github.com/tpope/vim-ragtag.git'
  Plug 'vinnymeller/swagger-preview.nvim', { 'do': 'npm install -g swagger-ui-watcher'}
  " File system explorer
  Plug 'preservim/nerdtree'
  " Nice CSV formatting
  Plug 'chrisbra/csv.vim'
  Plug 'JeHuiPark/github-co-author-vim-plugin'
call plug#end()

" Configure plugins
source ~/.config/nvim/init/plugins/fzf.vim
source ~/.config/nvim/init/plugins/snipmate.vim
source ~/.config/nvim/init/plugins/nvim-cmp.vim
source ~/.config/nvim/init/plugins/markdown-preview.vim
source ~/.config/nvim/init/plugins/github-co-author-vim-plugin.vim

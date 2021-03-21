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
  Plug 'nvim-lua/completion-nvim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'
  Plug 'tpope/vim-fugitive'
  " SnipMate for snippets
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  " Airline
  Plug 'vim-airline/vim-airline'
call plug#end()

" Configure plugins
source ~/.config/nvim/init/plugins/snipmate.vim

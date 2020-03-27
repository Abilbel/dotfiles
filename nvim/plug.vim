if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
""" Basic plugs
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'prettier/vim-prettier', {'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']}
	Plug 'scrooloose/nerdcommenter'
    Plug 'SirVer/ultisnips'
	Plug 'junegunn/goyo.vim'
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'jreybert/vimagit'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'jiangmiao/auto-pairs'
	Plug 'LukeSmithxyz/vimling'
	Plug 'vimwiki/vimwiki'
    Plug 'bling/vim-airline'
	Plug 'kovetskiy/sxhkd-vim'
	Plug 'wikitopian/hardmode'
	Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
	Plug 'godlygeek/tabular'
	Plug 'neomake/neomake'
""" Languages specific plugs
	Plug 'elixir-editors/vim-elixir'
    Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
	Plug 'pangloss/vim-javascript'
    Plug 'crusoexia/vim-javascript-lib'
    Plug 'epilande/vim-es2015-snippets'
    Plug 'epilande/vim-react-snippets'
    Plug 'mxw/vim-jsx'
    Plug 'slashmili/alchemist.vim'
	Plug 'Shougo/deoplete-clangx'
    Plug 'wokalski/autocomplete-flow'
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'Shougo/neco-syntax'
    Plug 'deoplete-plugins/deoplete-jedi'
""" Themes
	Plug 'flazz/vim-colorschemes'
	Plug 'ayu-theme/ayu-vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tomasr/molokai'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on

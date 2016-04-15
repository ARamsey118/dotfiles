" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=$HOME/.config/nvim/bundle/vundle/
call vundle#begin("$HOME/.config/nvim/bundle")

" let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" Keeping vim rather simple

" Generic
Bundle "itchyny/lightline.vim"
Bundle "tpope/vim-fugitive"

" Completion & snippets
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" Load LaTeX if installed
if filereadable(expand("~/.config/nvim/latex.vim"))
    " Vimtex plugin
    Plugin 'lervag/vimtex'
    source ~/.config/nvim/latex.vim
endif

" Web
Bundle "pangloss/vim-javascript"
Plugin 'Valloric/MatchTagAlways'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'

" Tags
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

"Filetype plugin indent on is required by vundle
filetype plugin indent on

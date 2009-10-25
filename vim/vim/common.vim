" Common vim settings
syntax enable
set mouse=a
set tabstop=8
set shiftwidth=8
colorscheme shisha-theme
runtime ftplugin/man.vim

	function! MyFoldKewlText()
	  let line = getline(v:foldstart)
	  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
	  return v:folddashes . sub
	endfunction
	set foldtext=MyFoldKewlText()

source ~/.vim/plugin/SuperTab.vim
let Tlist_Use_SingleClick=1
source ~/.vim/plugin/taglist.vim
"source ~/.vim/plugin/opsplorer.vim
filetype on
autocmd FileType c,cpp set cindent
set noexpandtab
set smartindent
set nohlsearch
set incsearch
set backspace=indent,eol,start
set ruler

" Trailing whitespace highlight by Kyle Moffet
hi link localWhitespaceError Error
au Syntax * syn match localWhitespaceError /\(\zs\%#\|\s\)\+$/ display
au Syntax * syn match localWhitespaceError / \+\ze\t/ display

" Mini buffer explorer
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplVSplit = 16
let g:miniBufExplForceSyntaxEnable = 0
"let g:miniBufExplSplitToEdge=1

function! IsModifiable()
	let l:CurWinNum = winnr()
	let l:CurBufNum = winbufnr( l:CurWinNum )
	let l:CurBufName = bufname( l:CurBufNum )
	
	return getbufvar(l:CurBufNum, '&modifieable') == 1 )
endfunction

function! IsModified()
	let l:CurWinNum = winnr()
	let l:CurBufNum = winbufnr( l:CurWinNum )
	let l:CurBufName = bufname( l:CurBufNum )
	
	return getbufvar(l:CurBufNum, '&modified')
endfunction

function! MySave()
	if( IsModified() == 1 )
		write
	else
		echo "\r"
	endif

	return 0
endfunction

map <F2> :mkview!<CR>:call MySave()<CR>
map <S-F2> :wall<LF>
map <F3> :Tlist<LF>
map <F4> :set wrap!<bar> :set wrap?<CR>
map <F5> :set incsearch!<bar> :set incsearch?<LF>
map <F6> :call MySave()<LF> :bn<LF>
map <S-F6> :call MySave()<LF> :bp<LF>
map <F7> :set hls!<bar> :set hls?<LF>
map <F8> :w<LF> :bd<LF>
map <S-F8> :bd!<LF>
map <F9> :call MySave()<LF> :make<LF>
map <S-F9> :call MySave()<LF> :make clean<LF>
map <F10> :set number!<bar> :set number?<LF>
noremap <silent> <F11> :call VimCommanderToggle()<CR>
map <F12> :cwindow<LF>
map <S-F12> :copen<LF>
imap <S-Insert> <MiddleMouse>

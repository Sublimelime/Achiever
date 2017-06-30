let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 .factorio/mods-mine/Achiever_0.1.0/internal.lua
badd +9 .factorio/mods-mine/Achiever_0.1.0/scripted.lua
badd +2 .factorio/mods-mine/Achiever_0.1.0/data.lua
badd +4 .factorio/mods-mine/Achiever_0.1.0/locale/en/locale.cfg
badd +2 .factorio/mods-mine/Achiever_0.1.0/control.lua
badd +26 .vim/vimrc
args .factorio/mods-mine/Achiever_0.1.0/internal.lua .factorio/mods-mine/Achiever_0.1.0/scripted.lua
edit .factorio/mods-mine/Achiever_0.1.0/scripted.lua
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 25 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 117 + 102) / 204)
exe '2resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 117 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 86 + 102) / 204)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
2
normal! zo
3
normal! zo
9
normal! zo
let s:l = 11 - ((10 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 018|
wincmd w
argglobal
edit .factorio/mods-mine/Achiever_0.1.0/control.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
wincmd w
argglobal
edit .factorio/mods-mine/Achiever_0.1.0/internal.lua
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
2
normal! zo
3
normal! zo
10
normal! zo
20
normal! zo
29
normal! zo
38
normal! zo
45
normal! zo
let s:l = 51 - ((45 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 25 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 117 + 102) / 204)
exe '2resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 117 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 86 + 102) / 204)
tabedit .factorio/mods-mine/Achiever_0.1.0/locale/en/locale.cfg
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 041|
2wincmd w
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.factorio/mods-mine/Achiever_0.1.0
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +26 control.lua
badd +0 internal.lua
badd +32 scripted.lua
badd +0 locale/en/locale.cfg
args control.lua internal.lua scripted.lua
edit scripted.lua
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 22 + 24) / 48)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=7
setlocal fen
2
normal! zo
3
normal! zc
9
normal! zc
15
normal! zc
21
normal! zc
27
normal! zc
let s:l = 32 - ((31 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
wincmd w
argglobal
edit internal.lua
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
75
normal! zo
76
normal! zo
let s:l = 81 - ((80 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
81
normal! 0
wincmd w
argglobal
edit control.lua
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=7
setlocal fen
let s:l = 5 - ((4 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
exe '1resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 22 + 24) / 48)
tabedit locale/en/locale.cfg
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit locale/en/locale.cfg
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
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

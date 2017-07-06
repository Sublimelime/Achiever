let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.factorio/mods-mine/Achiever_0.2.0
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +26 control.lua
badd +1 internal.lua
badd +1 scripted.lua
badd +36 locale/en/locale.cfg
badd +0 ~/.factorio/mods-mine/Achiever_0.2.0/info.json
badd +0 ~/.factorio/mods-mine/Achiever_0.2.0/locale/en/bobs.cfg
badd +1 ~/.factorio/mods-mine/Achiever_0.2.0/bobsAchievments.lua
badd +1 ~/.factorio/mods-mine/Achiever_0.2.0/bobsAchievements.lua
badd +1 ~/.factorio/mods-mine/Achiever_0.2.0/bobsInternal.lua
badd +0 ~/.factorio/mods-mine/Achiever_0.2.0/bobsScripted.lua
badd +0 ~/.factorio/mods-mine/Achiever_0.2.0/data.lua
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
exe '1resize ' . ((&lines * 22 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 22 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 20 + 23) / 46)
argglobal
edit scripted.lua
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
let s:l = 34 - ((8 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
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
let s:l = 81 - ((3 * winheight(0) + 11) / 22)
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
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
127
normal! zo
let s:l = 3 - ((2 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 22 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 22 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 20 + 23) / 46)
tabedit locale/en/locale.cfg
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
exe '1resize ' . ((&lines * 41 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 41 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 1 + 23) / 46)
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
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/.factorio/mods-mine/Achiever_0.2.0/locale/en/bobs.cfg
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit ~/.factorio/mods-mine/Achiever_0.2.0/info.json
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
silent! normal! zE
let s:l = 5 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 024|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 41 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 41 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 1 + 23) / 46)
tabedit ~/.factorio/mods-mine/Achiever_0.2.0/bobsInternal.lua
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
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 21 + 23) / 46)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/.factorio/mods-mine/Achiever_0.2.0/bobsScripted.lua
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/.factorio/mods-mine/Achiever_0.2.0/bobsAchievements.lua
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 175)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 175)
exe '3resize ' . ((&lines * 21 + 23) / 46)
tabedit ~/.factorio/mods-mine/Achiever_0.2.0/data.lua
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/.factorio/mods-mine/Achiever_0.2.0/data.lua
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=7
setlocal fen
6
normal! zo
let s:l = 3 - ((2 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
3wincmd w
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

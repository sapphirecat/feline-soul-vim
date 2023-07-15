" Name: Feline Soul
" Author: sapphirecat <devel@sapphirepaw.org>
" Last Changed: 2019-01-12
"
" NOTE: DO NOT, under any circumstance, set background to ANYTHING.
" The README.txt distributed with vim lies about this. If you set background
" to its default, then whenever the option is changed, vim reverts to the
" default color scheme instead of reloading yours with the fresh &bg value.

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = 'feline_soul'

hi StatusLine   cterm=NONE ctermfg=black ctermbg=green
hi StatusLineNC cterm=NONE ctermfg=black ctermbg=lightgray
hi VertSplit    cterm=NONE ctermfg=gray  ctermbg=black

hi Comment      ctermfg=darkcyan
hi Function     ctermfg=darkgreen
hi Search       ctermfg=white     ctermbg=brown
hi SpecialKey                                   guifg=gray60

if &background == "dark"
	hi Normal                                  guifg=gray90  guibg=#262423
	hi Visual                                                guibg=#373a35
	hi Folded  ctermfg=darkgreen ctermbg=black               guibg=black
	hi Function                                guifg=green2
	hi Comment                                 guifg=#858cb8
	hi LineNr  ctermfg=darkgray  ctermbg=black guifg=gray40  guibg=black
	hi NonText ctermfg=darkmagenta             guifg=#774477
	hi FoldColumn ctermfg=white                guifg=#ffcb77 guibg=black
	hi CursorLine                                            guibg=#323743
	hi CursorColumn                                          guibg=#323743
	hi SpecialKey ctermfg=darkblue

	if !exists("g:feline_soul_perl_quotes") || g:feline_soul_perl_quotes
		hi perlStringStartEnd ctermfg=brown
	endif
else
	hi Normal                                     guifg=black   guibg=#ffffff
	hi Visual                                                   guibg=#e2f7c7
	hi StatusLine               ctermbg=darkgreen guifg=gray50
	hi StatusLineNC                               guifg=gray60
	hi VertSplit                                  guifg=gray60
	hi Folded  ctermfg=darkblue ctermbg=white                   guibg=Grey92
	hi Special ctermfg=darkblue                   guifg=darkslateblue
	hi Function                                   guifg=#007500
	hi Constant                                   guifg=magenta4
	hi Identifier                                 guifg=#007070
	hi Comment                                    guifg=#6f759a
	hi Search                                                   guibg=#ffde00
	hi LineNr  ctermfg=brown    ctermbg=white     guifg=Grey25  guibg=Grey90
	hi NonText ctermfg=magenta                    guifg=#ccaacc
	hi FoldColumn                                 guifg=#774a00 guibg=Grey90
	hi CursorLine                                               guibg=Grey95
	hi CursorColumn                                             guibg=Grey95
	if !exists("g:feline_soul_perl_quotes") || g:feline_soul_perl_quotes
		hi perlStringStartEnd ctermfg=darkgray
	endif
endif

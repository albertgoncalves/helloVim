highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="bla"

" apple terminal cursor: block | 'carnation' | 80% opacity | blink
hi Normal           ctermfg=231     ctermbg=235     cterm=none

hi CursorLine       ctermfg=none    ctermbg=237     cterm=none
hi CursorLineNr     ctermfg=249     ctermbg=none    cterm=bold
hi ColorColumn      ctermfg=none    ctermbg=237     cterm=none

hi LineNr           ctermfg=243     ctermbg=none    cterm=none
hi NonText          ctermfg=189     ctermbg=none    cterm=bold

hi Visual           ctermfg=195     ctermbg=197     cterm=none
hi Search           ctermfg=195     ctermbg=197     cterm=none
hi MatchParen       ctermfg=none    ctermbg=93      cterm=none

hi Comment          ctermfg=243     ctermbg=none    cterm=none
hi SpecialComment   ctermfg=243     ctermbg=none    cterm=none

hi Structure        ctermfg=110     ctermbg=none    cterm=bold
hi Include          ctermfg=110     ctermbg=none    cterm=none

hi Keyword          ctermfg=195     ctermbg=none    cterm=bold
hi Statement        ctermfg=122     ctermbg=none    cterm=bold
hi Conditional      ctermfg=195     ctermbg=none    cterm=none

hi Function         ctermfg=43      ctermbg=none    cterm=bold
hi Type             ctermfg=195     ctermbg=none    cterm=bold
hi Typedef          ctermfg=195     ctermbg=none    cterm=bold
hi Special          ctermfg=195     ctermbg=none    cterm=bold
hi Identifier       ctermfg=195     ctermbg=none    cterm=bold

hi Operator         ctermfg=195     ctermbg=none    cterm=bold

hi String           ctermfg=109     ctermbg=none    cterm=none
hi Character        ctermfg=109     ctermbg=none    cterm=bold
hi Title            ctermfg=195     ctermbg=none    cterm=bold
hi Search           ctermfg=195     ctermbg=none    cterm=bold

hi Constant         ctermfg=15      ctermbg=none    cterm=bold
hi SpecialChar      ctermfg=15      ctermbg=none    cterm=none
hi PreProc          ctermfg=15      ctermbg=none    cterm=none

hi Number           ctermfg=153     ctermbg=none    cterm=none
hi Float            ctermfg=153     ctermbg=none    cterm=none

hi Boolean          ctermfg=218     ctermbg=none    cterm=bold
hi Underlined       ctermbg=none    ctermfg=none    cterm=reverse

hi Todo             ctermfg=15      ctermbg=none    cterm=reverse

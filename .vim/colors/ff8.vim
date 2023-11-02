" Colors used
" #404040  " very dark grey (almost black)
" #616060  " dark grey
" #8f8f8f  " light grey
" #f8f8f8  " very light grey (almost white)
" #ff8ff8  " penk

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="ff8"

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          guifg=#f8f8f8    guibg=#616060    gui=NONE
hi Cursor          guifg=#8f8f8f    guibg=#616060    gui=NONE
hi CursorLine      guifg=#404040    guibg=#8f8f8f    gui=NONE    cterm=NONE
hi LineNr          guifg=#f8f8f8    guibg=#616060    gui=NONE
hi CursorLineNR    guifg=#ff8ff8    guibg=#616060    gui=NONE    cterm=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn    guifg=#ff8ff8    guibg=#8f8f8f    gui=NONE
hi FoldColumn      guifg=#404040    guibg=#8f8f8f    gui=NONE
hi SignColumn      guifg=#404040    guibg=#616060    gui=NONE
hi Folded          guifg=#404040    guibg=#616060    gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit       guifg=#f8f8f8    guibg=#616060    gui=NONE
hi ColorColumn     guifg=#ff8ff8    guibg=#616060    gui=NONE
hi TabLine         guifg=#616060    guibg=#f8f8f8    gui=NONE
hi TabLineFill     guifg=#404040    guibg=#616060    gui=NONE
hi TabLineSel      guifg=#f8f8f8    guibg=#ff8ff8    gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       guifg=#f8f8f8    guibg=#616060    gui=NONE
hi Search          guifg=#616060    guibg=#ff8ff8    gui=NONE
hi IncSearch       guifg=#616060    guibg=#ff8ff8    gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      guifg=#ff8ff8    guibg=#f8f8f8    gui=NONE
hi StatusLineNC    guifg=#f8f8f8    guibg=#616060    gui=NONE
hi WildMenu        guifg=#ff8ff8    guibg=#616060    gui=NONE
hi Question        guifg=#404040    guibg=#616060    gui=NONE
" hi Title           guifg=#f8f8f8    guibg=#ff8ff8    gui=NONE
hi ModeMsg         guifg=#404040    guibg=#616060    gui=NONE
hi MoreMsg         guifg=#ff8ff8    guibg=#616060    gui=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen      guifg=#ff8ff8    guibg=NONE    gui=NONE
hi Visual          guifg=#f8f8f8    guibg=#404040    gui=NONE
hi VisualNOS       guifg=#f8f8f8    guibg=#404040    gui=NONE
hi NonText         guifg=#616060    guibg=#616060    gui=NONE

hi Todo            guifg=#f8f8f8    guibg=#616060    gui=NONE
hi Underlined      guifg=#f8f8f8    guibg=#616060    gui=NONE
hi Error           guifg=#404040    guibg=#616060    gui=NONE
hi ErrorMsg        guifg=#404040    guibg=#616060    gui=NONE
hi WarningMsg      guifg=#404040    guibg=#616060    gui=NONE
hi Ignore          guifg=#404040    guibg=#616060    gui=NONE
hi SpecialKey      guifg=#404040    guibg=#616060    gui=NONE
hi WhiteSpaceChar  guifg=#404040    guibg=#616060    gui=NONE
hi WhiteSpace      guifg=#404040    guibg=#616060    gui=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant        guifg=#f8f8f8    guibg=NONE    gui=NONE
hi String          guifg=#f8f8f8    guibg=NONE    gui=NONE
hi StringDelimiter guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Character       guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Number          guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Boolean         guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Float           guifg=#f8f8f8    guibg=NONE    gui=NONE

hi Identifier      guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Function        guifg=#f8f8f8    guibg=NONE    gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Conditional     guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Repeat          guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Label           guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Operator        guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Keyword         guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Exception       guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Comment         guifg=#8f8f8f    guibg=NONE    gui=NONE

hi Special         guifg=#f8f8f8    guibg=NONE    gui=NONE
hi SpecialChar     guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Tag             guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Delimiter       guifg=#f8f8f8    guibg=NONE    gui=NONE
hi SpecialComment  guifg=#8f8f8f    guibg=NONE    gui=NONE
hi Debug           guifg=#f8f8f8    guibg=NONE    gui=NONE

" ----------
" - C like -
" ----------
hi PreProc         guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Include         guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Define          guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Macro           guifg=#f8f8f8    guibg=NONE    gui=NONE
hi PreCondit       guifg=#f8f8f8    guibg=NONE    gui=NONE

hi Type            guifg=#f8f8f8    guibg=NONE    gui=NONE
hi StorageClass    guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Structure       guifg=#f8f8f8    guibg=NONE    gui=NONE
hi Typedef         guifg=#f8f8f8    guibg=NONE    gui=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         guifg=#f8f8f8    guibg=#616060    gui=NONE
hi DiffChange      guifg=#f8f8f8    guibg=#616060    gui=NONE
hi DiffDelete      guifg=#f8f8f8    guibg=#616060    gui=NONE
hi DiffText        guifg=#f8f8f8    guibg=#616060    gui=NONE

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           guifg=#8f8f8f    guibg=#616060    gui=NONE
hi PmenuSel        guifg=#8f8f8f    guibg=#616060    gui=NONE
hi PmenuSbar       guifg=#8f8f8f    guibg=#616060    gui=NONE
hi PmenuThumb      guifg=#8f8f8f    guibg=#616060    gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        guifg=#ff8ff8    guibg=#616060    gui=NONE
hi SpellCap        guifg=#f8f8f8    guibg=#616060    gui=NONE
hi SpellLocal      guifg=#f8f8f8    guibg=#616060    gui=NONE
hi SpellRare       guifg=#f8f8f8    guibg=#616060    gui=NONE

" ******************** base
set background=dark

hi clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "cmbw"

" ********************
hi Normal ctermfg=grey ctermbg=black
hi Normal guifg=grey guibg=black
hi NonText ctermfg=cyan ctermbg=black
hi NonText guifg=cyan guibg=black
hi SpecialKey ctermfg=cyan ctermbg=black
hi SpecialKey guifg=cyan guibg=black

" ******************** interface
hi LineNr term=bold
hi LineNr cterm=bold ctermfg=cyan
hi LineNr gui=bold guifg=cyan

hi Cursor term=bold
hi Cursor cterm=bold
hi Cursor gui=bold

hi CursorLine term=NONE
hi CursorLine cterm=NONE ctermfg=white ctermbg=NONE
hi CursorLine gui=NONE guifg=white guibg=NONE

hi CursorLineNr term=bold
hi CursorLineNr cterm=bold ctermfg=magenta
hi CursorLineNr gui=bold guifg=magenta

hi MatchParen term=bold
hi MatchParen cterm=bold ctermfg=magenta ctermbg=black
hi MatchParen gui=bold guifg=magenta guibg=black

hi Search term=bold
hi Search cterm=bold ctermbg=black ctermfg=lightcyan
hi Search gui=bold guibg=black guifg=lightcyan

hi WildMenu term=bold
hi WildMenu cterm=bold ctermfg=black ctermbg=magenta
hi WildMenu gui=bold guifg=black guibg=magenta

hi EndOfBuffer ctermfg=darkgray
hi EndOfBuffer guifg=darkgray

hi StatusLine term=standout
hi StatusLine cterm=bold ctermfg=black ctermbg=lightcyan
hi StatusLine gui=bold guifg=black guibg=lightcyan

hi StatusLineTerm term=standout
hi StatusLineTerm cterm=bold ctermfg=black ctermbg=lightcyan
hi StatusLineTerm gui=bold guifg=black guibg=lightcyan

hi StatusLineTermNC term=bold
hi StatusLineTermNC cterm=bold ctermfg=black ctermbg=lightcyan
hi StatusLineTermNC gui=bold guifg=black guibg=lightcyan

hi Folded term=bold
hi Folded cterm=bold ctermfg=darkcyan ctermbg=black
hi Folded gui=bold guifg=darkcyan guibg=black

hi Visual term=bold
hi Visual cterm=bold ctermfg=black ctermbg=lightcyan
hi Visual gui=bold guifg=black guibg=lightcyan

" ******************** warnings, errors, etc
hi Question term=bold
hi Question cterm=bold ctermfg=lightcyan
hi Question gui=bold guifg=lightcyan

hi ModeMsg term=standout
hi ModeMsg cterm=bold ctermfg=lightcyan
hi ModeMsg gui=bold guifg=lightcyan

hi MoreMsg term=standout
hi MoreMsg cterm=bold ctermfg=lightcyan
hi MoreMsg gui=bold guifg=lightcyan

hi WarningMsg term=standout
hi WarningMsg cterm=bold ctermfg=black ctermbg=lightcyan
hi WarningMsg gui=bold guifg=black guibg=lightcyan

hi ErrorMsg term=standout
hi ErrorMsg cterm=bold ctermfg=black ctermbg=lightcyan
hi ErrorMsg gui=bold guifg=black guibg=lightcyan

hi Error term=standout
hi Error cterm=bold ctermfg=black ctermbg=lightcyan
hi Error gui=bold guifg=black guibg=lightcyan

" ******************** diff
hi DiffChange term=standout
hi DiffChange cterm=standout ctermfg=gray ctermbg=black
hi DiffChange gui=standout guifg=gray guibg=black

hi DiffText term=standout
hi DiffText cterm=standout,bold,italic ctermfg=gray ctermbg=black
hi DiffText gui=standout,bold,italic guifg=gray guibg=black

hi DiffAdd term=standout
hi DiffAdd cterm=standout,bold,italic ctermfg=lightcyan ctermbg=black
hi DiffAdd gui=standout,bold,italic guifg=lightcyan guibg=black

hi DiffDelete term=standout
hi DiffDelete cterm=standout ctermfg=darkcyan ctermbg=black
hi DiffDelete gui=standout guifg=darkcyan guibg=black


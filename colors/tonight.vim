" Name:         Tonight
" Description:  Never put off till tomorrow what you can do tonight
" Author:       jnnl <juho@jnnl.net>
" Maintainer:   jnnl <juho@jnnl.net>
" Website:      https://github.com/jnnl/vim-tonight
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Tonight] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'tonight'

hi ColorColumn ctermfg=251 ctermbg=238 guifg=#c6c6c6 guibg=#444444 guisp=NONE cterm=NONE,none gui=NONE,none
hi Conceal ctermfg=251 ctermbg=238 guifg=#c6c6c6 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=251 ctermbg=238 guifg=#c6c6c6 guibg=#444444 guisp=NONE cterm=NONE,none gui=NONE,none
hi CursorLineNr ctermfg=241 ctermbg=235 guifg=#626262 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=253 ctermbg=22 guifg=#dadada guibg=#005f00 guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=52 ctermbg=52 guifg=#5f0000 guibg=#5f0000 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=238 guifg=NONE guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=NONE ctermbg=23 guifg=NONE guibg=#005f5f guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=109 ctermbg=235 guifg=#87afaf guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=238 ctermbg=235 guifg=#444444 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=253 ctermbg=52 guifg=#dadada guibg=#5f0000 guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=251 ctermbg=235 guifg=#c6c6c6 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=244 ctermbg=235 guifg=#808080 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=235 ctermbg=173 guifg=#262626 guibg=#d7875f guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=238 ctermbg=235 guifg=#444444 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=241 guifg=NONE guibg=#626262 guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=143 ctermbg=235 guifg=#afaf5f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=143 ctermbg=235 guifg=#afaf5f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=241 ctermbg=235 guifg=#626262 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=251 ctermbg=235 guifg=#c6c6c6 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=251 ctermbg=241 guifg=#c6c6c6 guibg=#626262 guisp=NONE cterm=NONE,none gui=NONE,none
hi PmenuSbar ctermfg=244 ctermbg=244 guifg=#808080 guibg=#808080 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=241 ctermbg=251 guifg=#626262 guibg=#c6c6c6 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=244 ctermbg=241 guifg=#808080 guibg=#626262 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=143 ctermbg=235 guifg=#afaf5f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=235 ctermbg=180 guifg=#262626 guibg=#d7af87 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=235 ctermbg=180 guifg=#262626 guibg=#d7af87 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=251 ctermbg=235 guifg=#c6c6c6 guibg=#262626 guisp=NONE cterm=NONE,none gui=NONE,none
hi SpecialKey ctermfg=241 ctermbg=235 guifg=#626262 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=167 ctermbg=235 guifg=#d75f5f guibg=#262626 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi SpellCap ctermfg=109 ctermbg=235 guifg=#87afaf guibg=#262626 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi SpellLocal ctermfg=143 ctermbg=235 guifg=#afaf5f guibg=#262626 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi SpellRare ctermfg=180 ctermbg=235 guifg=#d7af87 guibg=#262626 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi StatusLine ctermfg=180 ctermbg=238 guifg=#d7af87 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=251 ctermbg=238 guifg=#c6c6c6 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=251 ctermbg=238 guifg=#c6c6c6 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=251 ctermbg=238 guifg=#c6c6c6 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=180 ctermbg=238 guifg=#d7af87 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=244 ctermbg=235 guifg=#808080 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=238 ctermbg=238 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=238 guifg=NONE guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=167 ctermbg=235 guifg=#d75f5f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=235 ctermbg=180 guifg=#262626 guibg=#d7af87 guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=244 ctermbg=235 guifg=#808080 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=173 ctermbg=235 guifg=#d7875f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=143 ctermbg=235 guifg=#afaf5f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi! link Character Constant
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant
hi Identifier ctermfg=109 ctermbg=235 guifg=#87afaf guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi! link Function Identifier
hi Statement ctermfg=139 ctermbg=235 guifg=#af87af guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Statement
hi! link Keyword Statement
hi! link Exception Statement
hi! link PreProc Statement
hi! link Include Statement
hi! link Define Statement
hi! link Macro Statement
hi! link PreCondit Statement
hi Type ctermfg=180 ctermbg=235 guifg=#d7af87 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
hi Special ctermfg=143 ctermbg=235 guifg=#afaf5f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link Tag Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug Special
hi Underlined ctermfg=251 ctermbg=235 guifg=#c6c6c6 guibg=#262626 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Ignore ctermfg=241 ctermbg=235 guifg=#626262 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=167 ctermbg=235 guifg=#d75f5f guibg=#262626 guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Todo ctermfg=173 ctermbg=235 guifg=#d7875f guibg=#262626 guisp=NONE cterm=NONE gui=NONE
finish

" Background: dark
" Color: foreground   #c6c6c6 ~
" Color: background   #262626 ~
" Color: grey0        #444444 ~
" Color: grey1        #626262 ~
" Color: grey2        #808080 ~
" Color: grey3        #dadada ~
" Color: red          #d75f5f ~
" Color: dark_red     #5f0000 ~
" Color: orange       #d7875f ~
" Color: light_orange #d7af87 ~
" Color: green        #afaf5f ~
" Color: dark_green   #005f00 ~
" Color: blue         #87afaf ~
" Color: dark_blue    #005f5f ~
" Color: purple       #af87af ~
" ColorColumn    foreground   grey0      none
" Conceal        foreground   grey0
" Cursor         none         none       reverse
" CursorColumn   ->           CursorLine
" CursorLine     foreground   grey0      none
" CursorLineNr   grey1        background
" DiffAdd        grey3        dark_green
" DiffDelete     dark_red     dark_red
" DiffChange     none         grey0
" DiffText       none         dark_blue
" Directory      blue         background
" EndOfBuffer    grey0        background
" ErrorMsg       grey3        dark_red
" FoldColumn     foreground   background
" Folded         grey2        background
" IncSearch      background   orange
" LineNr         grey0        background
" MatchParen     none         grey1
" ModeMsg        green        background
" MoreMsg        green        background
" NonText        grey1        background
" Normal         foreground   background
" Pmenu          foreground   grey1      none
" PmenuSbar      grey2        grey2
" PmenuSel       grey1        foreground
" PmenuThumb     grey2        grey1
" Question       green        background
" QuickFixLine   background   light_orange
" Search         background   light_orange
" SignColumn     foreground   background none
" SpecialKey     grey1        background
" SpellBad       red          background italic
" SpellCap       blue         background italic
" SpellLocal     green        background italic
" SpellRare      light_orange background italic
" StatusLine     light_orange grey0
" StatusLineNC   foreground   grey0
" TabLine        foreground   grey0
" TabLineFill    foreground   grey0
" TabLineSel     light_orange grey0
" Title          grey2        background
" VertSplit      grey0        grey0
" Visual         none         grey0
" WarningMsg     red          background
" WildMenu       background   light_orange
" Comment        grey2        background
" Constant       orange       background
" String         green        background
" Character      ->           Constant
" Number         ->           Constant
" Boolean        ->           Constant
" Float          ->           Constant
" Identifier     blue         background
" Function       ->           Identifier
" Statement      purple       background
" Conditional    ->           Statement
" Repeat         ->           Statement
" Label          ->           Statement
" Operator       ->           Statement
" Keyword        ->           Statement
" Exception      ->           Statement
" PreProc        ->           Statement
" Include        ->           Statement
" Define         ->           Statement
" Macro          ->           Statement
" PreCondit      ->           Statement
" Type           light_orange background
" StorageClass   ->           Type
" Structure      ->           Type
" Typedef        ->           Type
" Special        green        background
" SpecialChar    ->           Special
" Tag            ->           Special
" Delimiter      ->           Special
" SpecialComment ->           Special
" Debug          ->           Special
" Underlined     foreground   background underline
" Ignore         grey1        background
" Error          red          background underline
" Todo           orange       background

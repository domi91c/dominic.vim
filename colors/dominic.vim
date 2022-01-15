if exists("syntax on")
syntax reset
endif

set termguicolors
set bg=dark
let g:colors_name = "dominic"

let s:bg="#212121"
let s:bg_lighter="#262626"
let s:bg_lightest="#303030"
let s:fg="#bcbcbc"
let s:fg_darkest="#4e4e4e"
let s:fg_darker="#777777"
let s:fg_lighter="#444444"
let s:fg_lightest="#c6c6c6"
let s:green_base="#7f9b00"
let s:green_lighter="#87af87"
let s:green_lightest="#afd7af"
let s:red_base="#745351"
let s:red_bright="#ae005f"
let s:yellow_base="#afaf87"
let s:yellow_bright="#fcf6c6"
let s:cyan_base="#79a1a5"
let s:cyan_bright="#05a498"
let s:magenta_base="#767697"
let s:magenta_bright="#6d6dca"
let s:white_base="#91a3ae"
let s:white_bright="#92a0a1"

function! Hi(name, guifg, guibg, gui)
  let l:cmd = "hi " . a:name . " guibg=" . a:guibg . " guifg=" . a:guifg . " gui=" . a:gui
  exe l:cmd
endfunction

" syntax
call Hi('Keyword',               s:green_base, 'NONE', 'bold')
call Hi('Define',                s:cyan_base, 'NONE', 'bold')
call Hi('Statement',             s:cyan_base, 'NONE', 'NONE')
call Hi('Identifier',            s:green_lightest, 'NONE', 'NONE')
call Hi('Function',              s:yellow_bright, 'NONE', 'NONE')
call Hi('String',                s:yellow_base, 'NONE', 'NONE')
call Hi('Boolean',               s:yellow_base, 'NONE', 'NONE')
call Hi('Number',                s:yellow_base, 'NONE', 'NONE')
call Hi('Operator',              s:green_lighter, 'NONE', 'NONE')
call Hi('PreProc',               s:green_lighter, 'NONE', 'NONE')
call Hi('Type',                  s:white_base, 'NONE', 'NONE')
call Hi('Constant',              s:green_lighter, 'NONE', 'NONE')
" call Hi('rubySymbol',            s:white_base, 'NONE', 'NONE')
call Hi('Comment',               s:fg_darkest, 'NONE', 'NONE')
call Hi('Special',               s:cyan_base, 'NONE', 'NONE')
call Hi('Keyword',               s:cyan_base, 'NONE', 'NONE')

" interface
call Hi('Normal',                s:fg, s:bg_lighter, 'NONE')
call Hi('LineNr',                s:fg_darkest, s:bg, 'NONE')
call Hi('SignColumn',            s:fg_darkest, s:bg, 'NONE')
call Hi('StatusLine',            s:fg_lightest, s:bg, 'underline')
call Hi('StatusLineNC',          s:fg_lightest, s:bg, 'NONE')
call Hi('VertSplit',             s:bg, s:bg, 'NONE')
call Hi('Pmenu',                 s:fg_lightest, s:bg_lightest, 'NONE')
call Hi('PmenuSel',              s:bg, s:green_base, 'NONE')
call Hi('MatchParen',            s:red_bright, s:bg_lighter, 'NONE')
call Hi('CursorLine',            'NONE', s:bg_lightest, 'NONE')
call Hi('CursorColumn',          'NONE', s:bg_lightest, 'NONE')
call Hi('Visual',                s:bg, s:white_base, 'NONE')
call Hi('Search',                s:bg, s:cyan_bright, 'NONE')
call Hi('IncSearch',             s:bg, s:magenta_bright, 'bold')
call Hi('ErrorMsg',              s:bg, s:red_base, 'bold')
call Hi('Error',                 s:bg, s:red_base, 'bold')
call Hi('NonText',               s:bg, s:bg, 'bold')

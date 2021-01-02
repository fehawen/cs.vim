highlight clear
set background=dark

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "cs"

let s:cterm = {}

let s:cterm.none            = { "default": "NONE" }
let s:cterm.background      = { "default": "0" }
let s:cterm.red_dim         = { "default": "1" }
let s:cterm.green_dim       = { "default": "2" }
let s:cterm.yellow_dim      = { "default": "3" }
let s:cterm.blue_dim        = { "default": "4" }
let s:cterm.magenta_dim     = { "default": "5" }
let s:cterm.cyan_dim        = { "default": "6" }
let s:cterm.white_dim       = { "default": "7" }
let s:cterm.black           = { "default": "8" }
let s:cterm.red_bright      = { "default": "9" }
let s:cterm.green_bright    = { "default": "10" }
let s:cterm.yellow_bright   = { "default": "11" }
let s:cterm.blue_bright     = { "default": "12" }
let s:cterm.magenta_bright  = { "default": "13" }
let s:cterm.cyan_bright     = { "default": "14" }
let s:cterm.white_bright    = { "default": "15" }

function! s:hi(group, ctermfg, ctermbg, attr)
    if s:cterm(a:ctermfg) != ""
        exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
    endif
    if s:cterm(a:ctermbg) != ""
        exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
    endif
    if a:attr != ""
        exec "hi " . a:group . " cterm=" . a:attr
    endif
endfunction

function! s:cterm(color)
    return a:color["default"]
endfunction

" Neovim terminal colors
if has("nvim")
    let g:terminal_color_0  = s:cterm(s:cterm.background)
    let g:terminal_color_1  = s:cterm(s:cterm.red_dim)
    let g:terminal_color_2  = s:cterm(s:cterm.green_dim)
    let g:terminal_color_3  = s:cterm(s:cterm.yellow_dim)
    let g:terminal_color_4  = s:cterm(s:cterm.blue_dim)
    let g:terminal_color_5  = s:cterm(s:cterm.magenta_dim)
    let g:terminal_color_6  = s:cterm(s:cterm.cyan_dim)
    let g:terminal_color_7  = s:cterm(s:cterm.white_dim)
    let g:terminal_color_8  = s:cterm(s:cterm.black)
    let g:terminal_color_9  = s:cterm(s:cterm.red_bright)
    let g:terminal_color_10 = s:cterm(s:cterm.green_bright)
    let g:terminal_color_11 = s:cterm(s:cterm.yellow_bright)
    let g:terminal_color_12 = s:cterm(s:cterm.blue_bright)
    let g:terminal_color_13 = s:cterm(s:cterm.magenta_bright)
    let g:terminal_color_14 = s:cterm(s:cterm.cyan_bright)
    let g:terminal_color_15 = s:cterm(s:cterm.white_bright)
endif

" Editor colors
call s:hi("User1",                             s:cterm.background,       s:cterm.white_dim,        "")
call s:hi("User2",                             s:cterm.white_dim,        s:cterm.background,       "")
call s:hi("User3",                             s:cterm.background,       s:cterm.black,            "")
call s:hi("User4",                             s:cterm.black,            s:cterm.background,       "")
call s:hi("User5",                             s:cterm.background,       s:cterm.background,       "")

" Statusline colors
" Use with e.g. fehawen/ls.vim
call s:hi("StatusLine",                        s:cterm.yellow_bright,    s:cterm.background,       "NONE")
call s:hi("StatusLineNC",                      s:cterm.black,            s:cterm.background,       "NONE")
call s:hi("StatusLineTerm",                    s:cterm.background,       s:cterm.background,       "NONE")
call s:hi("StatusLineTemrNC",                  s:cterm.black,            s:cterm.background,       "NONE")

" Ale colors
call s:hi("ALEInfoSign",                       s:cterm.black,            s:cterm.none,             "")
call s:hi("ALEErrorSign",                      s:cterm.black,            s:cterm.none,             "")
call s:hi("ALEWarningSign",                    s:cterm.black,            s:cterm.none,             "")
call s:hi("ALEStyleErrorSign",                 s:cterm.black,            s:cterm.none,             "")
call s:hi("ALEStyleWarningSign",               s:cterm.black,            s:cterm.none,             "")
call s:hi("ALEInfoLine",                       s:cterm.black,            s:cterm.none,             "")
call s:hi("ALEErrorLine",                      s:cterm.black,            s:cterm.none,             "")
call s:hi("ALEWarningLine",                    s:cterm.black,            s:cterm.none,             "")

call s:hi("EndOfBuffer",                       s:cterm.background,       "",                       "")
call s:hi("SpecialKey",                        s:cterm.red_bright,       "",                       "")
call s:hi("ColorColumn",                       s:cterm.background,       s:cterm.black,            "")
call s:hi("Cursor",                            s:cterm.white_dim,        "",                       "")
call s:hi("CursorColumn",                      s:cterm.none,             s:cterm.none,             "")
call s:hi("SignColumn",                        s:cterm.red_dim,          s:cterm.none,             "")
call s:hi("LineNr",                            s:cterm.black,            s:cterm.background,       "")
call s:hi("CursorLine",                        s:cterm.none,             s:cterm.background,       "NONE")
call s:hi("CursorLineNr",                      s:cterm.black,            s:cterm.background,       "BOLD")
call s:hi("Directory",                         s:cterm.blue_dim,         "",                       "")
call s:hi("FoldColumn",                        "",                       s:cterm.none,             "")
call s:hi("Folded",                            s:cterm.background,       s:cterm.black,            "")
call s:hi("PMenu",                             s:cterm.background,       s:cterm.black,            "")
call s:hi("PMenuSel",                          s:cterm.background,       s:cterm.white_dim,        "")
call s:hi("ErrorMsg",                          s:cterm.red_dim,          s:cterm.none,             "")
call s:hi("Error",                             s:cterm.red_dim,          s:cterm.none,             "")
call s:hi("WarningMsg",                        s:cterm.yellow_bright,    "",                       "")
call s:hi("SpellBad",                          s:cterm.red_dim,          s:cterm.none,             "NONE")
call s:hi("VertSplit",                         s:cterm.black,            s:cterm.none,             "NONE")
call s:hi("Conceal",                           s:cterm.black,            s:cterm.none,             "")

call s:hi("DiffAdded",                         s:cterm.green_dim,        "", "")
call s:hi("DiffRemoved",                       s:cterm.red_dim,          "", "")

call s:hi("DiffAdd",                           "",                       s:cterm.cyan_bright,      "")
call s:hi("DiffChange",                        "",                       s:cterm.cyan_bright,      "")
call s:hi("DiffDelete",                        s:cterm.red_dim,          s:cterm.black,            "")
call s:hi("DiffText",                          s:cterm.background,       s:cterm.black,            "")

call s:hi("NonText",                           s:cterm.black,            "",                       "NONE")
call s:hi("helpExample",                       s:cterm.blue_dim,         "",                       "")
call s:hi("MatchParen",                        s:cterm.background,       s:cterm.black,            "")
call s:hi("Title",                             s:cterm.cyan_dim,         "",                       "")
call s:hi("Comment",                           s:cterm.black,            "",                       "BOLD,ITALIC")
call s:hi("String",                            s:cterm.green_dim,        "",                       "")
call s:hi("Normal",                            s:cterm.white_bright,     s:cterm.none,             "")
call s:hi("Visual",                            s:cterm.background,       s:cterm.white_dim,        "")
call s:hi("Constant",                          s:cterm.blue_bright,      "",                       "")
call s:hi("Type",                              s:cterm.blue_dim,         "",                       "")
call s:hi("Define",                            s:cterm.cyan_bright,      "",                       "")
call s:hi("Statement",                         s:cterm.blue_dim,         "",                       "")
call s:hi("Function",                          s:cterm.magenta_bright,   "",                       "")
call s:hi("Conditional",                       s:cterm.cyan_dim,         "",                       "")
call s:hi("Float",                             s:cterm.yellow_bright,    "",                       "")
call s:hi("Noise",                             s:cterm.cyan_bright,      "",                       "")
call s:hi("Number",                            s:cterm.yellow_bright,    "",                       "")
call s:hi("Identifier",                        s:cterm.blue_dim,         "",                       "")
call s:hi("Operator",                          s:cterm.cyan_dim,         "",                       "")
call s:hi("PreProc",                           s:cterm.blue_dim,         "",                       "")
call s:hi("Search",                            s:cterm.background,       s:cterm.yellow_dim,       "")
call s:hi("IncSearch",                         s:cterm.background,       s:cterm.yellow_dim,       "")
call s:hi("Todo",                              s:cterm.background,       "",                       "")
call s:hi("Special",                           s:cterm.magenta_dim,      "",                       "")

" JavaScript
call s:hi("javaScriptParens",                  s:cterm.cyan_bright,      "",                       "")
call s:hi("javaScriptBraces",                  s:cterm.cyan_bright,      "",                       "")
call s:hi("javaScriptNumber",                  s:cterm.yellow_bright,    "",                       "")
call s:hi("javaScriptReserved",                s:cterm.blue_dim,         "",                       "")
call s:hi("javaScriptLabel",                   s:cterm.magenta_dim,      "",                       "")
call s:hi("javaScriptBoolean",                 s:cterm.yellow_bright,    "",                       "")
call s:hi("javaScriptCommentTodo",             s:cterm.black,            "",                       "BOLD,ITALIC")
call s:hi("javaScriptStatement",               s:cterm.cyan_dim,         "",                       "")

" TypeScript
call s:hi("typescriptImport",                  s:cterm.blue_dim,         "",                       "")
call s:hi("typescriptExport",                  s:cterm.blue_dim,         "",                       "")
call s:hi("typescriptAssign",                  s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptVariable",                s:cterm.green_bright,     "",                       "")
call s:hi("typescriptBOM",                     s:cterm.white_bright,     "",                       "")
call s:hi("typescriptVariableDeclaration",     s:cterm.red_bright,       "",                       "")
call s:hi("typescriptCastKeyword",             s:cterm.cyan_dim,         "",                       "")
call s:hi("typescriptTypeBracket",             s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptTypeReference",           s:cterm.yellow_dim,       "",                       "")
call s:hi("typescriptTypeAnnotation",          s:cterm.cyan_dim,         "",                       "")
call s:hi("typescriptTypeArguments",           s:cterm.white_bright,     "",                       "")
call s:hi("typescriptTypeQuery",               s:cterm.magenta_dim,      "",                       "")
call s:hi("typescriptBraces",                  s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptParens",                  s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptCall",                    s:cterm.white_dim,        "",                       "")
call s:hi("typescriptDotAnnotation",           s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptDotNotation",             s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptDestructureVariable",     s:cterm.white_dim,        "",                       "")
call s:hi("typescriptArrowFunc",               s:cterm.magenta_bright,   "",                       "")
call s:hi("typescriptFuncType",                s:cterm.red_bright,       "",                       "")
call s:hi("typescriptFuncCallArg",             s:cterm.white_dim,        "",                       "")
call s:hi("typescriptParenExp",                s:cterm.white_dim,        "",                       "")
call s:hi("typescriptEndColons",               s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptMember",                  s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptMemberOptionality",       s:cterm.magenta_dim,      "",                       "")
call s:hi("typescriptPred_brightefinedType",   s:cterm.yellow_dim,       "",                       "")
call s:hi("typescriptArrayMethod",             s:cterm.blue_dim,         "",                       "")
call s:hi("typescriptNumber",                  s:cterm.yellow_bright,    "",                       "")
call s:hi("typescriptBoolean",                 s:cterm.yellow_bright,    "",                       "")
call s:hi("typescriptNull",                    s:cterm.yellow_bright,    "",                       "")
call s:hi("typescriptAccessibilityModifier",   s:cterm.blue_dim,         "",                       "")
call s:hi("typescriptObjectLabel",             s:cterm.white_bright,     "",                       "")
call s:hi("typescriptObjectLiteral",           s:cterm.cyan_dim,         "",                       "")
call s:hi("typescriptObjectSpread",            s:cterm.magenta_dim,      "",                       "")
call s:hi("typescriptObjectColon",             s:cterm.magenta_bright,   "",                       "")
call s:hi("typescriptInterfaceKeyword",        s:cterm.magenta_bright,   "",                       "")
call s:hi("typescriptAliasKeyword",            s:cterm.blue_dim,         "",                       "")
call s:hi("typescriptInterfaceName",           s:cterm.yellow_dim,       "",                       "")
call s:hi("typescriptAliasDeclaration",        s:cterm.yellow_dim,       "",                       "")
call s:hi("typescriptInterfaceHeritage",       s:cterm.green_bright,     "",                       "")
call s:hi("typescriptInterfaceExtends",        s:cterm.magenta_dim,      "",                       "")
call s:hi("typescriptUnion",                   s:cterm.cyan_dim,         "",                       "")
call s:hi("typescriptBranch",                  s:cterm.green_bright,     "",                       "")
call s:hi("typescriptParamImpl",               s:cterm.cyan_dim,         "",                       "")
call s:hi("typescriptTemplate",                s:cterm.green_dim,        "",                       "")
call s:hi("typescriptTemplateSB",              s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptTemplateSubstitution",    s:cterm.white_dim,        "",                       "")
call s:hi("typescriptTernaryOp",               s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptBinaryOp",                s:cterm.cyan_bright,      "",                       "")
call s:hi("typescriptLineComment",             s:cterm.black,            "",                       "BOLD,ITALIC")
call s:hi("typescriptComment",                 s:cterm.black,            "",                       "BOLD,ITALIC")
call s:hi("typescriptDocComment",              s:cterm.black,            "",                       "BOLD,ITALIC")
call s:hi("typescriptCommentTodo",             s:cterm.black,            "",                       "BOLD,ITALIC")
call s:hi("typescriptGlobal",                  s:cterm.blue_dim,         "",                       "")
call s:hi("typescriptStatementKeyword",        s:cterm.cyan_dim,         "",                       "")
call s:hi("typescriptConditional",             s:cterm.magenta_dim,      "",                       "")
call s:hi("typescriptFuncKeyword",             s:cterm.green_bright,     "",                       "")
call s:hi("typescriptFuncName",                s:cterm.red_bright,       "",                       "")
call s:hi("typescriptAsyncFuncKeyword",        s:cterm.blue_bright,      "",                       "")
call s:hi("typescriptPromiseMethod",           s:cterm.blue_bright,      "",                       "")
call s:hi("typescriptIdentifier",              s:cterm.red_bright,       "",                       "")
call s:hi("typescriptCase",                    s:cterm.magenta_bright,   "",                       "")
call s:hi("typescriptDefault",                 s:cterm.magenta_bright,   "",                       "")
call s:hi("typescriptClassKeyword",            s:cterm.yellow_dim,       "",                       "")
call s:hi("typescriptClassName",               s:cterm.red_bright,       "",                       "")
call s:hi("typescriptClassHeritage",           s:cterm.magenta_dim,      "",                       "")
call s:hi("typescriptClassExtends",            s:cterm.blue_dim,         "",                       "")

" TSX/JSX
call s:hi("jsxOpenPunct",                      s:cterm.yellow_dim,       "",                       "")
call s:hi("jsxClosePunct",                     s:cterm.yellow_dim,       "",                       "")
call s:hi("jsxCloseString",                    s:cterm.yellow_dim,       "",                       "")
call s:hi("jsxTagName",                        s:cterm.cyan_bright,      "",                       "")
call s:hi("jsxComponentName",                  s:cterm.cyan_bright,      "",                       "")
call s:hi("jsxAttrib",                         s:cterm.magenta_dim,      "",                       "")
call s:hi("jsxElement",                        s:cterm.magenta_bright,   "",                       "")
call s:hi("jsxString",                         s:cterm.green_dim,        "",                       "")
call s:hi("jsxBraces",                         s:cterm.cyan_dim,         "",                       "")

" HTML colors
call s:hi("htmlTag",                           s:cterm.cyan_bright,      "",                       "")
call s:hi("htmlEndTag",                        s:cterm.cyan_bright,      "",                       "")
call s:hi("htmlTagName",                       s:cterm.magenta_bright,   "",                       "")
call s:hi("htmlSpecialTagName",                s:cterm.green_bright,     "",                       "")
call s:hi("htmlArg",                           s:cterm.yellow_bright,    "",                       "")

" XML
call s:hi("xmlTag",                            s:cterm.cyan_bright,      "",                       "")
call s:hi("xmlEndTag",                         s:cterm.cyan_bright,      "",                       "")
call s:hi("xmlTagName",                        s:cterm.magenta_bright,   "",                       "")
call s:hi("xmlAttrib",                         s:cterm.yellow_bright,    "",                       "")

" VIM
call s:hi("vimString",                         s:cterm.green_dim,        "",                       "")
call s:hi("vimCommand",                        s:cterm.magenta_bright,   "",                       "")
call s:hi("vimParenSep",                       s:cterm.cyan_bright,      "",                       "")
call s:hi("vimUserFunc",                       s:cterm.white_bright,     "",                       "")
call s:hi("vimLineComment",                    s:cterm.black,            "",                       "BOLD,ITALIC")

" Shell
call s:hi("shSetList",                         s:cterm.green_bright,     "",                       "")
call s:hi("shTestOpr",                         s:cterm.blue_bright,      "",                       "")
call s:hi("shNumber",                          s:cterm.yellow_bright,    "",                       "")
call s:hi("shConditional",                     s:cterm.cyan_bright,      "",                       "")

" NERDTree
call s:hi("NERDTreeOpenable",                  s:cterm.black,            s:cterm.none,             "")
call s:hi("NERDTreeClosable",                  s:cterm.black,            s:cterm.none,             "")
call s:hi("NERDTreeCWD",                       s:cterm.yellow_dim,       s:cterm.none,             "")
call s:hi("NERDTreeDir",                       s:cterm.black,            s:cterm.none,             "BOLD")
call s:hi("NERDTreeDirSlash",                  s:cterm.background,       s:cterm.none,             "")
call s:hi("NERDTreeExecFile",                  s:cterm.blue_bright,      s:cterm.none,             "")

function! NERDTreeHighlightFile(extension, ctermfg, ctermbg)
    exec "autocmd filetype nerdtree syn match " . a:extension . ' #^\s\+.*' . a:extension . "$#"
    exec "autocmd filetype nerdtree highlight " . a:extension . " ctermbg=" . s:cterm(a:ctermbg) . " ctermfg=" . s:cterm(a:ctermfg)
endfunction

call NERDTreeHighlightFile("ts",               s:cterm.cyan_bright,      s:cterm.none)
call NERDTreeHighlightFile("tsx",              s:cterm.cyan_bright,      s:cterm.none)
call NERDTreeHighlightFile("conf",             s:cterm.cyan_bright,      s:cterm.none)
call NERDTreeHighlightFile("config",           s:cterm.cyan_bright,      s:cterm.none)
call NERDTreeHighlightFile("yml",              s:cterm.cyan_bright,      s:cterm.none)

call NERDTreeHighlightFile("js",               s:cterm.yellow_bright,    s:cterm.none)
call NERDTreeHighlightFile("jsx",              s:cterm.yellow_bright,    s:cterm.none)
call NERDTreeHighlightFile("json",             s:cterm.yellow_bright,    s:cterm.none)

call NERDTreeHighlightFile("css",              s:cterm.green_bright,     s:cterm.none)
call NERDTreeHighlightFile("scss",             s:cterm.green_bright,     s:cterm.none)
call NERDTreeHighlightFile("less",             s:cterm.green_bright,     s:cterm.none)
call NERDTreeHighlightFile("html",             s:cterm.green_dim,        s:cterm.none)
call NERDTreeHighlightFile("xml",              s:cterm.green_dim,        s:cterm.none)
call NERDTreeHighlightFile("md",               s:cterm.green_dim,        s:cterm.none)
call NERDTreeHighlightFile("vim",              s:cterm.green_dim,        s:cterm.none)

call NERDTreeHighlightFile("dockerignore",     s:cterm.black,            s:cterm.none)
call NERDTreeHighlightFile("gitignore",        s:cterm.black,            s:cterm.none)
call NERDTreeHighlightFile("eslint",           s:cterm.black,            s:cterm.none)
call NERDTreeHighlightFile("babelrc",          s:cterm.black,            s:cterm.none)

call NERDTreeHighlightFile("sh",               s:cterm.blue_bright,      s:cterm.none)
call NERDTreeHighlightFile("lua",              s:cterm.blue_bright,      s:cterm.none)
call NERDTreeHighlightFile("php",              s:cterm.blue_bright,      s:cterm.none)

call NERDTreeHighlightFile("jpg",              s:cterm.white_dim,        s:cterm.none)
call NERDTreeHighlightFile("png",              s:cterm.white_dim,        s:cterm.none)
call NERDTreeHighlightFile("svg",              s:cterm.white_dim,        s:cterm.none)

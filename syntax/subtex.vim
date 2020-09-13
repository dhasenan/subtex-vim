" subtex syntax highlighting for vim

if exists("b:subtexSyntax")
  finish
endif

syn spell toplevel
" TODO figure out how to make spelling, braces, and RainbowParentheses work together
"syn region subtexCommandArg start='{' end ='}' contains=@Spell
syn region subtexComment start='<%' end='%>'
syn match subtexLineComment '%.*$'
syn match subtexCommand '\\\w\+'
syn region  subtexString			start=+<\!\[CDATA\[+  end=+\]\]>+
high def link subtexComment Comment
high def link subtexLineComment Comment
high def link subtexCommand Macro
high def link subtexString String

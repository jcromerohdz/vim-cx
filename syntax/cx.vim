" syntax/cx.vim

" Match language specific keywords
syntax keyword cxKeywords
      \ if
      \ else
      \ nil
      \ var
      \ for
      \ i32
      \ i64
      \ f32
      \ f64
      \ str
      \ struct
      \ type
      \ print
      \ package
      \ import
      \ func
      \ len
      \ add
      \ sub
      \ lt
      \ rand
      \ main
      \ eq
      \ mod

" Match all cx number types
syntax match cxNumber "\v<\d+>"
syntax match cxNumber "\v<\d+\.\d+>"
syntax match cxNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match cxNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match cxNumber "\v<0b[01]+>"
syntax match cxNumber "\v<0o\o+>"

" Match strings
syntax region cxString start=/"/ skip=/\\"/ end=/"/ oneline contains=swiftInterpolatedWrapper

" BOOLs
syntax keyword cxBoolean
      \ true
      \ false

" Operators
syntax match cxOperator "\v\~"
syntax match cxOperator "\v\s+!"
syntax match cxOperator "\v\%"
syntax match cxOperator "\v\^"
syntax match cxOperator "\v\&"
syntax match cxOperator "\v\*"
syntax match cxOperator "\v-"
syntax match cxOperator "\v\+"
syntax match cxOperator "\v\="
syntax match cxOperator "\v\|"
syntax match cxOperator "\v\/"
syntax match cxOperator "\v\<"
syntax match cxOperator "\v\>"
syntax match cxOperator "\v\?\?"

" cxStructure
syntax keyword cxStructure
      \ struct

" cxImports 
syntax keyword cxImports package 


" Set highlights

highlight default link cxString String
highlight default link cxKeywords Keyword
highlight default link cxBoolean Boolean
highlight default link cxOperator Operator
highlight default link cxStructure Structure
highlight default link cxImports Include

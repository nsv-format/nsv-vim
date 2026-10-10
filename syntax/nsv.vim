if exists('b:current_syntax') | finish | endif

syntax case match

syntax match nsvEscape        "\\\%(\\\|n\)"
syntax match nsvEscapeUnknown "\\[^\\n]"
syntax match nsvDangling      "\\$"

syntax match nsvBlankHazard    "^\s\+$"
syntax match nsvCarriageReturn "\r$"
" last, so a lone backslash is the empty-cell token, not a dangling one
syntax match nsvEmptyCell      "^\\$"

highlight default link nsvEscape         SpecialChar
highlight default link nsvEscapeUnknown  Error
highlight default link nsvDangling       Error
highlight default link nsvBlankHazard    Todo
highlight default link nsvCarriageReturn Todo
highlight default link nsvEmptyCell      Special

let b:current_syntax = 'nsv'

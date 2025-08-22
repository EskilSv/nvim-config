
syntax clear                    " Remove all existing syntax
syntax include @tex syntax/tex.vim

" Only define LaTeX regions
" Inline math: match only the content, ignore the $ delimiters
syntax match mkdMathContent /\\\@<!\$\zs.\{-}\ze\$/ contains=@tex

" Display math: match only the content inside $$…$$
syntax match mkdDisplayMathContent /\\\@<!\$\$\zs.\{-}\ze\$\$/ contains=@tex

let b:current_syntax = 'markdown_latex'

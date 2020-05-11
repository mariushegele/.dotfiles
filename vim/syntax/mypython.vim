" mybash is a kind of shell syntax
runtime! syntax/python.vim syntax/python/*.vim

" Add keyword.
syntax keyword mypythonKeyword await

compiler pyunit

setlocal foldmethod=syntax

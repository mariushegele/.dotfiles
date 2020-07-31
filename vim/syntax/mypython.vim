" mybash is a kind of shell syntax
runtime! syntax/python.vim syntax/python/*.vim

" Add keyword.
syntax keyword mypythonKeyword await
syntax keyword mypythonKeyword async

compiler pyunit

setlocal foldmethod=syntax

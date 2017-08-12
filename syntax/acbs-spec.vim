" File: syntax/acbs-spec.vim
" Author: LER0ever <etasry@gmail.com>
" Date: 12.08.2017
" Last Modified Date: 12.08.2017
" Last Modified By: LER0ever <etasry@gmail.com>

if exists("b:current_syntax")
    finish
endif

let b:main_syntax = "sh"
let b:is_bash = 1
runtime! syntax/sh.vim

syn case match

" PKGVER
syn keyword acbs_k_pkgver VER contained
syn match abValidPkgver /\([[:alnum:]]\|\.\|+\|_\)/ contained contains=abIllegalPkgver
syn match abIllegalPkgver /[^[:alnum:]+=\.\_]\|=.*=/ contained
syn match abPkgverGroup /^VER=.*/ contains=abIllegalPkgver,abValidPkgver,acbs_k_pkgver,shDoubleQuote,shSingleQuote

syn keyword acbs_k_src
            \ SRCTBL
            \ GITSRC
            \ GITBRCH
            \ GITCO
            \ SVNSRC
            \ SVNCO
            \ HGSRC
            \ BZRSRC
            \ BZRCO
            \ DUMMYSRC

syn keyword acbs_k_chksum CHKSUM

" Syntax Link
hi def link acbs_k_pkgver Identifier
hi def link acbs_k_src Keyword
hi def link acbs_k_chksum Function

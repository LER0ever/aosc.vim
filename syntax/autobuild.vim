" File: syntax/autobuild.vim
" Author: LER0ever <etasry@gmail.com>
" Date: 12.08.2017
" Last Modified Date: 12.08.2017
" Last Modified By: LER0ever <etasry@gmail.com>

" Vim Syntax File

if exists("b:current_syntax")
    finish
endif

let b:main_syntax = "sh"
let b:is_bash = 1
runtime! syntax/sh.vim

syn case match

" Autobuild DEFINES
syn keyword ab_k_pkgname PKGNAME contained
syn match abValidPkgname /\([[:alnum:]]\|+\|-\|_\){,32}/ contained contains=abIllegalPkgname
syn match abIllegalPkgname /[[:upper:]]\|[^[:alnum:]-+_=]\|=.*=\|=['"]\?.\{33,\}['"]\?/ contained
syn match abPkgnameGroup /^PKGNAME=.*/ contains=abIllegalPkgname,ab_k_pkgname,shDoubleQuote,shSingleQuote

" Autobuild PKGSEC
syn keyword ab_k_pkgsec PKGSEC contained
syn match abPkgsecGroup /^PKGSEC=.*/ contains=ab_k_pkgsec,shDoubleQuote,shSingleQuote

" Autobuild PKGDEP
syn keyword ab_k_pkgdep PKGDEP contained
syn match abValidDepends /['"][[:alnum:]]\|+\|-\|_['"]*/ contained
syn region abDependsGroup start=/^PKGDEP="/ end=/"/ contains=ab_k_pkgdep,abValidDepends

" Autobuild BUILDDEP
syn keyword ab_k_builddep BUILDDEP contained
syn match abValidBuildDepends /['"][[:alnum:]]\|+\|-\|_['"]*/ contained
syn region abBuildDependsGroup start=/^BUILDDEP="/ end=/"/ contains=ab_k_builddep,abValidBuildDepends

" Autobuild PKGDES
syn keyword ab_k_pkgdes PKGDES contained
syn match abValidPkgdes /^PKGDES=.*/ contains=ab_k_pkgdes,shDoubleQuote,shSingleQuote

"syn region abPkgdesGroup start=/^PKGDES="/ end=/"/ contains=ab_k_pkgdes,abValidPkgdes

" Autobuild FAIL_ARCH
syn keyword ab_k_failarch FAIL_ARCH contained
syn region abFailArchGroup start=/^FAIL_ARCH="/ end=/"/ contains=ab_k_failarch

" Autobuild Options
syn keyword ab_k_options
            \ NOLTO
            \ AB_FLAGS_O3
            \ AB_FLAGS_SPEC
            \ AB_FLAGS_SSP
            \ AB_FLAGS_FTF
            \ AB_FLAGS_RRO
            \ USECLANG
            \ AB_FLAGS_PIE
            \ AB_FLAGS_PIC
            \ ABSHADOW
            \ ABCONFIGHACK
            \ ABCLEAN
            \ ABTHREADS
            \ NOPARALLEL
            \ MAKE_AFTER
            \ ABHOST
            \ ABTYPE
            \ RECONF
            \ AUTOTOOLS_DEF
            \ AUTOTOOLS_AFTER
            \ CMAKE_DEF
            \ CMAKE_AFTER
            \ WAF_DEF
            \ WAF_AFTER
            \ NOPYTHON2
            \ NOPYTHON3
            \ QT_SELECT
            \ QTPROJ_DEF
            \ QTPROJ_AFTER
            \ NOSTATIC
            \ ABSTRIP

" Syntax Link
hi def link ab_k_pkgname Keyword
hi def link ab_k_pkgsec Keyword
hi def link ab_k_pkgdep Keyword
hi def link ab_k_builddep Keyword
hi def link ab_k_pkgdes Keyword
hi def link ab_k_options Type
hi def link ab_k_failarch Error

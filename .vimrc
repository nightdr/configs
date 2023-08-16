" many options from 'How to Do 90% of What Plugins Do (With Just Vim)' (https://www.youtube.com/watch?v=XA2WjJbmmoM)

" BASIC SETUP

" don't force vim to try to act like vi
set nocompatible

" color words based on syntax
syntax enable

" allow default file-browsing plugin (netrw)
filetype plugin on

" FUZZY FILE FINDING
" 	use :find filename/(partial filename and tab) to open a file
" 	can also use :b filename/partial filename (don't have to push tab!) if
" 	the file has already been opened

" look for files recursively in all directories (from working directory)
set path+=**

" show possible options when pushing tab to autocomplete
set wildmenu

" DEFINITION/TAG JUMPING
" 	have to run MakeTags then you can do the following:
"	 	can use CTRL + ] to jump to the definition of symbol at the cursor
" 		can also use g + CTRL + ] to list all possible definitions and jump to
" 			the desired one
" 		can use CTRL + t to go backwards

command! MakeTags !ctags -R .

" AUTOCOMPLETE
" 	already configured if we have ctabs setup!
"
" 	CTRL + N for basic autocomplete
" 		CTRL + N and CTRL + P to move up and down the suggestions
" 	CTRL + X + CTRL + F for filenames!!!
" 	CTRL + X + CTRL + N for autocomplete of just symbols in this file
" 	CTRL + X + CTRL + ] for tags
"
" 	:help ins-completion for more details

" FILE BROWSING/NETRW
"
" 	can use v/t to open in vertical/new tab view

let g:netrw_banner=0  " get rid of banner at top
let g:netrw_liststyle=3  " tree view




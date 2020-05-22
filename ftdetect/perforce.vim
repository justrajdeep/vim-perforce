if did_filetype()	" filetype already set..
  finish		" ..don't do these checks
endif
" Line continuation is used here, remove 'C' from 'cpoptions'
let s:cpo_save = &cpo
set cpo&vim

let s:specPattern = '^# A Perforce \(.*\) Specification.$'
let s:line1 = getline(1)
if s:line1 =~ s:specPattern
  setfiletype perforce
endif

" Restore 'cpoptions'
let &cpo = s:cpo_save

unlet s:line1 s:specPattern s:cpo_save

